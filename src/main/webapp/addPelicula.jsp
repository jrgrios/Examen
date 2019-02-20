<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,es.salesianos.model.*"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserting New Film</title>
</head>
<body>
<form action="LoadFilmsList" method="post">
		<input type="submit" value="Ver listado de peliculas">
</form>

	<%
		List<Film> peliculas = (List<Film>) request.getAttribute("listAllFilms");
		pageContext.setAttribute("peliculas", peliculas);

		
	%>

	<form action="AddPelicula" method="post">
		<span>Titulo :</span><input type="text" name="TITTLE">
		<span>Codigo del director:</span><input type="number" name="CODOWNER">
		<input type="submit" value="Enviar">
	</form>
	<table border="1">
		<thead>
			<tr>
				<td>Titulo</td>
				<td>Codigo Director</td>
				<td>Accion</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="pelicula" items="${listAllFilms}">
				<tr>
					<td><c:out value="${pelicula.title}" /></td>
					<td><c:out value="${pelicula.codDirector}" /></td>
					<td><a href="/deletePelicula?codPelicula=${pelicula.COD}">DELETE</a>
					</td>
				</tr>
			</c:forEach>
				
		</tbody>
	</table>
</body>
</html>