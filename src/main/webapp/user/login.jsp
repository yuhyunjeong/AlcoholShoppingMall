<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안다미로_로그인</title>
<style type="text/css">
	h1 {
		text-align: center;
	}
	
	div {
		text-align: center;
	}
	
	#login, #join {
		padding: 10px 15px;
		margin: 10px;
	}
	
	input[type="text"] {
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
	
	a {
		text-decoration: none;
	}
</style>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
	// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('09849bf089720853454c142511d3ca09');
	
	// SDK 초기화 여부를 판단합니다.
	console.log(Kakao.isInitialized());

	// 로그인 
	  function loginWithKakao() {
		    Kakao.Auth.login({
		      success: function(authObj) {
		        alert(JSON.stringify(authObj))
		      },
		      fail: function(err) {
		        alert(JSON.stringify(err))
		      },
		    })
		  }
	
/*       // 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
      function getInfo() {
          Kakao.API.request({
              url: '/v2/user/me',
              success: function (res) {
                  console.log(res);
                  // 이메일, 연령대, 생일 
                  var email = res.kakao_account.email;
                  var age_range = res.kakao_account.age_range;
                  var birthday = res.kakao_account.birthday;

                  console.log(email, age_range, birthday);
              },
              fail: function (error) {
                  alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
              }
          });
      } */
      
      Kakao.Auth.createLoginButton({
    	    container: '#kakao-login-btn',
    	    success: function(authObj) {
    	      Kakao.API.request({
    	        url: '/v2/user/me',
    	        success: function(res) {
    	          alert(JSON.stringify(res))
    	        },
    	        fail: function(error) {
    	          alert(
    	            'login success, but failed to request user information: ' +
    	              JSON.stringify(error)
    	          )
    	        },
    	      })
    	    },
    	    fail: function(err) {
    	      alert('failed to login: ' + JSON.stringify(err))
    	    },
    	  })
      
	// 로그아웃 
	  function kakaoLogout() {
    if (!Kakao.Auth.getAccessToken()) {
      alert('Not logged in.')
      return
    }
    Kakao.Auth.logout(function() {
      alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken())
    })
  }
</script>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<h1>로그인</h1>
	<p>
	<p>
	<form>
		<div>
			<h3>아이디</h3>
			<input type="text" name="id" value="아이디 입력"><p>
			
			<h3>비밀번호</h3>
			<input type="text" name="pwd" value="비밀번호 입력"><p>

			<input type="submit" value="로그인" id="login"><p>

			<a id="custom-login-btn" href="javascript:loginWithKakao()"> <img
				src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
				width="222" alt="카카오 로그인 버튼" />
			</a><p>
			
			<!-- <button class="api-btn" onclick="kakaoLogout()">로그아웃</button> --><p>
			
			<a href="#">아이디 찾기</a><p>
			<a href="#">비밀번호 찾기</a><p>

			<input type="submit" value="회원가입" id="join">
		</div>
	</form>





	<%-- 	<div class="jumbotron">
		<h1>Login</h1>
		<p>Login, AOP/HttpSession</p>
		<p>
			<a class="btn btn-primary btn-lg">Learn more</a>
		</p>
	</div>

	<c:choose>
	<c:when test="${empty loginUser}">
		<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/front">
			<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
			<input type="hidden" name="methodName" value = "login" />  <!-- 메소드이름 -->
			<fieldset>
				<legend>Login</legend>
				<div class="form-group">
					<label for="userId" class="col-lg-2 control-label">User Id</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="userId" name="userId"
							placeholder="userId">
					</div>
				</div>
				<div class="form-group">
					<label for="pwd" class="col-lg-2 control-label">Password</label>
					.<div class="col-lg-10">
						<input type="password" class="form-control" id="pwd" name="pwd"
							placeholder="password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<button class="btn btn-default">Cancel</button>
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</div>
			</fieldset>
		</form>
	</c:when>
	<c:otherwise>
			<legend>Login</legend>
			<blockquote>
				<p>My Shopping Mall!</p>

				<div class="alert alert-dismissible alert-warning">
					<button type="button" class="close" data-dismiss="alert">Ã</button>
					<h4>Welcome!</h4>
					<p>
						<a href="#" class="alert-link">${loginUser} / ${loginName}</a>.
					</p>
				</div>
			</blockquote>
	</c:otherwise>
</c:choose> --%>

	<jsp:include page="../common/footer.jsp" />
</body>