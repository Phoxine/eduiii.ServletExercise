<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!public static final double VAT = 0.05;%>
	<%!public String getNumbers() {
		return "10 20 30 40 41 42";
	}%>
	<%!int n = 10;%>
	昨天的明牌:<%=getNumbers()%><br>
	<hr>
	今天的明牌:<%=getNumbers()%><br>
	<hr>
	NG的明牌: getNumbers()
	<br>
	<hr>
	<%
		int random = (int) (Math.random() * 100);
		if (random % 2 == 0) {
			out.println(random + "為偶數<br>");
		} else {
			out.println(random + "為奇數<br>");
		}
	%>
</body>	
</html>