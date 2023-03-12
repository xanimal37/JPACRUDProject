<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Goalie Tender</title>
</head>
<body>
<h1>Goalie Tender</h1>

<div>
<h2>Stat Summary</h2>
	<p>Games Played:${totalGamesPlayed}</p>
	<p>SV%: ${savePercentage}</p>
	<p>GAA: ${goalsAgainstAverage}</p>
	<p>SOG: ${totalShotsOnGoal}</p>
	<p>SV: ${totalSaves}</p>
	<p>Goals: ${totalGoals}</p>
</div>
</body>
</html>