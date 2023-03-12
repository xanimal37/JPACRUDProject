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
<!-- CSS -->
<link rel="stylesheet" href="/css/main.css">
<meta charset="UTF-8">
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
<table>
<tr><th>game</th><th>shot ID</th><th>goal</th><th>screen</th><th>low</th><th>zone</th><th>situation</th><th>save selection</th><th>rebound</th><th>note</th></tr>
<c:forEach var="shot" items="${shots}">
	<tr><td>${shot.gameId}</td><td><a href="update.do?shotId=${shot.shotId}">${shot.shotId}</a></td><td>${shot.goal}</td><td>${shot.screen}</td><td>${shot.low}</td><td>${shot.zone}</td><td>${shot.situation}</td><td>${shot.saveSelection}</td><td>${shot.rebound}</td><td>${shot.note}</td></tr>
</c:forEach>
</table>
</body>
</html>