package Board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDao {
    public BoardDao() {
    }

    public List<BoardDto> selectlist() {
        List<BoardDto> list = new ArrayList();
        Connection conn = null;
        PreparedStatement pstmt = null;
        Object rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bbs", "root", "0729");
            pstmt = conn.prepareStatement("Select * from Board");

            while(((ResultSet)rs).next()) {
                list.add(new BoardDto(((ResultSet)rs).getInt("idx"), ((ResultSet)rs).getString("name"), ((ResultSet)rs).getString("title"), ((ResultSet)rs).getString("content"), ((ResultSet)rs).getString("wdate")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
