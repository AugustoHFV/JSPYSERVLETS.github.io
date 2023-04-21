<%-- 
    Document   : consultar
    Created on : 31 mar 2023, 19:13:50
    Author     : alumno
--%>
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
       <h1>Personas</h1><!-- comment -->
        <a href="Controlador?accion=registrar"> Agregar nuevo</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>NSS</th>
                    <th>Nombre</th>
                    <th>Acción</th>
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
                    <td><%=per.getId()%></td>
                    <td><%=per.getNSS()%></td>
                    <td><%=per.getNombre()%>
                          <%System.out.println(per.getNombre());%></td>
                    <td>
                        <a href="Controlador?accion=editar&id=<%=per.getId()%>">Editar</a><!-- comment -->
                        <a href=Controlador?accion=eliminar&id=<%=per.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
