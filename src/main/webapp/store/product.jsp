<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 눌렀을때</title>


</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="container">
<h2 style="text-align: center;">${param.name}</h2>
</div>



<nav class="navbar navbar-expand-lg navbar-light bg-white container">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">도수</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">저도수(0~10)%</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">낮은 중도수(10~20)%</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">높은 중도수(20~30)%</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">고도수(30~40)%</a>
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

<div class="container mb-4">	
	<div class="row row-cols-1 row-cols-md-4 g-4" >
<%-- 		<c:forEach var ="i" begin="1" end="4"> --%>
			<c:forEach items="${proList}" var="product">
				<div class="col-lg-3 col-md-6">
					<div class="card mb-3 h-100">
					  <a href = "${path}/store/productDetail.jsp"><img src="${path}/img/${product.cateCode}/${product.pImage}.jpg" class="card-img-top" alt="모르겠다"></a>
					  <div class="card-body">
					  
					    <p class="card-text">
					    <b>${product.pName}</b><p><p>
					    <b>가격 : ${product.pPrice}원</b><p>
					    <hr>
					    <b>상품 설명</b><p>	    
					    ${product.pDetail}
					    
					    </p>
					  </div>  
					</div>	
				</div>
			</c:forEach>	
	</div>
</div>
<jsp:include page="../common/footer.jsp"/>



</body>
</html>