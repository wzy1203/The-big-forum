package Model;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

import utils.DB;

/**
 * Created by killeryuan on 2016/4/19.
 */
public class PostBeanHandler {

    public boolean publish(HttpServletRequest request, String username) {
        boolean flag = false;
        try {
            String title = new String(request.getParameter("title").getBytes("iso-8859-1"), "utf-8");
            String content = new String(request.getParameter("content").getBytes("iso-8859-1"), "utf-8");
            String type = new String(request.getParameter("type").getBytes("iso-8859-1"), "utf-8");
            Date d = new Date();
            String time = "" + d;
            Connection conn = DB.Conn();
            String sql = "INSERT INTO post( TYPE ,TIME, TITLE, content, username ) VALUES ('" + type + "','" + time + "','" + title + "','" + content + "','" + username + "') ";
            Statement st = conn.createStatement();
            if (!st.execute(sql)) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean userAdviceSubmit(String username, String advice) {
        boolean flag = false;
        Date date = new Date();
        String adviceDate = date + "";
        Connection conn = DB.Conn();
        String sql = "INSERT INTO advice(advice,username,time) VALUES ('" + advice + "','" + username + "','" + adviceDate + "')";
        try {
            Statement st = conn.createStatement();
            if (!st.execute(sql)) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public ArrayList getPosts(int pageNow){
        ArrayList posts = new ArrayList();
        Connection conn = DB.Conn();
        ResultSet rs = null;
        String sql = ("select * from post limit "+5*(pageNow-1)+",5");
        String sql1 = ("select (*) from post");
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Post post = new Post();
                post.setId(rs.getInt(1));
                post.setType(rs.getString(2));
                post.setTime(rs.getString(3));
                post.setTitle(rs.getString(4));
                post.setContent(rs.getString(5));
                post.setUsername(rs.getString(6));
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }

    public int getPostNumber(){
        String sql = ("select count(*) from post");
        Connection conn = DB.Conn();
        int postNumber = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                postNumber = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return postNumber;
    }
}
