<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="sum" value="0"/>
<c:forEach var="n"  begin="1" end="100">
<c:set var="sum" value='${sum+n}'/>
</c:forEach>
1+2+3+4+5+.....99+100=${sum}
</body>
</html>