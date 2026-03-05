package schoolmanagementservice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import schoolmanagemententity.Student;

public class StudentService {

    private static Connection con;
    private static String url = "jdbc:postgresql://localhost:5432/school";
    private static String user = "postgres";
    private static String password = "123";

    static {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, user, password);
            System.out.println("DB Connected");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Save Student
    public int save(Student st) {
        int res = 0;
        String sql = "INSERT INTO student (id, name, age) VALUES (?, ?, ?)";
        try (PreparedStatement pstm = con.prepareStatement(sql)) {
            pstm.setInt(1, st.getId());
            pstm.setString(2, st.getName());
            pstm.setInt(3, st.getAge());
            res = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    // Delete Student
    public int delete(int id) {
        int res = 0;
        String sql = "DELETE FROM student WHERE id=?";
        try (PreparedStatement pstm = con.prepareStatement(sql)) {
            pstm.setInt(1, id);
            res = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    // Update Student
    public int update(Student st) {
        int res = 0;
        String sql = "UPDATE student SET name=?, age=? WHERE id=?";
        try (PreparedStatement pstm = con.prepareStatement(sql)) {
            pstm.setString(1, st.getName());
            pstm.setInt(2, st.getAge());
            pstm.setInt(3, st.getId());
            res = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    // Get all students
    public List<Student> getAll() {
        List<Student> list = new ArrayList<>();
        String sql = "SELECT * FROM student";
        try (PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setAge(rs.getInt("age"));
                list.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Sort students
    public List<Student> sort(String sortBy, String order) {
        List<Student> list = new ArrayList<>();
        if (!"age".equals(sortBy) && !"name".equals(sortBy)) {
            sortBy = "id";
        }
        if (!"asc".equalsIgnoreCase(order) && !"desc".equalsIgnoreCase(order)) {
            order = "asc";
        }

        String sql = "SELECT * FROM student ORDER BY " + sortBy + " " + order;

        try (PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setAge(rs.getInt("age"));
                list.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}



