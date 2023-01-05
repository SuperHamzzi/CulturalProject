<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello AOP world!</h1>

	<p>
		<a href="${path}/loginPage.do">1. Login </a>
	</p>
	<p>
		<a href="${path}/joinPage.do">2. Join </a>
	</p>
	<p>
		<a href="${path}/memberList.do">3. MemberList </a>
	</p>

</body>
</html>
