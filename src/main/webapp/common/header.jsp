<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
 	button{style="background-color: pink;border: none;"}
 	.bi-cart4{
 		font-size: 30px;
   		line-height: 30px;

 	
 	}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>

</head>
<body>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<i class="bi bi-cart4 me-md-2" ></i>
					<button class="btn btn-primary me-md-2" type="button">마이페이지</button>
  					<button class="btn btn-primary me-md-2" type="button">구독</button>
  					<button class="btn btn-primary me-md-2" type="button">스타일</button>
  					<button class="btn btn-primary" type="button">로그아웃</button>
				</div>



	

<%-- 
<c:choose>
	<c:when test="로그인일때">
	
		<c:choose>
			<c:when test="회원일때">
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<i class="bi bi-cart4">정유현</i>
					<button class="btn btn-primary me-md-2" type="button">마이페이지</button>
  					<button class="btn btn-primary me-md-2" type="button">구독</button>
  					<button class="btn btn-primary me-md-2" type="button">스타일</button>
  					<button class="btn btn-primary" type="button">로그아웃</button>
				</div>
			</c:when>
			<c:otherwise>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<a href="#">관리자님</a>
					<button class="btn btn-primary me-md-2" type="button">회원관리</button>
  					<button class="btn btn-primary me-md-2" type="button">상품관리</button>
  					<button class="btn btn-primary me-md-2" type="button">주문관리</button>
  					<button class="btn btn-primary me-md-2" type="button">게시판관리</button>
  					<button class="btn btn-primary" type="button">로그아웃</button>
				</div>
			</c:otherwise>
		</c:choose>
	
	</c:when>
	<c:when test="로그인이 안됬을때 평상시">
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
  			<button class="btn btn-primary me-md-2" type="button">구독</button>
  			<button class="btn btn-primary" type="button">스타일</button>
  			<button class="btn btn-primary" type="button">로그인</button>
		</div>
	</c:when>
	<c:otherwise>
		<button class="btn btn-primary me-md-2" type="button">구독</button>
  		<button class="btn btn-primary me-md-2" type="button">스타일</button>
  		<button class="btn btn-primary" type="button">로그인</button>
	</c:otherwise>



</c:choose> --%>

</body>


