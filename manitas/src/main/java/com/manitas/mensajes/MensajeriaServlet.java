package com.manitas.mensajes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mensajeria")
public class MensajeriaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("usuario");
        String fecha = request.getParameter("fecha");
        String mensaje = request.getParameter("mensaje");

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manitas", "root", "");
            PreparedStatement pst = con.prepareStatement(
                    "INSERT INTO mensajes(usuario, fecha, mensaje) VALUES (?,?,?)");
            pst.setString(1, username);
            pst.setString(2, fecha);
            pst.setString(3, mensaje);

            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("mensajeria.jsp");

            if (rowCount > 0) {
                request.setAttribute("status", "success");
                response.sendRedirect("index.jsp");
            } else {
                request.setAttribute("status", "failed");
            }

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
