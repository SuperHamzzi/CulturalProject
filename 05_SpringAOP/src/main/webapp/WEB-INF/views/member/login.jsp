<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<form action="${path}/login.do" method="post">
		<fieldset>
			<legend>로그인</legend>		
			아이디 : <input type="text" name="id" ><br>
			비밀번호 :  <input type="password" name="pw" ><br>
			<input type="submit" value="로그인" >
		</fieldset>
	</form>
</body>
</html>
