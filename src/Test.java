import Model.Post;
import utils.DB;
import java.sql.*;
import java.util.ArrayList;

/**
 * Created by killeryuan on 2016/4/13.
 */
public class Test {
    public static void main(String[] args) {
        Connection conn = DB.Conn();
        PreparedStatement ps;
        ResultSet rs;
        ArrayList searchPostsList = new ArrayList();

        String sql = "select * from post where title like '%¾©¾ç%' ";

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Post post = new Post();
                System.out.println(rs.getString(5));
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

    }
}
