<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.manitas.datosBBDD.Usuario" %>
<%@ page import="java.util.List" %>


<%
    List<Usuario> usuarios = null;
    Object usuariosObj = request.getAttribute("usuarios");
    if (usuariosObj instanceof List) {
        usuarios = (List<Usuario>) usuariosObj;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Albañileria</title>
    <link rel="stylesheet" href="css/styServicios.css">
    <link rel="stylesheet" href="css/styHeader.css">
    <link rel="stylesheet" href="css/styFooter.css">
    
    <!--Font Header-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap" rel="stylesheet">
    
</head>
<body>

	<!--HEADER-->
    <nav>
        <ul>
            <li><img src="images/Logo2.png" class="logo"></li>
            <li><a href="index.jsp">Inicio</a></li>
            <li>
            <select name="menu" id="menu"onchange="redirectToPage(this.value)">
                <option value="#" class="servicios">Servicios</option>
                <option value="http://localhost:8080/manitas/albanileria">Albañilería</option>
                <option value="http://localhost:8080/manitas/carpinteria">Carpintería</option>
                <option value="http://localhost:8080/manitas/costura">Costura</option>
                <option value="http://localhost:8080/manitas/cuidado">Cuidado de niños</option>
                <option value="http://localhost:8080/manitas/electricidad">Electricidad</option>
                <option value="http://localhost:8080/manitas/fontaneria">Fontanería</option>
                <option value="http://localhost:8080/manitas/limpieza">Limpieza</option>
            </select>
            </li>
            <li><a href="#">Como lo he hecho</a></li>
            <li><a href="login.jsp">Login</a><a href="registro.jsp">Registro</a></li>
        </ul>
    </nav>


<!-- MAIN -->
    <br>
    <br>
    <br>


    <%-- Verificar si la lista de usuarios no es nula y no está vacía --%>
    <% if (usuarios != null && !usuarios.isEmpty()) { %>
        <table>
            <tr>
                <th>Usuario</th>
                <th>Ubicación</th>
                <th>Tarifa</th>
                <th>¡Contacta!</th>
            </tr>
            <%-- Mostrar los usuarios en la tabla --%>
            <% for (Usuario usuario : usuarios) { %>
                <tr>
                    <td><%= usuario.getUsername() %></td>
                    <td><%= usuario.getUbicacion() %></td>
                    <td><%= usuario.getTarifa() %> €</td>
                    <td><a href="mensajeria.jsp" class="contenido">Contacto</a></td>
                </tr>
            <% } %>
        </table>
    <% } else { %>
        <p class="no-users">No se encontraron usuarios de albañilería.</p>
    <% } %>
    
    
    <br>
    <br>
    <br>
    <!--FOOTER-->
    <footer>
        <div class="footer">
            <div class="social-icons-container">
                <div class="line"></div>
                    <a href="https://es-es.facebook.com/"><img src="images/Facebook_White.png" class="social-icon"></a>
                    <a href="https://www.instagram.com/accounts/login/?__coig_restricted=1"><img src="images/Instagram-White.png" class="social-icon"></a>
                    <a href="https://twitter.com/?lang=es"><img src="images/Twiiter_White.png" class="social-icon"></a>
            <div class="line"></div>
            </div>
            <div class="MANITAS">MANITAS</div>
            <ul class="footer-menu-container">
                <li class="menu-item">Copyrigth@2023</li>
                <li class="divider">|</li>
                <li class="menu-item">Manitas,Inc</li>
                <li class="menu-item"><a  class="enlace"   href="pdf/aviso legal pagina web.pdf">Informacion Legal</a></li>
                <li class="divider">|</li>   
                <li class="menu-item"><a class="enlace" href="pdf/aviso legal pagina web.pdf">Politica de Privacidad</a></li>

            </ul>
            <span class="copyright">&copy;2023,Manitas.Todos los derechos reservados.</span>
        </div>
    </footer>
    
    <script>
    function redirectToPage(page) {
        if (page !== '#') {
            window.location.href = page;
        }
    }
    
    window.addEventListener('DOMContentLoaded', (event) => {
        const rows = document.querySelectorAll('table tr');
        for (let i = 0; i < rows.length; i++) {
            rows[i].addEventListener('mouseover', () => {
                rows[i].style.backgroundColor = '#BBB6B4';
            });
            rows[i].addEventListener('mouseout', () => {
                rows[i].style.backgroundColor = '';
            });
        }
    });
    </script>
</body>
</html>
