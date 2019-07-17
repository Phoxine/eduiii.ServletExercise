<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import='ch05_07.Cat'%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach02</title>
</head>
<body>
	<%--
  Cat garfield  = new Cat(10, "嘉菲(Array)");
  Cat kitty     = new Cat(3,   "凱蒂(Array)");
  Cat pili      = new Cat(3,   "霹靂(Array)");
  Cat[] ca = {garfield, kitty, pili};
  request.setAttribute("CatArray", ca);
  請於網頁內用表格的方式顯示三隻貓的姓名與年齡。
 --%>
	<%
		Cat garfield = new Cat(10, "嘉菲(Array)");
		Cat kitty = new Cat(3, "凱蒂(Array)");
		Cat pili = new Cat(3, "霹靂(Array)");
		Cat[] ca = { garfield, kitty, pili };
		request.setAttribute("CatArray", ca);
	%>
	在這裡寫出答案(如果本JSP網頁有錯誤，必須自行更改)
	<br>
	<table border='1'>
		<c:forEach var='cat' items='${CatArray}'>
			<tr><td>${cat.catName}</td><td>${cat.weight}</td></tr>
		</c:forEach>
	</table>
	<p />
	<a href="index.jsp">回首頁</a>
</body>
</html>