package Control;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import Model.Post;
import Model.PostBeanHandler;
import Model.User;

/**
 * Created by za on 4/28/16.
 */
public class AllPost extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList posts ;
        int pageNow;
        Integer postNumber;
        if(request.getParameter("pageNow") == null||Integer.parseInt(request.getParameter("pageNow"))<1){
            pageNow=1;
        }else {
            pageNow = Integer.parseInt(request.getParameter("pageNow"));
            System.out.println(pageNow);
        }
        PostBeanHandler postBeanHandler = new PostBeanHandler();
        posts = postBeanHandler.getPosts(pageNow);
        postNumber = new Integer(postBeanHandler.getPostNumber());
        System.out.println(postNumber);
        Integer pageFirst = new Integer(pageNow);
        request.setAttribute("postNumber",postNumber);
        request.setAttribute("pageFirst",pageFirst);
        request.setAttribute("posts",posts);
        request.getRequestDispatcher("articles-list.jsp").forward(request,response);
    }
}
