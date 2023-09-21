<%-- 
    Document   : jstl_foreach
    Created on : 20 de set de 2023, 21:24:49
    Author     : denis
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP ForEach</title>
    </head>
    <body>
        <h1>Ejemplo del ForEach</h1>
        <p>Los elementos de la colección son: </p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Telefono</th>
                <th>Correo</th>
            </tr>
            <c:forEach var="item" items="${sessionScope.listaper}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.telefono}</td>
                    <td>${item.correo}</td>
                </tr>
            </c:forEach>
        </table>
        <a href="index.jsp">Volver</a>
    </body>
</html>
