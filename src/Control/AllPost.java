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
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String flag = request.getParameter("flag");
        ArrayList posts = null;
        int pageNow;
        Integer postNumber = null;
        if (request.getParameter("pageNow") == null || Integer.parseInt(request.getParameter("pageNow")) < 1) {
            pageNow = 1;
        } else {
            pageNow = Integer.parseInt(request.getParameter("pageNow"));
            System.out.println(pageNow);
        }

        PostBeanHandler postBeanHandler = new PostBeanHandler();
        if(flag.equals("allPost")) {
            posts = postBeanHandler.getPosts(pageNow);
            postNumber = new Integer(postBeanHandler.getPostNumber());
        }else if(flag.equals("search")) {
            String keyword = request.getParameter("keyword");
            ArrayList searchAllPost = postBeanHandler.searchPosts(keyword);
            postNumber = new Integer(searchAllPost.size());
            posts = postBeanHandler.getSearchPosts(pageNow,searchAllPost);
        }
        Integer pageFirst = new Integer(pageNow);
        System.out.println(postNumber);
        request.setAttribute("postNumber", postNumber);
        request.setAttribute("pageFirst", pageFirst);
        request.setAttribute("posts", posts);
        request.getRequestDispatcher("articles-list.jsp").forward(request, response);
    }
}
