<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var='a' begin='1' end='9' varStatus='vs'>
		<c:set var='color' value='#99ccff' />
		<c:if test='${vs.first}'>
			<c:out value="<table border='1'><tr bgcolor='${color}'><th colspan='13'>九九乘法表</th></tr>"
				escapeXml='false' />
		</c:if>
		<c:if test='${vs.count%2!=0}'>
			<c:set var='color' value='#80ff80' />
		</c:if>
		<tr bgcolor='${color}'>
			<c:forEach var='t' begin='1' end='9'>
				<td>${t}x${a}=${t*a}</td>
			</c:forEach>
		</tr>
		<c:if test='${vs.last}'>
			<c:out value="</table>" escapeXml='false' />
		</c:if>
	</c:forEach>


</body>
</html>