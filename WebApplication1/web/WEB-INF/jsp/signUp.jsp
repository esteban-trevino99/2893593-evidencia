<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <%@include file="../includes/Bootstrap.jsp"%> 
    </head>
    <body class="bg-light">
        <div id="app" class="container mt-3">
            <div class="row align-items-center" style="height:98vh;">
                <div class="col-lg-8 card mx-auto">
                    <div class="card-body">
                        <form action="/WebApplication1/home">
                            <h1 class="h2">Registrarse</h1>
                            <hr />
                            <label>Nombre</label>
                            <input class="form-control" name="name"></input>
                            <label class="mt-3">Fecha de nacimiento</label>
                            <input class="form-control" type="date" name="birthday"></input>
                            <label class="mt-3">Sexo</label>
                            <select class="custom-select">
                                <option value="h">Hombre</option>
                                <option value="m">Mujer</option>
                            </select>
                            <label class="mt-3">Usuario</label>
                            <input class="form-control" name="user"></input>
                            <label class="mt-3">Contraseña</label>
                            <input class="form-control" name="password" type="password"></input>


                            <div class="text-center mt-3">
                                <button class="btn btn-primary">Crear cuenta</button>
                            </div>   
                            <div class="text-center">
                                <a href="/WebApplication1/login"  class="btn btn-link">¿Ya tienes una cuenta? Inicia sesión</a>
                            </div>
                        </form>
                    </div>
                </div>            
            </div>
        </div>
    </body>
</html>
