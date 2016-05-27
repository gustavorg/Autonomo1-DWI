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
@WebServlet("/Autonomo1")
public class Autonomo1 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/plain");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fecha = request.getParameter("fecha");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        PrintWriter out = null;
        out = response.getWriter();
        out.println("<p>Hello World</p>"+ nombre);
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
            ResultSet rs = stmt.executeQuery("INSERT INTO `miembros` (`Nombre`, `Apellido`, `Email`, `Celular`, `fecha`) VALUES ('"+nombre+"','"+apellido+"','"+email+"','"+celular+"','"+fecha+"')");
            out.println("After Query");
            if (rs != null){
                while (rs.next()){
                    out.println("Guardado Exitosamente");
                }
            }else
                out.println("Ha fracasdo el Guardado");

        }catch (NamingException e){
            e.printStackTrace();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
    }
}
