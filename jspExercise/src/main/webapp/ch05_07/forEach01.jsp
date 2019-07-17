<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach01</title>
</head>
<body>
<%--
  <%
   request.setAttribute("IDKey1", "小彬彬, 小小彬,  迷你彬, 超小彬, 極小彬");
  %>   
  請於網頁內用表格的方式顯示上面這五個用逗點隔開的名詞。
 --%>
 <%
    request.setAttribute("IDKey1", "小彬彬, 小小彬,  迷你彬, 超小彬, 極小彬");
 %>
在這裡寫出答案<br>
<table border='1'>
<c:forEach var='array' items='${IDKey1}'>
<tr><td>${array}</td></tr>
</c:forEach>
</table>
<p/>
<a href="index.jsp">回首頁</a>
</body>
</html>