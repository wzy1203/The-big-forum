package Control;

import utils.DB;

import Model.UserBeanHandler;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * Created by killeryuan on 2016/4/17.
 */
public class repeated extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String flag = request.getParameter("flag");
        PrintWriter out = response.getWriter();
        if (flag.equals("new")) {
            Connection conn = DB.Conn();
            String sql = "select * from user where username=?";
            try {
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, request.getParameter("username"));
                System.out.println(request.getParameter("username"));
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    out.println("the username has exist!");
                    out.close();
                } else {
                    out.println("ok");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else if (flag.equals("change")) {
            System.out.println("change");
            HttpSession session = request.getSession(true);
            String username = (String) session.getAttribute("user");
            String password = request.getParameter("password");
            Connection conn = DB.Conn();
            String sql = "select password from user where username = ?";
            try {
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, username);//用已有的变量替代SQL语句中的?;
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    String pass = rs.getString(1);
                    if(pass.equals(password)){
                        out.println("ok");
                    }else{
                        out.println("password is wrong");
                    }
                }else{
                    System.out.println("1");
                    out.println(false);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else if(flag.equals("changeInfo")){
            String username = request.getParameter("username");
            String sex = request.getParameter("sex");
            String brith = request.getParameter("brith");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            boolean flagChangeInfo = new UserBeanHandler().changeInformation(username,sex,brith,address,email);
            if(flagChangeInfo==true){
                out.println("ok");
            }else {
                out.println("wrong");
            }
        }
    }
}
