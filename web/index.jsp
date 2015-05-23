<html>
<head>

        <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
		    <meta name="viewport" content="width=device-width, initial-scale=1" >

            <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
            <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
            <link rel="stylesheet" type="text/css" href="css/estilos.css">
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
			<div id="baner"><h1> <IMG SRC="imagenes/baner.png" height="100" width="800"></h1></div>
			<div id="contenido">	
					<nav>
	            	</nav>
                            <!-- prueba3 -->
                   	<ol class="breadcrumb">
                            <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    Espa�ol</a><a href="indexIngles.jsp"> / English</a> </div>
                            <!-- <li><a href="#">Inicio</a></li> -->
                            <li class="active"><a href="Reportes/RUsuario.jsp" target="_blank">Login</a></li> 
                        </ol>
                    <section>
                        <br>
	                  <form id="formularioRegistro" method="post"  action="GestionLogin">
	                        <div id="registro">
		                <h3><span class="fa fa-user">  Login</h3>
                            	<table class="table table-bordered table-striped" border=3>
		                        	<td><label for="txtusuario">Nombre Usuario :</label>
		                        	<td><input type="text" name="txtusuario"   maxlength="16" required tabindex="1"></td><tr>
		                        	<br>
		                        	<td><label for="txtclave">Digite su contrase�a :</label>
		                        	<td><input type="password" name="txtclave" tabindex="2" required></td><tr>
	                        	</table>
                                       <a href="solicitudempleados.html">Olvide mi contrase�a</a>
	                        </div>
                                <p id="admin"></p>
                                <p style="text-align: center; margin: 20px;"><input type="submit" class="btn btn-success boton" tabindex="4" value="Enviar"></p>

	                        <script>
                                            
                                    function escogeperfil(){
                                        document.getElementById("formularioRegistro").action="inicioAdmin.jsp";
                                    }


	                        </script>
                                <br>
                                <div id="antepie">
                                    <%if(request.getAttribute("error")!=null){;%>
                                    ${error}
                                    <%}%>
                                </div>                             
                                <div id="pie"><a href="AboutGesticom.jsp">Versi�n 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | Cont�ctenos: 3133163023</a></div>
                              <div id="iconos">Siguenos tambi�n en  <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>

<!--

                              <div id="radio">
                                Acceso Temporal:<br>
                               <label1 class="radio-inline" for="admin">Administrador
                                <input name="rol" type="radio" required id="admin" tabindex="3" value="admin" checked>
                            	</label1>
                                <label1 class="radio-inline" for="coop">Coordinador
                                <input type="radio" name="rol" id="cood" value="cood" required>
                                </label1>
                                <label1 class="radio-inline" for="psi">Psicologo
                                <input type="radio" name="rol" id="psi" value="psi" required>
                               	</label1>
                                <label1 class="radio-inline" for="aux">Auxiliar
                                <input type="radio" name="rol" id="aux" value="aux" required>
                                </label1>
                                    

                                <p style="text-align: center; margin: 20px;"><button type="submit" class="btn btn-success boton" onclick="escogeperfil()" tabindex="4">Iniciar Sesi�n</button></p>
                                </div>

	                        <script>
                                            
                                    function escogeperfil(){
                                            if(document.getElementById("admin").checked){
                                            document.getElementById("formularioRegistro").action="inicioAdmin.jsp";
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


	                        </script>
	    -->           			
            
  
                                
                                
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
            
                                // Mensajes a generar para indicar al usuario la estructura valida que debe ingresar. Se debe indicar por cada regla adicionada anteriormente para sobre escribir los mensajes por defecto (los cuales están en inglés. Se encuentran en "jquery.validate.js" línea 308)
                                messages: {
                                    nombreusuario: {
                                        required: "Campo requerido",
                                        minlength: "M�nimo {0} caracteres",
                                        maxlength: "M�ximo {0} caracteres"
                                    },
                                    clave: {
                                        required: "Campo requerido",
                                        minlength: "M�nimo {0} caracteres",
                                    }
                                } // Cierre de los mensajes
                            }); // Cierre de la función validate
                        }); // Cierre de la función ready
                        
                        // NOTA: Revise el archivo "additional-methods" (ya enlazado arriba), para obtener otros métodos de validación como "lettersonly" básico para el trabajo de su sistema de información
            
                    </script>

		</main>	

	</body>
</html>
