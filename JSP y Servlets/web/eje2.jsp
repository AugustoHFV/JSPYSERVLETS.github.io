<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo2.Persona2"%>
<%@page import="ModeloDAO2.PersonaDAO2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <a class="btn btn-primary" href="Controlador2?accion=registrar">Realizar cálculo de Descuento</a>
        </div>
        <br><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Precio</th>
                    <th>Precio con Descuento</th>
                </tr>
            </thead>
            <%
                PersonaDAO2 dao=new PersonaDAO2();
                List<Persona2>list=dao.consultar();
                Iterator<Persona2>iter=list.iterator();
                Persona2 per= null;
                while(iter.hasNext()){
                    per=iter.next();
                
                %>
            <tbody>
                <tr>
                    <td><%=per.getValorI()%></td>
                    <td><%=per.getValorF()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <br><br><br>
        <a href="index.jsp">Volver</a>
    </body>
</html>