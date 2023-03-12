<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goalie tender - add a shot</title>
</head>
<body>
<h1>goalie tender</h1>
<h2>add a shot</h2>
<form action = "addShot.do" method = "POST">
	<label for="gameId">game (ID)</label><br>
  	<input type="text" id="gameId" name="gameId"><br>
    
	<label for="goal">goal (y/n)</label>
    <input type="checkbox" id="goal" name="goal" value="true"><br>
    
    <label for="screen">screen (y/n)</label>
    <input type="checkbox" id="screen" name="screen" value="true"><br>
    
    <label for="low">low (y/n)</label><br>
    <input type="checkbox" id="low" name="low" value="true"><br>
    
    <label for="rebound">rebound (y/n)</label><br>
    <input type="checkbox" id="rebound" name="rebound" value="true"><br>
    
    <label for="situation">situation:</label>
	<select name="situation" id="situation">
 		<option value="ES">even strength</option>
  		<option value="SH">shorthanded</option>
  		<option value="PP">power play</option>
	</select><br>
    
    <label for="zone">zone:</label>
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
    
    <label for="saveSelection">save selection:</label>
	<select name="saveSelection" id="saveSelection">
 		<option value="UP">standing</option>
  		<option value="POSTLEAN">post lean (RVH)</option>
  		<option value="BLOCK_BTRFLY">blocking butterfly</option>
  		<option value="REACT_BTRFLY">reactive butterfly</option>
	</select><br>
	
	<label for="note">note (i.e. 2 on 1, breakaway):</label>
	<textarea name="note" rows="6" cols="40">
	</textarea>
		
   	<input type = "submit" value = "Submit" />
</form>
</body>
</html>
