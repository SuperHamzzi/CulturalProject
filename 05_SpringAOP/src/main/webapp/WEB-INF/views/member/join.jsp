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
<script type='text/javascript' src='http://code.jquery.com/jquery-3.3.1.js'></script>
</head>
<body>
	<form action="${path}/join.do" method="post">
		<fieldset>
			<legend>회원가입</legend>		
			아이디 : <input type="text" name="id" id="id"> <span id="checkId">초기상태</span><br>
			비밀번호 :  <input type="password" name="pw" ><br>
			이름 :  <input type="text" name="name" ><br>
			나이 :  <input type="text" name="age" ><br>
			<input type="submit" value="회원가입" >
		</fieldset>
	</form>
	
	<script type="text/javascript">
		//중복확인을 키가 타이핑 될때 마다 호출
		$(function(){
			$('#id').keyup(function(){
				var id = $(this).val();
				$('#checkId').html('입력중');
				$.ajax({
					url : '${path}/checkId.do',
					data : {id : id},
					type : 'get',
					success : function(str){
						if(str == '0'){
							$('#checkId').html('사용 가능한 아이디입니다.')
						} else {
							$('#checkId').html('중복된 아이디입니다. 다시 입력해주세요.')
						}
					},
					error : function(){
						console.log('AJAX 통신 실패')
					}
				});
			});
		})
	</script>
	
</body>
</html>
