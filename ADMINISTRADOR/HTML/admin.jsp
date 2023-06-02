<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <title>Albañileria</title>
    <link rel="stylesheet" href="css/styAdmin.css">
    <link rel="stylesheet" href="css/styHeader.css">
    <link rel="stylesheet" href="css/styFooter.css">
    
    <!--Font Header-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap" rel="stylesheet">
</head>
<body>
  <h1>ZONA DE ADMINISTRADOR</h1>
  
  <div class="window">
    <h2 class="window-title">Añadir usuario a la base de datos</h2>
    <div class="arrow arrow1"></div>
    <form class="hidden-form hidden-form1" action="AdminServlet" method="POST">
    	
    	<input type="hidden" name="action" value="insert">
      	<label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required><br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        <label for="phone">Teléfono:</label>
        <input type="number" id="phone" name="phone" required><br><br>
        <label for="service">Servicio:</label>
        <input type="text" id="service" name="service" required><br><br>
        <label for="location">Ubicación:</label>
        <input type="text" id="location" name="location" required><br><br>
        <label for="tariff">Tarifa:</label>
        <input type="number" id="tariff" name="tariff" required><br><br>
      
      <button type="submit">Insertar usuario</button>
    </form>
  </div>
  <br><br>
  <div class="window">
    <h2 class="window-title">Eliminar usuario de la base de datos</h2>
    <div class="arrow arrow2"></div>
    <form class="hidden-form hidden-form2" action="AdminServlet" method="POST">
    	
    	<input type="hidden" name="action" value="delete">
      	<label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required><br><br>
      
      <button type="submit">Eliminar usuario</button>
    </form>
  </div>
  <br><br>
  <a href="login.jsp" class="button">Cerrar sesión</a>
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
    
  <script src="js/jsAdmin.js"></script>
</body>
</html>
