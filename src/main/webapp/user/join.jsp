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
		margin: 10px;
	}
	
	input[type="text"], input[type="email"], select {
		background: transparent;
		border: none;
		border-bottom: 1px solid #000000;
		-webkit-box-shadow: none;
		box-shadow: none;
		border-radius: 0;
		text-align: center;
		color: gray;
	}
	
	input[type="text"]:focus {
		-webkit-box-shadow: none;
		box-shadow: none;
	}
</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<h1>회원가입</h1>
	<p>
	<p>
	<form>
		<div>
			<h4>아이디</h4>
			<input type="text" name="id" value="아이디 입력">
			<p>
			
			<h4>비밀번호</h4>
			<input type="text" name="pwd" value="비밀번호 입력">
			<p>
			
			<h4>비밀번호 확인</h4>
			<input type="text" name="pwdCheck" value="비밀번호 확인">
			<p>
			
			<h4>이메일</h4>
			<input type="email" name="email" value="이메일 입력">@
			<select>
				<option value="naver">naver.com</option>
				<option value="daum">daum.net</option>
				<option value="google">google.com</option>
			</select>
			<p>
			
			<h4>연락처</h4>
			<input type="text" name="tel" value="아이디를 입력해주세요.">
			<p>
			
			<h4>주민번호</h4>
			<input type="text" name="jumin" value="아이디를 입력해주세요.">
			<p>
			<p>

				<input type="submit" value="가입완료" id="submit">
		</div>

	</form>
	<%@include file="../common/footer.jsp"%>
</body>
</html>