<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container mb-4">	
	<div class="row row-cols-1 row-cols-md-4 g-4" >
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
</body>
</html>