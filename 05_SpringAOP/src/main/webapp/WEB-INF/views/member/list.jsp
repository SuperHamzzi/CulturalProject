<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>회원 목록</title>
	<script type='text/javascript' src='http://code.jquery.com/jquery-3.3.1.js'></script>
</head>
<body>
	<h1>전체 회원 조회</h1>
	<button id="btn">조회</button>

	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>나이</th>
			<th>비밀번호</th>
		</tr>
	</table>

	
	<script type="text/javascript">
		$(function(){
			$('#btn').click(function(){
				$.ajax({
					url : '${path}/selectAllMember.do',
					success : function(json){
						html = '';
						for(var i = 0 ; i < json.length; i++){
							html += '<tr>';
							html += '<td>' + json[i]['id'] + '</td>';
							html += '<td>' + json[i]['name'] + '</td>';
							html += '<td>' + json[i]['age'] + '</td>';
							html += '<td>' + json[i]['pw'] + '</td>';
							html += '</tr>';
						}
						$('table > tbody').append(html);
					},
					error : function(){
						console.log('AJAX 통신 실패');
					}
				});
			});
		})
	</script>
	
</body>
</html>
