<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styLogin.css">
    <link rel="stylesheet" href="css/styHeader.css">
    <link rel="stylesheet" href="css/styFooter.css">
    <title>Login</title>

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
            <li><a href="#">Documentación</a></li>
            <li><a href="login.jsp">Login</a><a href="registro.jsp">Registro</a></li>
        </ul>
    </nav>

    <!--LOGIN-->
    <form method="post" action="login">
        <label for="username">Usuario:</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="password">Contraseña:</label><br>
        <input type="password" id="password" name="password"><br>
        <p><a href="#"></a></p>
        <p><a href="registro.jsp">No tengo cuenta</a></p>
        <button type="submit" name="signup" id="signup">Entrar</button>
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
    </script>
</body>
</html>