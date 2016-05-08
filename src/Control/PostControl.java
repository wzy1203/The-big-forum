package Control;

import Model.Conmments;
import Model.Post;
import Model.PostBeanHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


/**
 * Created by killeryuan on 2016/4/19.
 */
public class PostControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String username =(String) session.getAttribute("user");
        String flag = request.getParameter("flag");
        if(flag.equals("publish")){
            if(new PostBeanHandler().publish(request,username)) {
                response.sendRedirect("index.jsp");
            }else{
                System.out.println("wrong");
            }
        }else if(flag.equals("advice")){
            String advice = request.getParameter("advice");
            boolean adviceFlag = new PostBeanHandler().userAdviceSubmit(username,advice);
            System.out.println(adviceFlag);
            response.sendRedirect("index.jsp");
        }else if(flag.equals("message")){
            ArrayList<Conmments> comments;
            int id = Integer.parseInt(request.getParameter("id"));
            Post post = new PostBeanHandler().getPost(id);
            if((comments = new PostBeanHandler().getComments(id))!=null){
                request.setAttribute("comments", comments);
            }
            request.setAttribute("post",post);
            request.getRequestDispatcher("single.jsp").forward(request,response);
        }else if(flag.equals("comment")){
            username = (String)session.getAttribute("user");
            if(username ==null){
                PrintWriter out = response.getWriter();
                out.println("{\"result\":\"nologin\",\"user\":\"no\"}");
            }else{
                if(new PostBeanHandler().comment(request, username)){
                    PrintWriter out = response.getWriter();
                    out.print("{\"result\":\"ok\",\"user\":\""+username+"\"}");
                } else {
                    PrintWriter out = response.getWriter();
                    out.print("{\"result\":\"error\",\"user:no\"}");
                }
            }
        }
    }
}
