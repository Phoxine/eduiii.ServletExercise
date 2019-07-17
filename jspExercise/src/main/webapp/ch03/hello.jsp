<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int times = (int)(Math.random()*5)+2;
for (int n = 0 ; n < times; n++){
	out.println("Hello World!, 大家好!<br>");
}
%>

</body>
</html>