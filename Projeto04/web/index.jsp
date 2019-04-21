<%@page import="java.util.List"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="br.com.fatecpg.quiz.Anonimo"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.Pontuacoes"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <%-- 
Document   : index
Created on : 15/04/2019, 17:54:21
Author     : andre
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<%
    int i = 0, j = 0;
    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    Date data = new Date();
    double grade = 0.0;
    int corrects = 0;
    double porcentagem = 0.0;
    boolean fez = false;
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
        porcentagem = grade;
        fez = true;
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
        <div class="container"> 

            <h1>Quiz</h1>
            <%if (fez == false) {%>
            <h3><a href="math-test.jsp">Realizar Quiz de Matemática</a></h3>
            <%} else {%>
            <h2>Você acertou <u><%=(porcentagem * 100)%>%</u> das questões</h2>
            <h3><a href="math-test.jsp">Realizar novo QUIZ de Matemática</a></h3>
            <%}%>
            
            <%
                if (sessao.getAttribute("nome") != null) {
                    if (fez == true) {
                        String nome = (String) sessao.getAttribute("nome");
                        Usuario user = new Usuario(data, corrects, nome);
                        Pontuacoes.getPontuacoesLista().add(user);

                    }
                }
                if (fez == true) {
                    String nome = (String) sessao.getAttribute("nome");
                    Anonimo anon = new Anonimo(corrects, data);
                    Pontuacoes.getAnonimoLista().add(anon);
                    fez = false;
                    response.sendRedirect("index.jsp");
                }
            %>

            <h1><center>Ranking geral:</center></h1>

            <div class="row"> 
                <div class="col-6"> 
                    <%
                        List<Anonimo> lista = Pontuacoes.getAnonimoLista();
                        Collections.sort(lista, new Comparator<Anonimo>() {
                            @Override
                            public int compare(Anonimo a1, Anonimo a2) {
                                if (a1.getData() == null || a2.getData() == null) {
                                    return 0;
                                }
                                return a2.getData().compareTo(a1.getData());
                            }
                        });
                    %>
                    <h3><center>Recentes:</center></h3>
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Nota</th>
                                <th>Data</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for (Anonimo a : lista) {
                                    i++;
                                    if (i <= 10) {
                            %>
                            <tr>
                                <td><%=i%></td>
                                <td><%=a.getNota()%></td>
                                <td><%=dateFormat.format(a.getData())%></td>
                            </tr>
                            <%}
                                }%>
                        </tbody>
                    </table>
                </div>
                 
                <div class="col-6"> 
                    <h3><center>Melhores Pontuações:</center></h3>
                            <%
                                Collections.sort(lista, new Comparator<Anonimo>() {
                                    @Override
                                    public int compare(Anonimo a1, Anonimo a2) {
                                        return Double.compare(a2.getNota(), a1.getNota());
                                    }
                                });
                            %>
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Nota</th>
                                <th>Data</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                i = 0;
                                for (Anonimo a
                                        : Pontuacoes.getAnonimoLista()) {
                                    i++;
                                    if (i <= 10) {
                            %>
                            <tr>
                                <td><%=i%></td>
                                <td><%=a.getNota()%></td>
                                <td><%=dateFormat.format(a.getData())%></td>
                            </tr>
                            <%}
                                }%>
                        </tbody>
                    </table>
                    <%
                        double notas = 0.0;
                        int tentativas = 0;
                        boolean tem = false;
                        for (Usuario u : Pontuacoes.getPontuacoesLista()) {
                            if (sessao.getAttribute("nome").equals(u.getNome())) {
                                notas += u.getNota();
                                tentativas++;
                                tem = true;
                                 }
                             }
                        if(!Pontuacoes.getPontuacoesLista().isEmpty() && tem == true){
                    %>
                    <h1>Sua Media: <%=(notas/tentativas)%></h1>
                    <%}%>
                </div>
            </div>
                       <%if(sessao != null && sessao.getAttribute("nome") != null){%>
            <div class="row"> 
                <div class="col-12"> 
                    <h1><center>Ranking de <%=sessao.getAttribute("nome")%></center></h1>
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Nota</th>
                                <th>Data</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Usuario> list = Pontuacoes.getPontuacoesLista();
                                Collections.sort(list, new Comparator<Usuario>() {
                                    @Override
                                    public int compare(Usuario u1, Usuario u2) {
                                        return Double.compare(u2.getNota(), u1.getNota());
                                    }
                                });
                                for (Usuario u : Pontuacoes.getPontuacoesLista()) {
                                    j++;
                                    if (i <= 10) {
                                        if (sessao.getAttribute("nome").equals(u.getNome())) {
                            %>
                            <tr>
                                <td><%=j%></td>
                                <td><%=u.getNota()%></td>
                                <td><%=dateFormat.format(u.getData())%></td>
                            </tr>
                            <%}
                                    }
                                }%>
                        </tbody>
                    </table>
                    <%

                        double notas = 0.0;
                        int tentativas = 0;
                        boolean tem = false;
                        for (Usuario u
                                : Pontuacoes.getPontuacoesLista()) {
                            if (sessao.getAttribute("nome").equals(u.getNome())) {
                                notas += u.getNota();
                                tentativas++;
                                tem = true;
                            }
                        }

                        if (!Pontuacoes.getPontuacoesLista().isEmpty() && tem == true) {
                    %>
                    <h1>Sua Media: <%=(notas / tentativas)%></h1>
                    <%}%>
                </div>
            </div>
                <%}%>
        </div>
        <%

            if (request.getParameter("apagar") != null && Pontuacoes.getPontuacoesLista() != null) {
                Pontuacoes.getPontuacoesLista().clear();
                Pontuacoes.getAnonimoLista().clear();
                response.sendRedirect("index.jsp");
            }
        %>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
