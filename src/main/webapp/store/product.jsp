<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 눌렀을때</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">


</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="container">
<h2 style="text-align: center;">${param.title}</h2>
</div>



<nav class="navbar navbar-expand-lg navbar-light bg-white container">
  <div class="container-fluid">
	<form action="${path}/front" method="post" >
	    <a class="navbar-brand" href="#" onclick="parentNode.submit();">도수</a>
	    <input type="hidden" name="key" value = "product" />
		<input type="hidden" name="methodName" value = "productSelectAll" />
		<input type="hidden" name="type" value = "${param.type}" />
		<input type="hidden" name="title" value = "${param.title}" />
    </form>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
		  <form action="${path}/front" method="post" >
          	<button type="submit" id="al10" class="btn btn-link-light" style="text-decoration: none;">저도수(0~10)%</button>
  			<input type="hidden" name="key" value="product">
  			<input type="hidden" name="methodName" value="alcoFilter">
  			<input type="hidden" name="alcohol" value="10">
  			<input type="hidden" name="type" value="${param.type}">
		  </form>
        </li>
        <li class="nav-item">    
          <form action="${path}/front" method="post" >
          	<button type="submit" id="al20" class="btn btn-link-light" style="text-decoration: none;">낮은 중도수(10~20)%</button>
  			<input type="hidden" name="key" value="product">
  			<input type="hidden" name="methodName" value="alcoFilter">
  			<input type="hidden" name="alcohol" value="20">
  			<input type="hidden" name="type" value="${param.type}">
		  </form>
        </li>
        <li class="nav-item">
          <form action="${path}/front" method="post" >
          	<button type="submit" id="al20" class="btn btn-link-light" style="text-decoration: none;">높은 중도수(20~30)%</button>
  			<input type="hidden" name="key" value="product">
  			<input type="hidden" name="methodName" value="alcoFilter">
  			<input type="hidden" name="alcohol" value="30">
  			<input type="hidden" name="type" value="${param.type}">
		  </form>
        </li>
        <li class="nav-item">
          <form action="${path}/front" method="post" >
          	<button type="submit" id="al20" class="btn btn-link-light" style="text-decoration: none;">고도수(30~40)%</button>
  			<input type="hidden" name="key" value="product">
  			<input type="hidden" name="methodName" value="alcoFilter">
  			<input type="hidden" name="alcohol" value="40">
  			<input type="hidden" name="type" value="${param.type}">
		  </form>
        </li>
      </ul>
    </div>
   <!--  <form> -->
		<div class="dropdown" >
		  <a class="btn btn-secondary btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
		    기본순
		  </a>
		  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		    <li><a class="dropdown-item" href="#">평점순</a></li>
		    <li><a class="dropdown-item" href="#">최신순</a></li>
		  </ul>
		</div>
	<!-- </form> -->
  </div>
</nav>
<jsp:include page="../store/productMain.jsp"/>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>