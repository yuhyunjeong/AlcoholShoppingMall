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
$(function(){

	function selectAll(){
		
		 /* let name="희정";
		 alert(`name = ${name}`)// 은 자바스크립코드라고 생각했다 - x , ~.jsp문서이므로 을 표현언어로 먼저 해석한다. 
		 
	       alert(`경로3 : ${path} , ${name}`)
		 
		 alert(`경로4 : ${path} , ${'${name}'}`)
		   */
		
		
		
		
		$.ajax({
   			url :"../ajax" , //서버요청주소
   			type:"post", //요청방식(method방식 : get | post | put | delete )
   			dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
   			data: {key :"product", methodName:"productSelectAll"}, //서버에게 보낼 데이터정보(parameter정보)
   			success :function(result){
   				
   				let str ="";
   				$("#rrr").each(function(index, item) {
   					
   					str+="";
   					str+="<div class='row row-cols-1 row-cols-md-4 g-4'>";
   					str+="<div class='col-lg-3 col-md-6'>";
   					str+="<div class='card mb-3 h-100'>";
   					
   					str+="<a href = '${path}/store/productDetail.jsp'><img src='${path}/img/"+${'${item.cateCode}'}+"/"+${'${item.pImage}'}+".jpg' class=card-img-top alt='모르겠다'></a>";
   					str+="<div class='card-body'>";
   					str+="<p class='card-text'>";
   					str+=`<b>${'${item.pName}'}</b><p><p>`;
   					str+=`<b>가격 : ${'${item.pPrice}'}원</b><p>`;
   					str+="<hr>";
   					str+="<b>상품 설명</b><p>";    
   					str+=`${item.pDetail}`;
   					str+="</p></div></div></div></div>";
   				});
   				//$("rrr").remove();

   				
				$("#rrr").append(str);
					
   			},error : function(err){  
   				alert(err+"에러 발생했어요.");
   			}  //실팽했을때 실행할 함수 
   		});
		
	}
	selectAll();
	
	
});


</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="container">
<h2 style="text-align: center;">${param.title}</h2>
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
          	<button type="button" id="10" class="btn btn-link-light" style="text-decoration: none;">저도수(0~10)%</button>
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
<%-- <div class="container mb-4">	
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
</div> --%>
<div id="rrr" class='container mb-4'></div>

<%-- <jsp:include page="../store/productMain.jsp"/> --%>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>