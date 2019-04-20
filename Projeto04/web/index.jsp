<%-- 
    Document   : index
    Created on : 15/04/2019, 17:54:21
    Author     : andre
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    double grade = 0.0;
    int corrects = 0;
    if (request.getParameter("mathTest") != null) {
        for (Question q : Quiz.getMathTest()) {
            if (request.getParameter(q.getQuestion()) != null) {
                String userAnswer = request.getParameter(q.getQuestion());
                if (q.getAnswer().equals(userAnswer)) {;
                    corrects++;
                }
            }
        }
        grade = (double) corrects / (double) Quiz.getMathTest().size();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/tabela.css">
        <title>Quiz</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
        
        <h1>Quiz</h1>
        <%if (request.getParameter("mathTest") == null) {%>
        <h3><a href="math-test.jsp">Realizar Quiz de Matemática</a></h3>
        <%} else {%>
        <h2>Você acertou <u><%=(grade * 100)%>%</u> das questões</h2>
        <h3><a href="math-test.jsp">Realizar novo QUIZ de Matemática</a></h3>
        <%}%>

        <h1><center>Ranking geral:</center></h1>
        
        <table class="blueTable">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Hora</th>
                    <th>Pontuação</th>
                </tr>
            </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <tr>
                <td>2</td>
                <td>2</td>
                <td>2</td>
            </tr>
            <tr>
                <td>3</td>
                <td>3</td>
                <td>3</td>
            </tr>
            <tr>
                <td>4</td>
                <td>4</td>
                <td>4</td>
            </tr>
            <tr>
                <td>5</td>
                <td>5</td>
                <td>5</td>
            </tr>
            <tr>
                <td>6</td>
                <td>6</td>
                <td>6</td>
            </tr>
            <tr>
                <td>7</td>
                <td>7</td>
                <td>7</td>
            </tr>
            <tr>
                <td>8</td>
                <td>8</td>
                <td>8</td>
            </tr>
            <tr>
                <td>9</td>
                <td>9</td>
                <td>9</td>
            </tr>
            <tr>
                <td>0</td>
                <td>0</td>
                <td>0</td>
            </tr>
        </tbody>
        </table>
        
        <br><br><br><br>
        <h1><center>Ranking Pessoal:</center></h1>
        
        <table class="blueTable">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Hora</th>
                    <th>Pontuação</th>
                </tr>
            </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <tr>
                <td>2</td>
                <td>2</td>
                <td>2</td>
            </tr>
            <tr>
                <td>3</td>
                <td>3</td>
                <td>3</td>
            </tr>
            <tr>
                <td>4</td>
                <td>4</td>
                <td>4</td>
            </tr>
            <tr>
                <td>5</td>
                <td>5</td>
                <td>5</td>
            </tr>
            <tr>
                <td>6</td>
                <td>6</td>
                <td>6</td>
            </tr>
            <tr>
                <td>7</td>
                <td>7</td>
                <td>7</td>
            </tr>
            <tr>
                <td>8</td>
                <td>8</td>
                <td>8</td>
            </tr>
            <tr>
                <td>9</td>
                <td>9</td>
                <td>9</td>
            </tr>
            <tr>
                <td>0</td>
                <td>0</td>
                <td>0</td>
            </tr>
        </tbody>
        </table>
    </body>
</html>
