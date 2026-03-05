

package schoolmanagementservice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import schoolmanagemententity.Admin;


public class AdminService {

    private static final String URL = "jdbc:postgresql://localhost:5432/school";
    private static final String USER = "postgres";
    private static final String PASSWORD = "123";

    public int save(Admin a) {
        int result = 0;
        String sql = "INSERT INTO admin(fname, uname, email, password, phoneno) VALUES (?,?,?,?,?)";

        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(URL, USER, PASSWORD);

            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, a.getFname());
            pst.setString(2, a.getUname());
            pst.setString(3, a.getEmail());
            pst.setString(4, a.getPassword());
            pst.setString(5, a.getPhoneno());

            result = pst.executeUpdate();
            System.out.println("con established");
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
