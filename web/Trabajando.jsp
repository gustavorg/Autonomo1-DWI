<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejemplo Ajax, Jsp y Servlet</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript" src="jquery-2.2.4.min.js" ></script>
    <script type="text/javascript">


                $(document).on("click", "#somebutton", function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                    $.processRequest("Autonomo1_bServlet", function(responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                        $("#resultado").text(responseText);           // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
                    });
                });


    </script>
</head>

<body>
<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <a class="navbar-rigth" href="#">
                <img class="img1" src="http://vignette2.wikia.nocookie.net/dragoncity/images/d/d7/Icono_Facebook.png/revision/latest?cb=20130219000258&path-prefix=es">
            </a>
        </div>
    </nav>

    <div class="row">
        <div class="col-md-5">
            <picture>
                <img class="logo" src="http://www.cepaciamaria.cl/wp-content/uploads/2015/06/btlogo.png" alt="logo">
            </picture>
        </div>
        <div class="col-md-7">
            <ul class="nav nav-pills">
                <li role="presentation"><a href="index.jsp">Inicio</a></li>
                <li role="presentation"><a href="#">Trabajando</a></li>
                <li role="presentation"><a href="#">Messages</a></li>
            </ul>
        </div></div>
</header>

<form>
    <input type="button" id="envio" value="Mostrar">
    <div id="resultado">
    </div>
</form>

</body>
</html>
