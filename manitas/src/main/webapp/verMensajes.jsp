<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.manitas.mensajes.Mensajes" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Visualización de Mensajes</title>
  <link rel="stylesheet" href="css/styVerMensaje.css">

  
  
</head>
<body>
    
  <!-- MAIN -->

  <h1>Mis Mensajes</h1>
  
  <div class="message-container">
    <% 
    List<Mensajes> mensajes = (List<Mensajes>) request.getAttribute("mensajes");
    if (mensajes != null) {
        for (Mensajes mensaje : mensajes) {
    %>
    <div class="message">
      <span class="author"><%= mensaje.getUsuario() %></span>
      <span class="date">Fecha en la que desea el servicio: <%= mensaje.getFecha() %></span>
      <div class="content"><%= mensaje.getMensaje() %></div>
    </div>
    <% 
        }
    }
    %>
  </div>
  <br>
  <br>
  <a href="login.jsp" class="button">Volver a inicio</a>
	<br>
	<br>
  
  
  <script>
    function sendMessage() {
      var authorInput = document.getElementById("author");
      var messageInput = document.getElementById("message");
      
      var author = authorInput.value;
      var message = messageInput.value;
      
      if (author.trim() === "" || message.trim() === "") {
        alert("Por favor, ingresa un nombre de usuario y un mensaje.");
        return;
      }
      
      var messageContainer = document.querySelector(".message-container");
      
      var newMessage = document.createElement("div");
      newMessage.classList.add("message");
      
      var authorSpan = document.createElement("span");
      authorSpan.classList.add("author");
      authorSpan.textContent = author;
      
      var dateSpan = document.createElement("span");
      dateSpan.classList.add("date");
      dateSpan.textContent = getCurrentDateTime();
      
      var contentDiv = document.createElement("div");
      contentDiv.classList.add("content");
      contentDiv.textContent = message;
      
      newMessage.appendChild(authorSpan);
      newMessage.appendChild(dateSpan);
      newMessage.appendChild(contentDiv);
      
      messageContainer.appendChild(newMessage);
      
      authorInput.value = "";
      messageInput.value = "";
    }
    
    function getCurrentDateTime() {
      var now = new Date();
      var options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit' };
      return now.toLocaleDateString('es-MX', options);
    }
    
    function redirectToPage(page) {
        if (page !== '#') {
            window.location.href = page;
        }
    }
  </script>
</body>
</html>

