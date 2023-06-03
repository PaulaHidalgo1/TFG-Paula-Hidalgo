package com.manitas.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminServlet")
public class AdministradorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            if (action.equals("delete")) { //cuando la accion sea delete, entrará en el método eliminarUsuario
                eliminarUsuario(request, response);
            } else if (action.equals("insert")) { //cuando la acción sea insert, entrará ne el método insertarUsuario
                insertarUsuario(request, response);
            }
        }
    }

    private void eliminarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");

        // Establecer la conexión a la base de datos
        String dbURL = "jdbc:mysql://localhost:3306/manitas";
        String dbUser = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Eliminar el usuario de la base de datos
            String deleteQuery = "DELETE FROM usuarios WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(deleteQuery);
            statement.setString(1, username);
            int rowsDeleted = statement.executeUpdate();
            statement.close();
            connection.close();

         // Enviar la respuesta como una alerta en la página
            String message;
            if (rowsDeleted > 0) {
                message = "Usuario eliminado exitosamente";
            } else {
                message = "Error al eliminar el usuario";
            }

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('" + message + "');");
            out.println("window.location.href='admin.jsp';");
            out.println("</script>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void insertarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        int number = Integer.parseInt(request.getParameter("number"));
        String servicio = request.getParameter("servicio");
        String ubicacion = request.getParameter("ubicacion");
        int tarifa = Integer.parseInt(request.getParameter("tarifa"));

        // Establecer la conexión a la base de datos
        String dbURL = "jdbc:mysql://localhost:3306/manitas";
        String dbUser = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Insertar el usuario en la base de datos
            String insertQuery = "INSERT INTO usuarios(username, password, email, number, servicio, ubicacion, tarifa) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pst = connection.prepareStatement(insertQuery);
            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setInt(4, number);
            pst.setString(5, servicio);
            pst.setString(6, ubicacion);
            pst.setInt(7, tarifa);
            int rowsInserted = pst.executeUpdate();
            pst.close();
            connection.close();

         // Enviar la respuesta como una alerta en la página
            String message;
            if (rowsInserted > 0) {
                message = "Usuario insertado exitosamente";
            } else {
                message = "Error al insertar el usuario";
            }

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('" + message + "');");
            out.println("window.location.href='admin.jsp';");
            out.println("</script>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
