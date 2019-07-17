<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>JSP 課堂作業</title>

<style type="text/css">
#column1 {
position:absolute;
left:50px;
top:80px;
}
#column2 {
position:absolute;
left:450px;
top:80px;
}
#column3 {

float:center;
left:450px;
top:80px;
padding-top:450px;
}
</style>


</head>
<body>
<h1>JSP 課堂作業</h1>
<div id='column1'>
<p><a href="<c:url value='ch01/queryLottery.jsp'/>">問單一名牌</a></p>
<p><a href="<c:url value='ch01/queryLottery2.jsp'/>">問多種名牌</a></p>
<p><a href="<c:url value='ch02/InsertMemberForm.jsp'/>">加入會員</a></p>
<p><a href="<c:url value='ch03/hello.jsp'/>">大家好!(Hello World!)</a></p>
<a href="<c:url value='ch04_01/InsertMemberForm.jsp'/>">加入會員(MVC File IO)</a><p/>
<a href="<c:url value='ch04_02/InsertMemberForm.jsp'/>">加入會員(MVC Dao)</a><p/>
<a href="<c:url value='ch05_02/InputData.jsp'/>">Expression Language</a><p/>
<a href="<c:url value='ch05_03/InsertMemberForm.jsp'/>">加入會員(修改錯誤訊息)</a><p/>
<a href="<c:url value='ch05_04/queryLottery.jsp'/>">問單一名牌(Lab05_04)</a><p/>
<a href="<c:url value='ch05_05/queryLottery.jsp'/>">>JSTL  c:set 問單一名牌(Lab05_05)</a><p/>
<a href="<c:url value='ch05_06/index.jsp'/>">JSTL  c:out (Lab05_06)</a><p/>
<a href="<c:url value='ch05_07/index.jsp'/>">JSTL  c:forEach (Lab05_07)</a><p/>
<a href="<c:url value='ch05_09/ShowMember.jsp'/>">顯示會員資料(Lab05_09)</a><p/>
</div>
<div id='column2'>
<a href="<c:url value='ch06_01/login.jsp'/>">登入(Lab06_01)</a><p/>
<a href="<c:url value='ch06_01/logout.jsp'/>">登出(Lab06_01)</a><p/>
<a href="<c:url value='ch06_02/InsertMemberForm.jsp'/>">加入會員(顯示錯誤訊息)(ch06_02)</a><p/>
<a href="<c:url value='ch07_01/InsertMemberForm.jsp'/>">加入會員(Servlet起始參數)(ch07_01)</a><p/>
<a href="<c:url value='ch07_02/ShowMember.jsp'/>">顯示會員資料(Lab07_02)</a><p/>
</div>

<div id='column3'>
<hr>
您的IP為 : ${pageContext.request.remoteAddr}<br>
ContextPath : ${pageContext.request.contextPath}<br>
<hr>
請求標頭Accept : ${header.Accept}<br>
請求標頭Accept-Language : ${header['Accept-Language']}
<hr>
Session Id(EL) --> ${pageContext.session.id}<br>
<%
	out.println("Session Id(指令) --> " + session.getId() + "<br>");
%>

</div>


</body>
</html>