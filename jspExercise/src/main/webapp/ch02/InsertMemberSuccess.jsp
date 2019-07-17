<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab02_01</title>
</head>
<body>
<h1>會員 ${ memberBean.name } 的資料新增成功</h1>
編號: ${ memberBean.memberId }<br>
地址: ${ memberBean.address }<br>
生日: ${ memberBean.birthday }<br>
註冊時間: ${ memberBean.registerDate }<br>
體重: ${ memberBean.weight }<br>
<hr>
<jsp:useBean id='memberBean' class='ch02.MemberBean' scope='request'/>
<h1>會員-2<jsp:getProperty name="memberBean" property="name"/>的資料新增成功</h1>
編號: <jsp:getProperty name="memberBean" property="memberId"/><br>
地址: <jsp:getProperty name="memberBean" property="address"/><br>
生日: <jsp:getProperty name="memberBean" property="birthday"/><br>
註冊時間: <jsp:getProperty name="memberBean" property="registerDate"/><br>
體重: <jsp:getProperty name="memberBean" property="weight"/><br>


</body>
</html>