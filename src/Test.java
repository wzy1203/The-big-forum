import utils.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by killeryuan on 2016/5/1.
 */
public class test {

    public static void main(String args[]){
        try {
            Connection conn = DB.Conn();
            String sql = "SELECT * FROM post WHERE title LIKE  '%¿Æ±È%'";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                System.out.println(rs.getInt(1));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
