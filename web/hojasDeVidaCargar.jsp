
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<head>
<title>Ejemplo de aplicaciones Web en Java Carga de XLS</title>
</head>

<body>
        <h3>Elija un archivo para subir en servidor</h3>
        <form action="UploadFile" method="post" enctype="multipart/form-data">
                <input type="file" name="file" /> 
                <input type="submit" value="upload" />
        </form>
</body>
</html>
