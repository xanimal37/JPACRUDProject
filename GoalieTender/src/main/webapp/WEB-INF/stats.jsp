<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<h2>stat summary</h2>
<ul id="stats">
	<li>Games: ${totalGamesPlayed}</li>
	<li>SV%: ${savePercentage}</li>
	<li>GAA: ${goalsAgainstAverage}</li>
	<li>SOG: ${totalShotsOnGoal}</li>
	<li>SV: ${totalSaves}</li>
	<li>Goals: ${totalGoals}</li>
	</ul>
