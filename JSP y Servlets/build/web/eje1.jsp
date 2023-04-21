<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <a class="btn btn-primary" href="Controlador?accion=registrar">Realizar cálculo de Capital</a>
        </div>
        <br><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Capital Inicial</th>
                    <th>Capital Final</th>
                </tr>
            </thead>
            <%
                PersonaDAO dao=new PersonaDAO();
                List<Persona>list=dao.consultar();
                Iterator<Persona>iter=list.iterator();
                Persona per= null;
                while(iter.hasNext()){
                    per=iter.next();
                
                %>
            <tbody>
                <tr>
                    <td><%=per.getCapitalI()%></td>
                    <td><%=per.getCapitalF()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <br><br><br>
        <a href="index.jsp">Volver</a>
    </body>
</html>