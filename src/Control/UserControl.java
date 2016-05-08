package Control;

import Model.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by killeryuan on 2016/4/7.
 */
public class UserControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String flag = request.getParameter("flag");
        HttpSession session = request.getSession(true);
        if(request.getParameter("flag").equals("login")){
            if(new UserBeanHandler().login(request)){
                session.setAttribute("user", request.getParameter("username"));
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("index.jsp");//登录失败,跳回到主界面
            }
        }else if(request.getParameter("flag").equals("register")){
            if(new UserBeanHandler().register(request)){
                session.setAttribute("user", request.getParameter("username"));
                response.sendRedirect("index.jsp");
            }
        }else if(flag.equals("message")){                //获取到的是message后跳转到个人中心
            if(session.getAttribute("user")==null){
                response.sendRedirect("login.jsp");
            }else {
                String username = (String)session.getAttribute("user");//从session里把用户名拿出来
                User user = new UserBeanHandler().getUser(username);//利用获取到的用户名去数据库把user对象拿出来
                ArrayList<Conmments> myComments = new PostBeanHandler().getMyComment(username);
                ArrayList<Conmments> commentMe = new PostBeanHandler().getCommentMe(username);
                ArrayList<Post> posts = new PostBeanHandler().getMPost(username);
                request.setAttribute("mc", myComments);
                request.setAttribute("cm",commentMe);
                request.setAttribute("posts",posts);
                request.setAttribute("user",user);
                request.getRequestDispatcher("information.jsp").forward(request,response);
            }
        }else if(flag.equals("change")){
            if(session.getAttribute("user")==null){
                response.sendRedirect("error.html");
            }else{
                String username = (String)session.getAttribute("user");
                UserBeanHandler userBeanHandler = new UserBeanHandler();
                User user = userBeanHandler.getUser(username);
                String newPassword = request.getParameter("newPassword");
                userBeanHandler.changePassword(newPassword,username);
            }
        }else if(flag.equals("exit")){
             session.removeAttribute("user");
             response.sendRedirect("index.jsp");
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
