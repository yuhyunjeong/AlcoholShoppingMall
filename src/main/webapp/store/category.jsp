<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안다미로_상품카테고리</title>


</head>
<body>
<%@include file="../common/header.jsp"%>

<div class="container marketing" style="text-align: center;">

  <div class="row m-5" >
      <div class="col-lg-3" >
       <a href="${path}/store/product.jsp?type=A&title=탁주">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>       
        	<image href="${pageContext.request.contextPath}/img/A/자연담은 복분자 막걸리.jpg" height="100%" width="100%"/>
        </svg>
	   </a>

        <h3>탁주</h3>
         <p></p>
      </div>
      
      <div class="col-lg-3" >

	      	<a href="${path}/store/product.jsp?type=B&title=청주">	
	        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
	        <image href="${pageContext.request.contextPath}/img/B/매화 깊은 밤.jpg" height="100%" width="100%"/>
	        </svg>
			</a>
	        <h3>청주</h3>
	        <p></p>

      </div>
      
      <div class="col-lg-3" >

	     	<a href="${path}/store/product.jsp?type=C&title=과실주">
	        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
	        <image href="${pageContext.request.contextPath}/img/C/크라테 자두 와인.jpg" height="100%" width="100%"/>
	        </svg>
			</a>
	        <h3>과실주</h3>
	        <p></p>
      </div>
      
      <div class="col-lg-3" >
	      	<a href="${path}/store/product.jsp?type=D&title=증류주">
	        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
	        <image href="${pageContext.request.contextPath}/img/D/만월.jpg" height="100%" width="100%"/>
	        </svg>
			</a>
	        <h3>증류주</h3>
	        <p></p>
      </div>
   
    </div><!-- /.row -->

    <hr class="featurette-divider">
    
    <div class="row m-5">
    	<h3>베스트</h3>
  		<div class="col-lg-4" >
  			<div class="row">
  				<a href="product.jsp"><img src="../img/B/기다림 흑미 약주.jpg" class="rounded" style="width: 200px; height: 250px"></a>
  			</div>
  			얘는 클릭했을때 뒤로가기가 가능한데 svg로 감싸진 이미지는 새창에서 뜬다 통일시키기
  		</div>
  		<div class="col-lg-4" >
  			<img src="../img/Gi/꽃길을 여는 술들.jpg" class="rounded" style="width: 200px; height: 250px">
  		</div>
  		<div class="col-lg-4" >
  			<img src="../img/A/만강에 비친 달.jpg" class="rounded" style="width: 200px; height: 250px">
  		</div>
    </div>
    
    <div class="row m-5" >
    	<h3>신상품</h3>
  		<div class="col-lg-4" >
  			<img src="../img/C/동백꽃 제주.jpg" class="rounded"style="width: 200px; height: 250px">
  		</div>
  		<div class="col-lg-4" >
  			<img src="../img/C/크라테 자두 와인.jpg" class="rounded" style="width: 200px; height: 250px">
  		</div>
  		<div class="col-lg-4" >
  			<img src="../img/D/서울의 밤.jpg" class="rounded" style="width: 200px; height: 250px">
  		</div>
    </div>
</div>


<%@include file="../common/footer.jsp"%>
</body>
</html>