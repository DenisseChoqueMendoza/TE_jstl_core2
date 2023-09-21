<%-- 
    Document   : index
    Created on : 20 de set de 2023, 20:18:36
    Author     : denis
--%>
<!-- Incluir las directivas de importación de librerias -->
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Se verifica y crea una colección denominada listaper -->
        <%
            if (session.getAttribute("listaper") == null) {
                ArrayList<Persona> lista = new ArrayList<Persona>();
                // Agregamos Lista a la coleccion
                lista.add(new Persona(1, "Denisse Choque", "68925204", "Denisse@gmail.com"));
                lista.add(new Persona(2, "Mario Gutierrez", "72012345", "mario@yahoo.com"));
                lista.add(new Persona(3, "Silvia Mendoza", "36547895", "silvia@hotmail"));
                //Colocamos la lista como un atributo de session
                session.setAttribute("listaper", lista);
            }
        %>
        <h1>Ejemplo de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del If</a></li>
            <li><a href="jstl_choose.jsp">Probando el Choose</a></li>
            <li><a href="jstl_foreach.jsp">Recoriendo la colección con ForEach</a></li>
        </ul>
    </body>
</html>
