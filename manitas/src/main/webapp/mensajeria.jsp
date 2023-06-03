<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Formulario de Mensaje</title>
	<link rel="stylesheet" href="css/styMensajeria.css">
</head>
<body>
  <h1>Formulario de Mensaje</h1>

  <div class="container">
    <form id="messageForm" method="post" action="mensajeria">
      <label for="username">Nombre de Usuario:</label>
      <input type="text" id="usuario" name="usuario" required>

      <label for="date">Fecha del servicio:</label>
      <input type="date" id="fecha" name="fecha" required>

      <label for="message">Mensaje:</label>
      <textarea id="mensaje" name="mensaje" required></textarea>

      <button type="submit">Enviar Mensaje</button>
    </form>
  </div>

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