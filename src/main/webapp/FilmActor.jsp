<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,es.salesianos.model.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Asignar actor a una pelicula</title>
</head>
<body>
<%
List<Film> listAllFilms = (List<Film>)request.getAttribute("listAllFilms");
%>



<table border="1">
	<thead>
		<tr>
			<td>Codigo de pelicula</td>
			<td>Titulo</td>
			<td>Asociar a Actor</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="film" items="${listAllFilms}">
			<tr>
				<td><c:out value="${film.COD}"/> </td>
				<td><c:out value="${film.tittle}"/> </td>
				<td><a href="/recoveryFilm?cod=${film.COD}">Asociar</a></td>
	    	</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>