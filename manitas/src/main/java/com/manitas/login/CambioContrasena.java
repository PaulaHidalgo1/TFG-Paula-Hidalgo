/*package com.manitas.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.PasswordAuthentication;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;

@WebServlet("/CambioContrasena")
public class CambioContrasena extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/manitas";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";
    private static final String SMTP_HOST = "smtp.host.com";
    private static final String SMTP_PORT = "587";
    private static final String SMTP_USERNAME = "your_email@example.com";
    private static final String SMTP_PASSWORD = "your_email_password";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        
        // Generar una contraseña aleatoria
        String newPassword = generateRandomPassword();
        
        // Actualizar la contraseña en la base de datos
        updatePasswordInDatabase(email, newPassword);
        
        // Enviar el correo electrónico con la nueva contraseña
        sendEmail(email, newPassword);
        
        // Mostrar una confirmación en la página
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>Contraseña actualizada</h2>");
        out.println("<p>Se ha enviado un correo electrónico con la nueva contraseña.</p>");
        out.println("</body></html>");
    }
    
    private String generateRandomPassword() {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder sb = new StringBuilder();
        SecureRandom random = new SecureRandom();
        for (int i = 0; i < 8; i++) {
            int randomIndex = random.nextInt(characters.length());
            sb.append(characters.charAt(randomIndex));
        }
        return sb.toString();
    }
    
    private void updatePasswordInDatabase(String email, String newPassword) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            String sql = "UPDATE users SET password = ? WHERE email = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, newPassword);
            statement.setString(2, email);
            statement.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            // Manejar la excepción apropiadamente según tus necesidades
        }
    }
    
    private void sendEmail(String email, String newPassword) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", SMTP_HOST);
        props.put("mail.smtp.port", SMTP_PORT);

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SMTP_USERNAME, SMTP_PASSWORD);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(SMTP_USERNAME));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Nueva contraseña");
            message.setText("Tu nueva contraseña es: " + newPassword);

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
            // Manejar la excepción apropiadamente según tus necesidades
        }
    }
}
*/