<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>查詢名牌</title>
</head>
<body>
<a href="../index.jsp">回首頁</a>
<h2>查詢名牌</h2> 
<!--<form action="LotteryServlet" method="POST">--> 
<form action="<c:url value='LotteryServlet'/>" method="POST">
    訪客姓名:<input type="text" name="visitor" size = "10"><p/>
         <input type="submit" value="確定"><p/>
</form>
</body>
</html>