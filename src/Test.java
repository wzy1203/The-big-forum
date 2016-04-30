import Model.Post;
import utils.DB;

import java.sql.*;
import java.util.ArrayList;


/**
 * Created by killeryuan on 2016/4/13.
 */
public class Test {
    public static void main(String[] args) {
        String sql1 = ("select count(*) from post");
        Connection conn = DB.Conn();
        try {
            PreparedStatement ps = conn.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                System.out.println(rs.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
