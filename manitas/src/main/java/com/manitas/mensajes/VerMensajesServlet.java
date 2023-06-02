package com.manitas.mensajes;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import com.manitas.datosBBDD.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/verMensajes")
public class VerMensajesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/manitas";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "";
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	processRequest(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Establecer la conexión con la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
            
            //Obtengo el usuario almacenado en la sesion
            HttpSession session = request.getSession();
            Usuario usuario = (Usuario) session.getAttribute("usuario");


            // Consulta SQL para obtener los usuarios con servicio de albañilería
            String sql = "SELECT usuario, fecha, mensaje FROM mensajes WHERE usuario = '" + usuario.getUsername() + "'";
            stmt = conn.createStatement();

            // Ejecutar la consulta
            rs = stmt.executeQuery(sql);

            // Crear una lista de usuarios
            List<Mensajes> mensajes = new ArrayList<>();

            // Recorrer los resultados y crear objetos Usuario
            while (rs.next()) {
                String usuario1 = rs.getString("usuario");
                String fecha = rs.getString("fecha");
                String mensaje = rs.getString("mensaje");

                Mensajes messsage = new Mensajes(usuario1, fecha, mensaje);
                System.out.println("Usuario: " + usuario);
                System.out.println("Fecha: " + fecha);
                System.out.println("Mensaje: " + mensaje);
                mensajes.add(messsage);
            }

            // Guardar la lista de usuarios en el request
            request.setAttribute("mensajes", mensajes);

            // Redirigir a la página JSP para mostrar los usuarios
            request.getRequestDispatcher("verMensajes.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Cerrar los objetos de base de datos
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
