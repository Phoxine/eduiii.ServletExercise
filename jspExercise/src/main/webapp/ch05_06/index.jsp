<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL c:out練習</title>
</head>
<body>
	<h1>JSTL c:out練習</h1>
	在這裡印出三列 table標籤
	<BR>
	<BR>

	<c:out value="<table border='1'>" escapeXml="false" />
	<c:out value="<TR><TD>暑假</TD><TD>寒假</TD></TR>" escapeXml="false" />
	<c:out value="<TR><TD>暑假</TD><TD>寒假</TD></TR>" escapeXml="false" />
	<c:out value="</table>" escapeXml="false" />


	<hr>
	<%
		int n = (int) (Math.random() * 20);
		if (n % 2 == 0) {
			request.setAttribute("RandomNumber", "" + n);
		} else {
			request.setAttribute("RandomNumber", "*" + n);
		}
	%>
	<P />
	本次亂數為:
	<c:out value="${RandomNumber}" default="無" />
	<br>

</body>
</html>