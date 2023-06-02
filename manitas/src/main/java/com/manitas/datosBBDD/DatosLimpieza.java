package com.manitas.datosBBDD;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

@WebServlet("/limpieza")
public class DatosLimpieza extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/manitas";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Establecer la conexión con la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);

            // Consulta SQL para obtener los usuarios con servicio de albañilería
            String sql = "SELECT username, ubicacion, tarifa FROM usuarios WHERE servicio = 'Limpieza'";
            stmt = conn.createStatement();

            // Ejecutar la consulta
            rs = stmt.executeQuery(sql);

            // Crear una lista de usuarios
            List<Usuario> usuarios = new ArrayList<>();

            // Recorrer los resultados y crear objetos Usuario
            while (rs.next()) {
                String username = rs.getString("username");
                String ubicacion = rs.getString("ubicacion");
                int tarifa = rs.getInt("tarifa");

                Usuario usuario = new Usuario(username, ubicacion, tarifa);
                System.out.println("Usuario: " + username);
                System.out.println("Servicio: " + ubicacion);
                System.out.println("Tarifa: " + tarifa);
                usuarios.add(usuario);
            }

            // Guardar la lista de usuarios en el request
            request.setAttribute("usuarios", usuarios);

            // Redirigir a la página JSP para mostrar los usuarios
            request.getRequestDispatcher("limpieza.jsp").forward(request, response);
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
