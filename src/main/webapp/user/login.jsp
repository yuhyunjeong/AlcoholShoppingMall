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
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<h1>로그인</h1><p><p>
	
	<form>
		<div>
			<h3>아이디</h3>
			<input type="text" name="id"><p>
			
			<h3>비밀번호</h3>
			<input type="text" name="pwd"><p>
			
			<input type="submit" value="로그인" id="login"><p>
	
			<a>아이디 찾기</a><p>
			<a>비밀번호 찾기</a><p>			
			
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