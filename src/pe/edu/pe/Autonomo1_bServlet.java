package pe.edu.pe;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by GRLIMA on 27/05/2016.
 */
@WebServlet("/Autonomo1_bServlet")
public class Autonomo1_bServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/plain");
        PrintWriter out = null;
        out = response.getWriter();
        // JDBC DataSource Connection Test
        try {
            InitialContext ctx = new InitialContext();
            out.println("Before Lookup");
            DataSource ds = (DataSource) ctx.lookup("jdbc/MySQLDataSource");
            out.println("Before Connection");
            Connection con = ds.getConnection();
            out.println("Before Statement");
            Statement stmt = con.createStatement();
            out.println("Before Query");
            ResultSet rs = stmt.executeQuery("SELECT * FROM employees");
            out.println("After Query");
            if (rs != null){
                out.println("Right!");
                while (rs.next()){
                    out.println(rs.getString("firt_name"));
                    out.println(rs.getString("last_name"));
                }
            }

        }catch (NamingException e){
            e.printStackTrace();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
    }
}
