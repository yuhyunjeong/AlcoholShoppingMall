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
	color: transparent;
}
</style>

<script type="text/javascript" src="${path}/js/jquery-3.6.0.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	// 도로명주소 찾기 
	function findAddr() {
		new daum.Postcode({
			oncomplete : function(data) {

				console.log(data);

				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('member_post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("member_addr").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("member_addr").value = jibunAddr;
				}
			}
		}).open();
	}

	// 유효성 검사! 
	$(function(){
		// 비밀번호 확인 
	    $('#pwd').keyup(function(){
	      $('#checkNotice').html('');
	    });

	    $('#pwdCheck').keyup(function(){

	        if($('#pwd').val() != $('#pwdCheck').val()){
	          $('#checkNotice').html('비밀번호 일치하지 않음<br><br>');
	          $('#checkNotice').attr('color', '#f82a2aa3');
	        } else{
	          $('#checkNotice').html('비밀번호 일치함<br><br>');
	          $('#checkNotice').attr('color', '#199894b3');
	        }
	    });
	    
	    // 주민등록번호 
	    $('#jumin').keyup(function() {
	    	
	    });
	});

</script>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<h1>회원가입</h1>
	<p>
	<p>
	<div class="col-sm-6, container">
		<form name="inForm" id="inForm" method="post" action="${path}/front">

			<div class="m-3">
				<h6>아이디</h6>
				<input type="text" name="id" placeholder="아이디를 입력해주세요." onclick="idCheck()"
					required="required">
				<p>

				<h6>비밀번호</h6>
				<input type="password" name="pwd" id="pwd" placeholder="8자 이상 영문/숫자를 조합해주세요."
					required="required">

				<p>
				<h6>비밀번호 확인</h6>
				<input type="password" name="pwdCheck" id="pwdCheck"
					placeholder="비밀번호를 한번 더 입력해주세요." required="required">
				<div><font id="checkNotice" size="2"></font></div>

				<p>
				<h6>이름</h6>
				<input type="text" name="name" placeholder="이름을 입력해주세요."
					required="required">
				<p>
				<h6>주민등록번호</h6>
				<input type="text" name="jumin" id="jumin" placeholder="주민등록번호를 입력해주세요."
					required="required">
				<p>
				<h6>연락처</h6>
				<input type="text" name="tel" placeholder="연락처를 입력해주세요."
					required="required">
				<p>
				<h6>이메일</h6>
				<input type="text" name="email" placeholder="이메일을 입력해주세요."
					required="required">
				<p>
				<h6>주소</h6>
				<input type="text" name="addr" id="member_post"
					placeholder="Zip Code" readonly onclick="findAddr()"><br>
				<input type="text" name="addr2" id="member_addr"
					placeholder="Address"><br> <input type="text"
					name="addr3" placeholder="Detailed Address">
				<p>
				<p>
			</div>
			<div class="m-5">
				<input type="hidden" name="key" value="user" />
				<!-- Controller를 찾는 정보 -->
				<input type="hidden" name="methodName" value="join" />
				<!-- 메소드이름 -->
				<input class="w-25 btn btn-dark" type="submit" value="가입완료" id="btn">
			</div>
			<p>
		</form>
	</div>
	<p>
		<%@include file="../common/footer.jsp"%>
</body>
</html>