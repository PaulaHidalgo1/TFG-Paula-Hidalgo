package com.manitas.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.manitas.datosBBDD.Usuario;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manitas", "root", "");

            // Verificar si el usuario y contraseña existen en la base de datos
            pst = con.prepareStatement("SELECT * FROM usuarios WHERE username = ? AND password = ?");
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();

            if (rs.next()) { // Si el usuario y contraseña existen en la base de datos
                // Obtener los datos del usuario
                String usernameDB = rs.getString("username");
                String servicio = rs.getString("servicio");
                int tarifa = rs.getInt("tarifa");

                // Crear un objeto Usuario con los datos obtenidos
                Usuario usuario = new Usuario(usernameDB, servicio, tarifa);

                // Agregar el objeto Usuario al objeto request
                request.setAttribute("usuario", usuario);
                
             // Guardar los datos del usuario en la sesión
                HttpSession session = request.getSession();
                session.setAttribute("usuario", usuario);
                System.out.println("Sesion: " + usuario);
                
                
	             // Verificar el usuario y contraseña para redirigir a la página correspondiente
	                if (username.equals("paula") && password.equals("1234")) {
	                    // Redirigir al usuario a la página admin.jsp
	                    RequestDispatcher adminDispatcher = request.getRequestDispatcher("admin.jsp");
	                    adminDispatcher.forward(request, response);
	                } else {
	                    // Redirigir al usuario a la página menuPersonal.jsp
	                    RequestDispatcher indexDispatcher = request.getRequestDispatcher("/verMensajes");
	                    indexDispatcher.forward(request, response);
	                }
	                
            } else { // Si el usuario y contraseña no existen en la base de datos
                request.setAttribute("status", "usuario no existente");
                // Redirigir al usuario a la página registro.jsp
                RequestDispatcher dispatcher = request.getRequestDispatcher("registro.jsp");
                dispatcher.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
