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
    $(document).ready(function () {
      $('#Guardar').click(function () {
          var nombre = $('#nombre').val();
          var apellido = $('#apellidos').val();
          var fecha = $('#fecha').val();
          var email = $('#email').val();
          var celular = $('#celular').val();
        $.ajax({
          type: 'POST',
          data: {nombre: nombre,
                apellido: apellido,
                fecha: fecha,
                email: email,
              celular: celular
          },
          url: 'Autonomo1',
          success: function (result) {
            $('#resultado').html(result);
          }
        })
      })
    })
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
      <li role="presentation"><a href="#">Inicio</a></li>
      <li role="presentation"><a href="Trabajando.jsp">Trabajando</a></li>
      <li role="presentation"><a href="#">Messages</a></li>
  </ul>
    </div></div>
  </header>



  <div class="row">
    <div class="col-md-4">
  <form class="form1">
    <div class="form-group">
        <h2>Registrate</h2>
        <label >Nombres</label>
        <input type="text" class="form-control" id="nombre">
        <label>Apellidos</label>
        <input type="text" class="form-control" id="apellidos">
        <label >Email</label>
        <input type="email" class="form-control" id="email" placeholder="Email">
        <label>Celular</label>
        <input type="text" class="form-control" id="celular">
        <label>Fecha de Nacimiento</label>
        <input type="date" class="form-control" id="fecha">
    </div>
    <button type="submit" class="btn btn-success" id="Guardar">Enviar</button>
  </form>
        <span id="resultado"></span>
    </div>
 <!-- <form>
    Ingrese Nombre del empleado:  <input type="text" id="empleado">
    <input type="button" value="Buscar" id="btnbuscar">
    <br>
    <span id="respuesta"></span>
  </form>-->
        <div class="col-md-8">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">


            <div class="item active">
              <img src="http://qualia.com.pe/blog/wp-content/uploads/2015/01/2015-programador-PROGRAMADOR-.png" alt="...">
              <div class="carousel-caption">
              </div>  </div>
                <div class="item">
                    <img src="http://qualia.com.pe/blog/wp-content/uploads/2015/01/PROG.jpg" alt="...">
                    <div class="carousel-caption">
            </div>
          </div></div>
          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div></div></div>
  </body>
</html>
