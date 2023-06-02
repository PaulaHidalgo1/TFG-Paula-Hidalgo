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
    </header>

    
    
    <h2 class="titulo">Encuentra trabajadores cualificados cerca de ti en un solo lugar. Publica tu solicitud, compara presupuestos y elige al profesional perfecto. ¡Regístrate hoy mismo y facilita tu vida!</h2>

    <br>
    
    <div id="indexlogo">
    <center><img src="images/Logo1.png" class="indexlogo"></center>
    </div>

    
        <div class="contenedor-tablas">
            <div class="tabla tabla1">
                <!--ALBAÑILERÍA-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/albanileria" class="contenido"><h4>Albañilería:</h4> ¿necesites construir, renovar o reparar muebles?, confía en nosotros para brindarte servicios de albañilería de alta calidad. Desde cimientos sólidos hasta acabados precisos, nuestra atención al detalle y experiencia en el oficio garantizan resultados duraderos y estéticamente atractivos.
                        </a></td>

                        <td>
                            <a href="http://localhost:8080/manitas/albanileria" class="contenido"><img src="images/albañileria1.jpg" width="120" height="115" class="text"></a>
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla2">
                <!--CARPINTERÍA-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/carpinteria" class="contenido">
                            <img src="images/carpinteria1.jpg" width="120" height="115" class="text">
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/carpinteria" class="contenido">
                           <h4> Carpintería:</h4> ¿Buscas muebles personalizados y trabajos de carpintería excepcionales? Nuestro equipo de carpinteros talentosos está listo para crear piezas únicas y transformar tus espacios en algo extraordinario.
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
                        <h4>Costura:</h4> ¿Tienes prendas que necesitan ser reparadas, modificadas o personalizadas? Confía en nuestros hábiles artesanos de la costura para brindarte resultados impecables y prendas a medida que reflejen tu estilo único.
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/costura" class="contenido">
                            <img src="images/costura1.jpeg" width="120" height="115" class="text">
                        </a></td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla4">
                <!--CUIDADO DE NIÃ‘OS-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/cuidado" class="contenido">
                            <img src="images/cuidado de niños1.jpg" width="120" height="115" class="text">
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/cuidado" class="contenido">
                            <h4>Cuidado de niños:</h4> ¿Necesitas un cuidado confiable y amoroso para tus hijos? Nuestro equipo de cuidadores dedicados está aquí para brindarles un entorno seguro, divertido y enriquecedor, donde tus hijos podrán crecer y prosperar mientras tú tienes tranquilidad.
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
                        <h4>Electricidad:</h4> ¿Problemas eléctricos en tu hogar o negocio? Nuestros expertos electricistas están listos para solucionar cualquier inconveniente. Confía en nuestro conocimiento y experiencia para brindarte servicios eléctricos seguros, eficientes y confiables, ¡iluminando tu camino hacia la tranquilidad!
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/electricidad" class="contenido">
                            <img src="images/electricidad1.png" width="120" height="115" class="text">
                        </a></td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="tabla tabla6">
                <!--FONTANERÃA-->
                <table>
                    <tr>
                        <td><a href="http://localhost:8080/manitas/fontaneria" class="contenido">
                            <img src="images/fontaneria1.jpg" width="120" height="115" class="text">
                        </a></td>

                        <td><a href="http://localhost:8080/manitas/fontaneria" class="contenido">
                            <h4>Fontanería:</h4> ¿Goteras, tuberías obstruidas o problemas de fontanería en general? No te preocupes, nuestro equipo de fontaneros profesionales está listo para solucionar cualquier desafío. Confía en nuestra experiencia y habilidades para brindarte servicios de fontanería confiables y de calidad, asegurando un flujo de agua sin problemas en tu hogar o negocio.
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
                        <h4>Limpieza:</h4> ¿Necesitas un espacio impecable y reluciente? Nuestro equipo de expertos en limpieza está aquí para hacer el trabajo por ti. Desde limpieza residencial hasta servicios de limpieza comercial, confía en nuestra dedicación y atención al detalle para brindarte un entorno limpio y fresco que te haga sentir como en casa.
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