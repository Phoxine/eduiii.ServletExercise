<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="memberService" class="ch05_09.MemberService" />
<c:set var="subTitle" value="查詢會員資料(Lab05_09)" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <c:if test="${empty LoginOK}"> --%>
<%-- 	<c:set var="target" value="${pageContext.request.servletPath}" --%>
<%-- 		scope="session" /> --%>
<%-- 	<c:redirect url="/ch06_01/login.jsp" /> --%>
<%-- </c:if> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${subTitle}</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty memberService.allMembers}">
   			目前尚未有任何會員資料<br>
		</c:when>
		<c:otherwise>
                               會員資料如下：<br>
			<table border='1'>
				<tr>
					<th width='120'>會員帳號</th>
					<th width='120'>密碼</th>
					<th width='140'>姓名</th>
					<th width='360'>地址</th>
					<th width='130'>電話</th>
					<th width='150'>生日</th>
				</tr>
				<c:forEach var="aBean" items="${ memberService.allMembers}">
					<tr>
						<td>${aBean.memberId}</td>
						<td>${aBean.password}</td>
						<td>${aBean.name}</td>
						<td>${aBean.address}</td>
						<td>${aBean.phone}</td>
						<td>${aBean.birthday}</td>
					</tr>
				</c:forEach>
			</table>

		</c:otherwise>
	</c:choose>
	<br>
	<a href="<c:url value='../index.jsp'/>">回首頁</a>

</body>
</html>