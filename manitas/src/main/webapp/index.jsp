<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styPrincipal.css">
    <title>Manitas</title>
</head>

<body>


    <header>
        <!--PARTE DEL HEADER-->
        <nav>
            <ul>
                <li><img src="images/Logo2.png" class="logo"></li>
                <li><a href="index.jsp">Inicio</a></li>
                <li>
                    <select name="menu" id="menu" onchange="redirectToPage(this.value)">
                        <option value="#" class="servicios">Servicios</option>
                        <option value="http://localhost:8080/manitas/albanileria">Alba�iler�a</option>
                        <option value="http://localhost:8080/manitas/carpinteria">Carpinter�a</option>
                        <option value="http://localhost:8080/manitas/costura">Costura</option>
                        <option value="http://localhost:8080/manitas/cuidado">Cuidado de ni�os</option>
                        <option value="http://localhost:8080/manitas/electricidad">Electricidad</option>
                        <option value="http://localhost:8080/manitas/fontaneria">Fontaner�a</option>
                        <option value="http://localhost:8080/manitas/limpieza">Limpieza</option>
                    </select>
                </li>
                <li><a href="#">Como lo he hecho</a></li>
                <li><a href="login.jsp">Login</a><a href="registro.jsp">Registro</a></li>
            </ul>
        </nav>
    </header>

    
    
    <h2 class="titulo">Encuentra trabajadores cualificados cerca de ti en un solo lugar. Publica tu solicitud, compara presupuestos y elige al profesional perfecto. �Reg�strate hoy mismo y facilita�tu�vida!</h2>

    <br>
    
    <div id="indexlogo">
    <center><img src="images/Logo1.png" class="indexlogo"></center>
    </div>

    
        <div class="contenedor-tablas">
            <div class="tabla tabla1">
                <!--ALBA�ILER͍A-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/albanileria" class="contenido"><h4>Alba�iler�a:</h4> �necesites construir, renovar o reparar muebles?, conf�a en nosotros para brindarte servicios de alba�iler�a de alta calidad. Desde cimientos s�lidos hasta acabados precisos, nuestra atenci�n al detalle y experiencia en el oficio garantizan resultados duraderos y est�ticamente atractivos.
                        </a></td>

                        <td>
                            <a href="http://localhost:8080/manitas/albanileria" class="contenido"><img src="images/alba�ileria1.jpg" width="120" height="115" class="text"></a>
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla2">
                <!--CARPINTER�A-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/carpinteria" class="contenido">
                            <img src="images/carpinteria1.jpg" width="120" height="115" class="text">
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/carpinteria" class="contenido">
                           <h4> Carpinter�a:</h4> �Buscas muebles personalizados y trabajos de carpinter�a excepcionales? Nuestro equipo de carpinteros talentosos est� listo para crear piezas �nicas y transformar tus espacios en algo extraordinario.
                        </a></td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla3">
                <!--COSTURA-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/costura" class="contenido">
                        <h4>Costura:</h4> �Tienes prendas que necesitan ser reparadas, modificadas o personalizadas? Conf�a en nuestros h�biles artesanos de la costura para brindarte resultados impecables y prendas a medida que reflejen tu estilo �nico.
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/costura" class="contenido">
                            <img src="images/costura1.jpeg" width="120" height="115" class="text">
                        </a></td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla4">
                <!--CUIDADO DE NIÑOS-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/cuidado" class="contenido">
                            <img src="images/cuidado de ni�os1.jpg" width="120" height="115" class="text">
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/cuidado" class="contenido">
                            <h4>Cuidado de ni�os:</h4> �Necesitas un cuidado confiable y amoroso para tus hijos? Nuestro equipo de cuidadores dedicados est� aqu� para brindarles un entorno seguro, divertido y enriquecedor, donde tus hijos podr�n crecer y prosperar mientras t� tienes tranquilidad.
                        </a></td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla5">
                <!--ELECTRICIDAD-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/electricidad" class="contenido">
                        <h4>Electricidad:</h4> �Problemas el�ctricos en tu hogar o negocio? Nuestros expertos electricistas est�n listos para solucionar cualquier inconveniente. Conf�a en nuestro conocimiento y experiencia para brindarte servicios el�ctricos seguros, eficientes y confiables, �iluminando tu camino hacia la tranquilidad!
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/electricidad" class="contenido">
                            <img src="images/electricidad1.png" width="120" height="115" class="text">
                        </a></td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla6">
                <!--FONTANERÍA-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/fontaneria" class="contenido">
                            <img src="images/fontaneria1.jpg" width="120" height="115" class="text">
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/fontaneria" class="contenido">
                            <h4>Fontaner�a:</h4> �Goteras, tuber�as obstruidas o problemas de fontaner�a en general? No te preocupes, nuestro equipo de fontaneros profesionales est� listo para solucionar cualquier desaf�o. Conf�a en nuestra experiencia y habilidades para brindarte servicios de fontaner�a confiables y de calidad, asegurando un flujo de agua sin problemas en tu hogar o negocio.
                        </a></td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla7">
                <!--LIMPIEZA-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/limpieza" class="contenido">
                        <h4>Limpieza:</h4> �Necesitas un espacio impecable y reluciente? Nuestro equipo de expertos en limpieza est� aqu� para hacer el trabajo por ti. Desde limpieza residencial hasta servicios de limpieza comercial, conf�a en nuestra dedicaci�n y atenci�n al detalle para brindarte un entorno limpio y fresco que te haga sentir como en casa.
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/limpieza" class="contenido">
                            <img src="images/limpieza1.jpg" width="120" height="115" class="text">
                        </a></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="espacio-vacio"></div>
    </main>


<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>

    <!--PARTE DEL FOOTER-->
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




    <!--PARTE DEL JAVASCRIPT-->
    <script>
        function mostrarTablas() {
            const tablas = document.querySelectorAll('.tabla');
            const alturaVentana = window.innerHeight;
            const alturaContenedorTablas = document.querySelector('.contenedor-tablas').offsetHeight;
            const distanciaDesdeArribaContenedorTablas = document.querySelector('.contenedor-tablas').offsetTop;

            tablas.forEach((tabla, index) => {
                const distanciaDesdeArribaTabla = tabla.offsetTop + distanciaDesdeArribaContenedorTablas;

                if (distanciaDesdeArribaTabla - alturaVentana <= window.scrollY) {
                    if (index % 2 === 0) {
                        if (index === 2 && index === 4 && index === 6) {
                            tabla.style.right = '0';
                        } else {
                            tabla.style.left = '0';
                        }
                    } else {
                        tabla.style.right = '0';
                    }
                }
            });
        }

        window.addEventListener('scroll', mostrarTablas);
        
        function redirectToPage(page) {
            if (page !== '#') {
                window.location.href = page;
            }
        }
    </script>

</body>

</html>