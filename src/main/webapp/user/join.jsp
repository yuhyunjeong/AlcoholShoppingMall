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
	padding: 30px;
}

h6 {
	color: #9D8FFA;
}

div {
	text-align: center;
}

input[type="text"], input[type="email"], input[type="password"] {
	background: transparent;
	border: none;
	border-bottom: 1px solid #000000;
	-webkit-box-shadow: none;
	box-shadow: none;
	border-radius: 0;
	text-align: center;
	color: gray;
	width: 250px;
	padding: 10px;
}

input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus
	{
	-webkit-box-shadow: none;
	box-shadow: none;
	outline: none;
}
input:focus::-webkit-input-placeholder {
	color:transparent; 
}


</style>

<script type="text/javascript">

</script>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<h1>회원가입</h1>
	<p>
	<p>
	<div class="col-sm-6, container">
		<form method="post" action="${path}/front">
		
		<div class="m-3">
			<h6>아이디</h6>
			<input type="text" name="id" placeholder="아이디를 입력해주세요.">

			<p>
			<h6>비밀번호</h6>
			<input type="password" name="pwd" placeholder="8자 이상 영문/숫자를 조합해주세요.">

			<p>
			<h6>비밀번호 확인</h6>
			<input type="password" name="pwdCheck"
				placeholder="비밀번호를 한번 더 입력해주세요.">
			<p>

			<h6>이름</h6>
			<input type="text" name="name" placeholder="이름을 입력해주세요.">
			<p>

			<h6>연락처</h6>
			<input type="text" name="tel" placeholder="연락처를 입력해주세요.">
			<p>

			<p>
			<h6>이메일</h6>
			<input type="text" name="email" placeholder="이메일을 입력해주세요.">
			<p>

			<h6>주민등록번호</h6>
			<input type="text" name="jumin" placeholder="주민등록번호를 입력해주세요.">
			<p>
			
			<h6>도로명주소</h6>
			<input type="text" name="addr" placeholder="주민등록번호를 입력해주세요.">
			<p>
			
			<h6>상세주소</h6>
			<input type="text" name="addr2" placeholder="주민등록번호를 입력해주세요.">
			<p>
			<p>
			</div>
			<div class="m-5">
				<input class="w-25 btn btn-dark" type="submit" value="가입완료">
			</div>
			<p>
		</form>
	</div>
	<p>
		<%@include file="../common/footer.jsp"%>
</body>
</html>