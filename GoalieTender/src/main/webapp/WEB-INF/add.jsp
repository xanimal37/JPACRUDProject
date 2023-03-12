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
	<label for="isgoal">goal (y/n)</label><br>
    <input type="checkbox" id="isGoal" name="isgoal" value="Goal">
    <label for="saveselections">save selection:</label>

<select name="saveselections" id="saves_sel">
  <option value="UP">standing</option>
  <option value="POSTLEAN">post lean (RVH)</option>
  <option value="BLOCK_BTRFLY">blocking butterfly</option>
  <option value="REACT_BTRFLY">reactive butterfly</option>
</select>
		
         <input type = "submit" value = "Submit" />
      </form>
</body>
</html>


private boolean screen;
	@Column(name="save_selection")
	private String saveSelection;
	private boolean low;
	private String zone;
	private String note;
	private String situation;
	private boolean rebound;
	@Column(name="game_id")
	private int gameId;