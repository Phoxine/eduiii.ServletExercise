<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import='ch05_07.Cat, java.util.*' %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach03</title>
</head>
<body>
 <%
    Cat garfield       = new Cat(10, "嘉菲(Collection)");
    Cat kitty          = new Cat(3  , "凱蒂(Collection)");
    Cat pili           = new Cat(3  ,  "霹靂(Collection)");
    Collection<Cat> cc = new ArrayList<Cat>();
    cc.add(garfield);
    cc.add(kitty);
    cc.add(pili);
    request.setAttribute("CatCollection", cc);
 %>
在這裡寫出答案(如果本JSP網頁有錯誤，必須自行更改)<br>

<table border='1'>
<c:forEach var='cat' items='${CatCollection}'>
<tr>
<td>${cat.catName}</td>
<td>${cat.weight}</td>
</tr>
</c:forEach>
</table>
<p/>
<a href="index.jsp">回首頁</a>
</body>
</html>