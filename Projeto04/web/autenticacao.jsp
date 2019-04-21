<%-- 
    Document   : autenticacao
    Created on : 19/04/2019, 18:55:04
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>

        <div class="container">
            <br> 
            <div class="row d-flex justify-content-center">

                <div class="col-3 border border-secondary rounded ">

                    <form action="index.jsp" method="post">
                        <div class="form-group">
                            <label for="nome">Login</label>
                            <input type="text" class="form-control" name="nome" placeholder="Nome">
                        </div>
                        <input type="submit" name="login" value="Login" class="btn btn-dark">
                    </form>
                    <br> 
                </div>
            </div>
        </div>    

        <%@ include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
