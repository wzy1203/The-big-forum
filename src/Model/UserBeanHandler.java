package Model;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

import utils.DB;

/**
 * Created by killeryuan on 2016/4/7.
 */
public class UserBeanHandler {
    public boolean login(HttpServletRequest request) {
        Connection ct = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        ct = DB.Conn();
        String sql = "SELECT * FROM user WHERE username = ? and PASSWORD = ?";
        boolean flag = false;
        try {
            ps = ct.prepareStatement(sql);//
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean register(HttpServletRequest request) {
        boolean flag = false;
        Connection ct = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String username = request.getParameter("username");
        String sql = "SELECT * FROM USER WHERE username=?";
        try {
            ct = DB.Conn();
            ps = ct.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                flag = false;
            } else {
                flag = true;
            }
            if (flag) {
                String password = request.getParameter("password");
                String email = request.getParameter("email");
                sql = "INSERT INTO USER ( username, password, email) VALUES ('" + username + "','" + password + "','" + email + "')";
                Statement st = ct.createStatement();
                if (!st.execute(sql)) {
                    flag = true;
                } else {
                    flag = false;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public User getUser(String username) {
        User user = new User();
        String sql = "SELECT * FROM USER WHERE username='" + username + "'";
        Connection conn = DB.Conn();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                if (rs.getString(2) != null) {
                    user.setUsername(rs.getString(2));
                }
                if (rs.getString(3) != null) {
                    user.setPassword(rs.getString(2));
                }
                if (rs.getString(4) != null) {
                    user.setEmail(rs.getString(2));
                }
                if (rs.getString(5) != null) {
                    user.setBrith(rs.getString(2));
                }
                if (rs.getString(6) != null) {
                    user.setAddress(rs.getString(2));
                }
                if (rs.getString(7) != null) {
                    user.setSex(rs.getString(2));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public boolean changeMessage(HttpServletRequest request, String username) {
        boolean flag = false;
        Connection conn = DB.Conn();
        try {
            Statement st = conn.createStatement();

            String sql = "UPDATE USER SET email='" + request.getParameter("email") + "', address='" + request.getParameter("address") + "',brith='" + request.getParameter("brith") + "',sex='" + request.getParameter("sex") + "'where username='" + username + "'";
            System.out.println(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean changeUser(String username) {
        boolean flag = true;
        Connection conn = DB.Conn();
        try {
            Statement st = conn.createStatement();
            String sql = "";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean changePassword(String newPassword, String username) {
        boolean flag = false;
        Connection conn = DB.Conn();
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String sql = "select * from user where username=? ";
            pr = conn.prepareStatement(sql);
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {
                sql = ("update user set password = ?");
                pr = conn.prepareStatement(sql);
                pr.setString(1, newPassword);
                pr.execute();
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("change wrong");
        }
        return flag;
    }

    public boolean changeInformation(String username, String sex, String brith, String address, String email) {
        boolean flag = false;
        Connection conn = DB.Conn();
        PreparedStatement ps = null;
        ResultSet rs = null;
        System.out.println(username + sex + brith + address + email);
        try {
            String sql = ("SELECT * FROM user WHERE username=?");
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                sql = ("update user set sex=? , brith=? , address=? , email=? WHERE username=?");
                ps = conn.prepareStatement(sql);
                ps.setString(1, sex);
                ps.setString(2, brith);
                ps.setString(3, address);
                ps.setString(4, email);
                ps.setString(5,username);
                flag = ps.execute();
                System.out.println(username + sex + brith + address + email);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (flag = false) {
            return true;
        } else {
            return false;
        }
    }
}
