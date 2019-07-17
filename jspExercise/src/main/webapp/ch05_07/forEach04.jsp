<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05_07.*, java.util.*" %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach04</title>
</head>
<body>

 <%
   Cat garfield = new Cat(10, "嘉菲(Map)");
   Cat kitty     = new Cat(3,   "凱蒂(Map)");
   Cat pili       = new Cat(3,    "霹靂(Map)");
   Map<String, Cat> aMap = new HashMap<String, Cat>();
   aMap.put("Garf_key", garfield);
   aMap.put("Kitt_key", kitty);
   aMap.put("Pili_key", pili);
   request.setAttribute("CatMap", aMap);
 %>
在這裡寫出答案(如果本JSP網頁有錯誤，必須自行更改)<br>

<table border='1'>
<c:forEach var='cat' items='${CatMap}'>
<tr>
<td>${cat.key}</td>
<td>${cat.value.catName}</td>
<td>${cat.value.weight}</td>
</tr>
</c:forEach>
</table>


<p/>
<a href="index.jsp">回首頁</a>
</body>
</html>