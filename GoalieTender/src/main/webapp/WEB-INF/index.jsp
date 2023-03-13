<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<!--  GOOGLE FONT -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Righteous&display=swap" rel="stylesheet">
<!-- BOOTSTRAP -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<!-- CSS -->
<link rel="stylesheet" href="/css/main.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>goalie tender</title>
</head>
<body>
<h1>goalie Tender</h1>
<%@ include file = "stats.jsp" %>
<!--   ********************** -->
<h2>options</h2>
<ul id="menu">
	<li><a href="index.do">main page</a></li>
	<li><a href="addShot.do">Add a Shot</a></li>
</ul>
<!-- display list of filterable shots -->
<h2>shots</h2>

<p>select a shot ID to update or delete it</p>
<div id="shotTable">
<div id="diagram">
<img src="img/zones-01.png">
</div>
<div>
<table>
<tr><th>game</th><th>shot ID</th><th>goal</th><th>screen</th><th>low</th><th>zone</th><th>situation</th><th>save selection</th><th>rebound</th><th>note</th></tr>
<c:forEach var="shot" items="${shots}">
	<tr><td>${shot.gameId}</td>
	<td><a href="update.do?shotId=${shot.shotId}">${shot.shotId}</a></td>
	<td><c:choose><c:when test="${shot.goal=='true'}">X</c:when></c:choose></td>
	<td><c:choose><c:when test="${shot.screen=='true'}">X</c:when></c:choose></td>
	<td><c:choose><c:when test="${shot.low=='true'}">LOW</c:when><c:when test="${shot.low=='false'}">HIGH</c:when></c:choose></td>
	<td>${shot.zone}</td>
	<td>${shot.situation}</td>
	<td>${shot.saveSelection}</td>
	<td><c:choose><c:when test="${shot.rebound=='true'}">X</c:when></c:choose></td>
	<td>${shot.note}</td></tr>
</c:forEach>
</table>
</div>
</div>
</body>
</html>