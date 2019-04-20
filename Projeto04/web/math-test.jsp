<%-- 
    Document   : math-test
    Created on : 15/04/2019, 16:00:25
    Author     : a
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz de Matemática</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
        
        <h1>Quiz de Matemática</h1>
        <form action="index.jsp">
            <%for (Question q : Quiz.getMathTest()) {%>
            <h3><%=q.getQuestion()%></h3>
                <%for (String alternative : q.getAlternatives()) {%>
                    <input type="radio" name="<%=q.getQuestion()%>" value="<%=alternative%>" /> <%=alternative%><br/>
                <%}%>
            <%}%>
            <input type="submit" name="mathTest" value="Enviar"/>
        </form>
    </body>
</html>
