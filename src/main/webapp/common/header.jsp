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
  	.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">


<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/navbars/">
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/headers/">

<link href="${pageContext.request.contextPath}/css/headers.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/navbar.css" rel="stylesheet">



</head>
<body>


<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="${path}/index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <span class="fs-4">안다미로</span>
      </a>
	<div class="col-md-5 text-end">
		<a href="#"><i class="bi bi-cart4 me-2"></i></a>
        <button type="button" class="btn btn-primary me-2" onclick= "location.href='${path}/store/subscription.jsp'">구독</button>
        <button type="button" class="btn btn-primary me-2" onclick= "location.href='${path}/store/category.jsp'">스토어</button>
        <button type="button" class="btn btn-primary me-2" onclick= "location.href='${path}/user/login.jsp'">로그인</button>
    </div>
    </header>
</div>	
  
  
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light rounded" aria-label="Eleventh navbar example">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample09">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="${path}/store/product.jsp?name=이달의 술">이달의 술</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="${path}/store/product.jsp?name=선물 세트">선물 세트</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="${path}/store/factory.jsp">양조장</a>
            </li>
          </ul>
          <form>
            <input class="form-control" type="text" placeholder="Search" aria-label="Search">
          </form>
        </div>
      </div>
    </nav>
</div>  			



	

<%-- 
<c:choose>
	<c:when test="로그인일때">
	
		<c:choose>
			<c:when test="회원일때">
				
			</c:when>
			<c:otherwise>
				
			</c:otherwise>
		</c:choose>
	
	</c:when>
	<c:when test="로그인이 안됬을때 평상시">
		
	</c:when>
	<c:otherwise>
		
	</c:otherwise>
</c:choose> --%>

</body>


