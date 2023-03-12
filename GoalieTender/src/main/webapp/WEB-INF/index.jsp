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
<title>Welcome to Goalie Tender</title>
</head>
<body>
<h1>goalie Tender</h1>
<%@ include file = "stats.jsp" %>
<!--   ********************** -->
<h2>options</h2>
<ul>
	<li>Add a Shot</li>
	<li>Update a Shot</li>
	<li>Delete a Shot</li>
</ul>
<!-- display list of filterable shots -->
<h2>shots</h2>
<table>
<th><td>Shot Id</td></th>

</table>
</body>
</html>