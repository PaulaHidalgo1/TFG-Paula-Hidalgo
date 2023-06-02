package com.manitas.registration;

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

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        int number = Integer.parseInt(request.getParameter("number"));
        String servicio = request.getParameter("servicio");
        String ubicacion = request.getParameter("ubicacion");
        int tarifa = Integer.parseInt(request.getParameter("tarifa"));

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manitas", "root", "");
            PreparedStatement pst = con.prepareStatement(
                    "INSERT INTO usuarios(username, password, email, number, servicio, ubicacion, tarifa) VALUES (?,?,?,?,?,?,?)");
            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setInt(4, number);
            pst.setString(5, servicio);
            pst.setString(6, ubicacion);
            pst.setInt(7, tarifa);

            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("registro.jsp");

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
