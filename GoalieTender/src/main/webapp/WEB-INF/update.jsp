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
	<label for="gameId">game (${shot.gameId})</label>
  	<input type="text" id="gameId" name="gameId" value=""><br>
    
	<label for="goal">goal (${shot.goal})</label>
    <input type="checkbox" id="goal" name="goal" value="true"><br>
    
    <label for="screen">screen (${shot.screen})</label>
    <input type="checkbox" id="screen" name="screen" value="true"><br>
    
    <label for="low">low (${shot.low})</label>
    <input type="checkbox" id="low" name="low" value="true"><br>
    
    <label for="rebound">rebound (${shot.rebound})</label>
    <input type="checkbox" id="rebound" name="rebound" value="true"><br>
    
    <label for="situation">situation (${shot.situation})</label>
	<select name="situation" id="situation">
 		<option value="ES">even strength</option>
  		<option value="SH">shorthanded</option>
  		<option value="PP">power play</option>
	</select><br>
    
    <label for="zone">zone (${shot.zone})</label>
	<select name="zone" id="zone">
 		<option value="1_LEFT">1 (left)</option>
  		<option value="1_RIGHT">1 (right)</option>
  		<option value="2_LEFT">2 (left)</option>
  		<option value="2_RIGHT">2 (right)</option>
  		<option value="3_LEFT">3 (left)</option>
  		<option value="3_RIGHT">3 (right)</option>
  		<option value="4_LEFT">4 (left)</option>
  		<option value="4_RIGHT">4 (right)</option>
  		<option value="5">5</option>
	</select><br>
    
    <label for="saveSelection">save selection (${shot.saveSelection})</label>
	<select name="saveSelection" id="saveSelection">
 		<option value="UP">standing</option>
  		<option value="POSTLEAN">post lean (RVH)</option>
  		<option value="BLOCK_BTRFLY">blocking butterfly</option>
  		<option value="REACT_BTRFLY">reactive butterfly</option>
	</select><br>
	
	<label for="note">note: ${shot.note }</label><br>
	<textarea name="note" rows="6" cols="40">
	</textarea>
		
   	<input type = "submit" name="submit" value = "submit" />
   	<input type="submit" name="delete" value = "delete"/>

<p>${message}</p>

</form>
</body>
</html>