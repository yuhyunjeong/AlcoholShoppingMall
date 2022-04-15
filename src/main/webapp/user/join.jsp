<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안다미로_회원가입</title>
<style type="text/css">

	h1 {
		text-align: center;
	}
	
	div {
		text-align: center;
	}
	
	#submit {
		padding: 10px 15px;
		margin : 10px;
		
	}

</style>
</head>
<body>
<%@include file="../common/header.jsp" %>
	<h1>회원가입</h1><p><p>
	
	<form>
		<div>
			<h3>아이디</h3>
			<input type="text" name="id"><p>
			
			<h3>비밀번호</h3>
			<input type="text" name="pwd"><p>
			
			<h3>비밀번호 확인</h3>
			<input type="text" name="pwdCheck"><p>
			
			<h3>이메일</h3>
			<input type="text" name="email"><p>
			
			<h3>연락처</h3>
			<input type="text" name="tel"><p>
			
			<h3>주민번호</h3>
			<input type="text" name="jumin"><p><p>
			
			<input type="submit" value="가입완료" id="submit">
		</div>
	
	</form>
<%@include file="../common/footer.jsp" %>
</body>
</html>