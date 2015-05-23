<html>
	<head>
        <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
		    <meta name="viewport" content="width=device-width, initial-scale=1" >

            <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
            <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
            <link rel="stylesheet" type="text/css" href="css/estilos.css">
		    <link href="imagenes/favicon.ico" rel="icon" type="image/x-icon">


		    <link href="imagenes/favicon.ico" rel="icon" type="image/x-icon">
		<title>Interfaz de Usuario</title>

		<script src="js/jquery.js"></script>
		<script src="js/jquery.validate.js"></script>
		<script src="js/additional-methods.js"></script>
		<script src="js/bootstrap.min.js"></script>

	</head>
	<body>
		<main>
			<div id="logo"><h1> <IMG SRC="imagenes/gesticom.png" height="80" width="80"></h1></div>
			<div id="baner"><h1> <IMG SRC="imagenes/baner.png" height="100" width="760"></h1></div>
			<div id="contenido">	
            
            <nav>
            </nav>

                        <ol class="breadcrumb">
                            <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    Espa駉l</a><a href="indexIngles.jsp"> / English</a> </div>
                            <!-- <li><a href="#">Inicio</a></li> -->
                            <li class="active">Login</li> 
                        </ol>

                            
                            <section>
                            <br>

	                  <form id="formularioRegistro" method="post" action="../css/bootstrap.css">
	                        <div id="registro">
		                <h3><span class="fa fa-user">  Login</h3>
                            	<table class="table table-bordered table-striped" border=3>
		                        	<td><label for="nombreusuario">User Name :</label>
		                        	<td><input type="text" name="nombreusuario" id="nombreusuario" placeholder="John" maxlength="16" required tabindex="1"></td><tr>
		                        	<br>
		                        	<td><label for="clave">Password :</label>
		                        	<td><input name="clave" id="clave" type="password" tabindex="2" required></td><tr>
	                        	</table>
                                <a href="solicitudempleados.jsp">New User</a>
	                        </div>
							<div id="radio">
                                Temporaly Access:<br>
                                <label1 class="radio-inline" for="admin">Administrator
                                <input name="rol" type="radio" required id="admin" tabindex="3" value="admin" checked>
                            	</label1>
                                <label1 class="radio-inline" for="sup">Coordinator
                                <input type="radio" name="rol" id="cood" value="cood" required>
                                </label1>
                                <label1 class="radio-inline" for="psi">Psychologist
                                <input type="radio" name="rol" id="psi" value="psi" required>
                                </label1>
                                <label1 class="radio-inline" for="aux">Assistant
                                <input type="radio" name="rol" id="aux" value="aux" required>
                                </label1>
                                    
                          		<p style="text-align: center; margin: 20px;"><button type="submit" class="btn btn-success boton" onclick="escogeperfil()" tabindex="4">Sing in</button></p>
							</div>

	                        <script>
								function escogeperfil(){
									if(document.getElementById("admin").checked){
									document.getElementById("formularioRegistro").action="inicioAdmin.html";
									}
									if(document.getElementById("coop").checked){
									document.getElementById("formularioRegistro").action="inicioCoordinador.html";
									}
									if(document.getElementById("psi").checked){
									document.getElementById("formularioRegistro").action="inicioPsicologo.html";
									}
									if(document.getElementById("aux").checked){
									document.getElementById("formularioRegistro").action="inicioAuxiliar.html";
									}
								}


	                        </script>
	               			
	                   </form>
					</section>
                    <main>	
                    <script>
                        $().ready(function() {
                            $("#formularioRegistro").validate({ 
                                rules: {
                                    nombreusuario: {
                                        required: true,
                                        minlength: 3,
                                        maxlength: 15
                                    },
                                    clave: {
                                        required: true,
                                        minlength: 5
                                    }
                                }, 
            
                            }); // Cierre de la funci贸n validate
                        }); // Cierre de la funci贸n ready
                        
                        // NOTA: Revise el archivo "additional-methods" (ya enlazado arriba), para obtener otros m茅todos de validaci贸n como "lettersonly" b谩sico para el trabajo de su sistema de informaci贸n
            
                    </script>
                    </section>
					<div id="pie"><a href="AboutGesticom.html"></a>Versi贸n 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | Cont谩ctenos: 3133163023></div>
                    <div id="iconos">Siguenos tambi閚 en <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>
			</div>
         <main>
	</body>
</html>
