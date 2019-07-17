<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>報明牌</title>
</head>
<body>
<h2>卜籤求明牌</h2>   
${visitName}，您好，<br>  
您的明牌為：${luckyNumber}
<hr>
<a href='../index.jsp'>回首頁</a>
<hr>
Landscape-2 <img width='120' height='80' src='/jspExercise/images/fs.jpg'> <br>
<hr>
Snoopy-1 <img src='../images/snoopy.jpg'> <br>
<hr>
<%
	String name = (String) request.getAttribute("visitName");
	Collection<Integer> coll = (Collection<Integer>) request.getAttribute("luckyNumber");
	out.println(name +",您好-2,<br>");
	out.println("您的明牌為-2:"+coll+"<br>");
%>
</body>
</html>