<%-- 
    Document   : logout
    Created on : 19/04/2019, 20:43:16
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
             HttpSession sessao = request.getSession(false);
             
            if (sessao != null && sessao.getAttribute("nome") != null ) {
                session.invalidate();
            }

            response.sendRedirect("autenticacao.jsp");
        %>
    </body>
</html>
