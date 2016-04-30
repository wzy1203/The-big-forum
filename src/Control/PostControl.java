package Control;

import Model.PostBeanHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;


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
        }
    }
}
