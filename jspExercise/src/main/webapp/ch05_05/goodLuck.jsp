<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="myBean" class="ch05_05.LotteryBean" scope="page">
<c:set target="${myBean}" property="lowerBound" value="1" />
<c:set target="${myBean}" property="upperBound" value="49" />
<c:set target="${myBean}" property="ballNumber" value="6" />
</jsp:useBean>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>報明牌</title>
</head>
<body>
	<h2>卜籤求明牌</h2>
	${param.visitor}，您好，
	<br> 您的明牌為：${myBean.luckyNumbers}
	<hr>
	<a href='../index.jsp'>回首頁</a>
</body>
</html>