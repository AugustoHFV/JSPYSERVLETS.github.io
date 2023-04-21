<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo3.Persona3"%>
<%@page import="ModeloDAO3.PersonaDAO3"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <a class="btn btn-primary" href="Controlador3?accion=registrar">Realizar cálculo de Edad</a>
        </div>
        <br><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Año de nacimiento</th>
                    <th>Edad</th>
                </tr>
            </thead>
            <%
                PersonaDAO3 dao=new PersonaDAO3();
                List<Persona3>list=dao.consultar();
                Iterator<Persona3>iter=list.iterator();
                Persona3 per= null;
                while(iter.hasNext()){
                    per=iter.next();
                
                %>
            <tbody>
                <tr>
                    <td><%=per.getEdadI()%></td>
                    <td><%=per.getEdadF()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <br><br><br>
        <a href="index.jsp">Volver</a>
    </body>
</html>