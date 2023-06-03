<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="css/styRegistro.css">
	<link rel="stylesheet" href="css/styFooter.css">
	<link rel="stylesheet" href="css/styHeader.css">
</head>
<body>

	<!--HEADER-->
    <nav>
        <ul>
            <li><img src="images/Logo2.png" class="logo"></li>
            <li><a href="index.jsp">Inicio</a></li>
            <li>
            <select name="menu" id="menu" onchange="redirectToPage(this.value)">
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
            <li><a href="#">Documentación</a></li>
            <li><a href="login.jsp">Login</a><a href="registro.jsp">Registro</a></li>
        </ul>
    </nav>

    <form method="post" action="register">

        <label for="username">Usuario:</label><br>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Contraseña:</label><br>
        <input type="password" id="password" name="password" required><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br>
        <label for="phone">Telefono:</label><br>
        <input type="number" id="number" name="number" required><br>
        <label for="phone">Servicio:</label><br>
        <input type="text" id="servicio" name="servicio" required><br>
        <label for="ubication">Ubicacion:</label><br>
        <input type="text" id="ubicacion" name="ubicacion" required><br>
        <label for="task">Tarifa:</label><br>
        <input type="number" id="tarifa" name="tarifa" required>

        <br>

        <label><input type="checkbox" id="terms-and-conditions" name="terms-and-conditions" required>Acepto condiciones y servicios</label>
        <br>
        <button type="submit">Registrarse</button>


    </form>
    
        
	
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
                <li class="menu-item"><a  class="enlace" href="pdf/aviso legal pagina web.pdf">Informacion Legal</a></li>
                <li class="divider">|</li>   
                <li class="menu-item"><a class="enlace" href="pdf/aviso legal pagina web.pdf">Politica de Privacidad</a></li>

            </ul>
            <span class="copyright">&copy;2023,Manitas.Todos los derechos reservados.</span>
        </div>
    </footer>
	
	<script>
		var status =document.getElementById("status").value;
		if(status == "succes"){
			swal("congrats", "Cuenta bien creada", "success");
		}
		
		function redirectToPage(page) {
            if (page !== '#') {
                window.location.href = page;
            }
        }
	</script>
	

</body>
</html>