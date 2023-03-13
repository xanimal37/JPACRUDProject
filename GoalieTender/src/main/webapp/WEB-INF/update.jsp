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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>goalie tender - update a shot</title>
</head>
<body>
<h1>goalie tender</h1>
<h2>update a shot</h2>
<%@ include file = "stats.jsp" %>
<!--   ********************** -->
<h2>options</h2>
<ul id="menu">
	<li><a href="index.do">main page</a></li>
	<li><a href="addShot.do">Add a Shot</a></li>
</ul>

<form action = "update.do?id=${shot.shotId}" method = "POST">
	<h3>shot #${shot.shotId}</h3>
	<label for="gameId">game (ID)</label>
  	<input type="text" id="gameId" name="gameId" value="${shot.gameId}"><br>
    
	<label for="goal">goal (y/n)</label>
    <input type="checkbox" id="goal" name="goal" value="true" <c:choose><c:when test="${shot.goal==true}">checked</c:when></c:choose>><br>
    
    <label for="screen">screen (y/n)</label>
    <input type="checkbox" id="screen" name="screen" value="true" <c:choose><c:when test="${shot.screen==true}">checked</c:when></c:choose>><br>
    
    <label for="low">low (y/n)</label><br>
    <input type="checkbox" id="low" name="low" value="true" <c:choose><c:when test="${shot.low==true}">checked</c:when></c:choose>><br>
    
    <label for="rebound">rebound (y/n)</label><br>
    <input type="checkbox" id="rebound" name="rebound" value="true" <c:choose><c:when test="${shot.rebound==true}">checked</c:when></c:choose>><br>
    
    <label for="situation">situation:</label>
	<select name="situation" id="situation">
 		<option value="ES" <c:choose><c:when test="${shot.situation=='ES'}">selected</c:when></c:choose>>even strength</option>
  		<option value="SH" <c:choose><c:when test="${shot.situation=='SH'}">selected</c:when></c:choose>>shorthanded</option>
  		<option value="PP" <c:choose><c:when test="${shot.situation=='PP'}">selected</c:when></c:choose>>power play</option>
	</select><br>
    
    <label for="zone">zone:</label>
	<select name="zone" id="zone">
 		<option value="1_LEFT" <c:choose><c:when test="${shot.zone=='1_LEFT'}">selected</c:when></c:choose>>1 (left)</option>
  		<option value="1_RIGHT" <c:choose><c:when test="${shot.zone=='1_RIGHT'}">selected</c:when></c:choose>>1 (right)</option>
  		<option value="2_LEFT" <c:choose><c:when test="${shot.zone=='2_LEFT'}">selected</c:when></c:choose>>2 (left)</option>
  		<option value="2_RIGHT" <c:choose><c:when test="${shot.zone=='2_RIGHT'}">selected</c:when></c:choose>>2 (right)</option>
  		<option value="3_LEFT" <c:choose><c:when test="${shot.zone=='3_LEFT'}">selected</c:when></c:choose>>3 (left)</option>
  		<option value="3_RIGHT" <c:choose><c:when test="${shot.zone=='3_RIGHT'}">selected</c:when></c:choose>>3 (right)</option>
  		<option value="4_LEFT" <c:choose><c:when test="${shot.zone=='4_LEFT'}">selected</c:when></c:choose>>4 (left)</option>
  		<option value="4_RIGHT" <c:choose><c:when test="${shot.zone=='4_RIGHT'}">selected</c:when></c:choose>>4 (right)</option>
  		<option value="5" <c:choose><c:when test="${shot.zone=='5'}">selected</c:when></c:choose>>5</option>
	</select><br>
    
    <label for="saveSelection">save selection:</label>
	<select name="saveSelection" id="saveSelection">
 		<option value="UP" <c:choose><c:when test="${shot.saveSelection=='UP'}">selected</c:when></c:choose>>standing</option>
  		<option value="POSTLEAN" <c:choose><c:when test="${shot.saveSelection=='POSTLEAN'}">selected</c:when></c:choose>>post lean (RVH)</option>
  		<option value="BLOCK_BTRFLY" <c:choose><c:when test="${shot.saveSelection=='BLOCK_BTRFLY'}">selected</c:when></c:choose>>blocking butterfly</option>
  		<option value="REACT_BTRFLY" <c:choose><c:when test="${shot.saveSelection=='REACT_BTRFLY'}">selected</c:when></c:choose>>reactive butterfly</option>
	</select><br>
	
	<label for="note">note (i.e. 2 on 1, breakaway):</label><br>
	<textarea name="note" rows="6" cols="40" value=${shot.note}>
	</textarea>
		
   	<input type = "submit" name="update" value = "update" />
   	<input type="submit" name="delete" value = "delete"/>

<p>${message}</p>

</form>
</body>
</html>