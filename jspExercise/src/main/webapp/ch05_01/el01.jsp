<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@  taglib prefix='c'  uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setAttribute("kitty", 2019-7-8);
   request.setAttribute("color", "#ff99ff");
%>
<%-- <c:set var='color' value='#66ffcc'  /> --%>
<table border='1'>
  <tr bgcolor='${color}'><td>Spring</td></tr>
</table>
${kitty}=${3+5}<br>
\${3+5}=${3+5}<br>

</body>
</html>