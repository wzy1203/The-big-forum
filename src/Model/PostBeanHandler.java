package Model;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
//import com.sun.prism.impl.ps.AATessRoundRectRep;
//import javafx.geometry.Pos;
import utils.DB;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

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
        try {
            String newAdvice = new String(advice.getBytes("iso-8859-1"),"utf-8");
            Date date = new Date();
            String adviceDate = date + "";
            Connection conn = DB.Conn();
            String sql = "INSERT INTO advice(advice,username,time) VALUES ('" + newAdvice + "','" + username + "','" + adviceDate + "')";

            Statement st = conn.createStatement();
            if (!st.execute(sql)) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e){
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

    public static String getPosts() throws JsonProcessingException, UnsupportedEncodingException{
        String json = null;
        try {
            String[] types = {"新闻","娱乐","体育","健康","其他"};
            ArrayList<Post> posts = new ArrayList<>();
            Connection conn = DB.Conn();
            PreparedStatement ps = null;
            ResultSet rs = null;
            for(int i = 0; i<5; i++) {
                String sql = "SELECT * FROM post WHERE TYPE =?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, types[i]);
                rs = ps.executeQuery();
                if (rs.next()) {
                    Post post = new Post();
                    post.setId(rs.getInt("id"));
                    post.setType(rs.getString("type"));
                    post.setTime(rs.getString("time"));
                    post.setTitle(rs.getString("title"));
                    post.setContent(rs.getString("content"));
                    post.setUsername(rs.getString("username"));
                    posts.add(post);

                }
            }
            String newsql = "select * from post order by id desc limit 5";
            ps = conn.prepareStatement(newsql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Post post = new Post();
                post.setId(rs.getInt("id"));
                post.setType(rs.getString("type"));
                post.setTime(rs.getString("time"));
                post.setTitle(rs.getString("title"));
                post.setContent(rs.getString("content"));
                post.setUsername(rs.getString("username"));
                posts.add(post);

            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(posts);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(json);
        return json;
    }

    public Post getPost(int id){
        try {
            Connection conn = DB.Conn();
            String sql = "SELECT * FROM post WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            Post post = new Post();
            while(rs.next()){
                int i = rs.getInt(1);
                post.setId(i);
                post.setType(rs.getString("type"));
                post.setTime(rs.getString("time"));
                post.setTitle(rs.getString("title"));
                post.setContent(rs.getString("content"));
                post.setUsername(rs.getString("username"));
            }
            if(post!=null)
                return post;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Conmments> getComments(int postid){
        try {
            ArrayList<Conmments> conmments = new ArrayList<>();
            Connection conn = DB.Conn();
            String sql = "SELECT * FROM comments WHERE postid = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,postid);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Conmments co = new Conmments();
                co.setId(rs.getInt(1));
                co.setId(rs.getInt(2));

                co.setPostusername(rs.getString(3));

                co.setCcontent(rs.getString(4));
                co.setAuthorname(rs.getString(5));
                co.setTime(rs.getString(6));
                conmments.add(co);
            }
            return conmments;
        }catch (SQLException e){
            e.printStackTrace();
        }

        return null;
    }

    public boolean comment (HttpServletRequest request, String Cusername){
        boolean flag = false;

        try {
            String postusername = null;
            System.out.println(request.getParameter("postId"));
            int postID = Integer.parseInt(request.getParameter("postId"));
            String comment = request.getParameter("comment");
            String time = new Date() + "";
            System.out.println(postID+comment+time);
            Connection conn = DB.Conn();
            String sql = "select username from post where id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,postID);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                postusername = rs.getString(1);
            }
            System.out.println(2);
            sql = "INSERT INTO comments ( postId, postusername, ccontent, authorname, time) VALUES (?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,postID);
            ps.setString(2,postusername);
            ps.setString(3,comment);
            ps.setString(4,Cusername);
            ps.setString(5,time);
            if(!ps.execute()){
                flag = true;
            }
            System.out.println(3);
        } catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    public ArrayList<Conmments> getMyComment(String username){
        try {
            ArrayList<Conmments> conmmentes = new ArrayList<>();
            Connection conn = DB.Conn();
            String sql = "SELECT * FROM comments WHERE authorname=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Conmments conmment = new Conmments();
                conmment.setId(rs.getInt(1));
                conmment.setPostID(rs.getInt(2));
                conmment.setPostusername(rs.getString(3));
                conmment.setCcontent(rs.getString(4));
                conmment.setAuthorname(rs.getString(5));
                conmment.setTime(rs.getString(6));
                conmmentes.add(conmment);
            }
            if (conmmentes.size()==0){
                return null;
            }else {
                return conmmentes;
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Conmments> getCommentMe(String username){
        try {
            ArrayList<Conmments> conmmentes = new ArrayList<>();
            Connection conn = DB.Conn();
            String sql = "SELECT * FROM comments WHERE postusername = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Conmments conmment = new Conmments();
                conmment.setId(rs.getInt(1));
                conmment.setPostID(rs.getInt(2));
                conmment.setPostusername(rs.getString(3));
                conmment.setCcontent(rs.getString(4));
                conmment.setAuthorname(rs.getString(5));
                conmment.setTime(rs.getString(6));
                conmmentes.add(conmment);
            }
            if (conmmentes.size()==0){
                return null;
            }else {
                return conmmentes;
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Post> getMPost(String username){
        try{
            ArrayList<Post> posts = new ArrayList<>();
            Connection conn = DB.Conn();
            String sql = "SELECT * FROM post WHERE username = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
                Post post = new Post();
                post.setId(rs.getInt(1));
                post.setType(rs.getString(2));
                post.setTime(rs.getString(3));
                post.setTitle(rs.getString(4));
                post.setContent(rs.getString(5));
                post.setUsername(rs.getString(6));
                posts.add(post);
            }
            if(posts.size()==0){
                return null;
            } else {
                return posts;
            }

        } catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList searchPosts(String keyword) {
        Connection conn = DB.Conn();
        PreparedStatement ps;
        ResultSet rs;
        ArrayList searchPostsList = new ArrayList();
        String sql = "select * from post where content like '%"+keyword+"%'";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Post post = new Post();
                post.setId(rs.getInt(1));
                post.setType(rs.getString(2));
                post.setTime(rs.getString(3));
                post.setTitle(rs.getString(4));
                post.setContent(rs.getString(5));
                post.setUsername(rs.getString(6));
                searchPostsList.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return searchPostsList;
    }

    public ArrayList getSearchPosts(int pageNow, ArrayList searchAllPosts) {
        ArrayList searchPosts = new ArrayList();
        int i = (pageNow - 1) * 5;
        for(int j=i;j<5+i&&j<searchAllPosts.size();j++){
            searchPosts.add(searchAllPosts.get(j));
        }
        return searchPosts;
    }
}
