<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세</title>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".plus").click(function(){
			   var num = $(".numBox").val();
			   var plusNum = Number(num) + 1;

			    if(plusNum >= 99) {
			    $(".numBox").val(num);
			    $(".priceBox").val(num+"원");
			    
			    
			   } else {
			    $(".numBox").val(plusNum);     
			    $(".priceBox").val(plusNum+"원");
			   }
			  });
			  
			  $(".minus").click(function(){
			   var num = $(".numBox").val();
			   var minusNum = Number(num) - 1;
			   
			   if(minusNum <= 0) {
			    $(".numBox").val(num);
			    $(".priceBox").val(num+"원");
			   } else {
			    $(".numBox").val(minusNum);    
			    $(".priceBox").val(minusNum+"원");
			   }
			  });
		
		
		
	});


</script>

</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div class="container">

	
	<div class="row">	
			<div class="col-lg-8">
				<div class="row">
					<div class="col-xxl-8">
						<img src="../img/A/냥이탁주.jpg" class="rounded">
			
			
					</div>
					<div class="col-xxl-4">
						<h3>상품명</h3>
						<p> <b>별점</b>   <a href="#">[리뷰]</a>
						<p> <b>주종</b> : 탁주
						<p> <b>도수</b> : 12
						<h4>10000원</h4>
						
					</div>	
				</div>
			</div>
			<div class="col-lg-4">
				<form action="">
					<div class="col">
						<div class="card rounded-3 shadow-sm text-center">
				          <div class="card-body mx-auto">
				          	<span style="text-align: right">수량</span>
				          	<div class="card rounded-3 shadow-sm">     		
				          		<div class="card-main ">
				          			
				          			<button type="button" class="minus" style="border: none; background: none;">-</button>
				          			<input type="number" class="numBox" min="1" max="99" value="1" readonly="readonly" style="border: none; background: none; text-align: center;"/>
				          			<button type="button" class="plus" style="border: none; background: none;">+</button>
				          		</div>       	
				          	</div>
				            
				            
				            <div class="card rounded-3 shadow-sm mt-5">
				          		<div class="card-header text-end bg-white">총가격</div>
				          		<div class="card-main text-center">
				          			<input type="text" class="priceBox"  value="0원" readonly="readonly" style="border: none; text-align: center;" />          			
				          		</div>       	
				          	</div>
				            
				            
				            <button type="button" class="btn btn-lg btn-primary mt-5">장바구니 담기</button><br>
				            <button type="button" class="btn btn-lg btn-primary mt-3">바로 구매하기</button>
				          </div>
				        </div>
						
					</div>
				</form>
			</div>
	</div>
	<div class="row mt-5">
		<div class="col">
			<img src="../img/A/냥이탁주.jpg"  valeu="상세설명자리" width="100%" height="100%">		
		</div>
	</div>
	
	<div class="row mt-5">
		<div class="col">
				<table class="table table-hover">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">글쓴이</th>
				      <th scope="col">내용</th>
				      <th scope="col">별점</th>
				      <th scope="col">등록일</th>
				      <th scope="col">사진</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>김정현</td>
				      <td>너무 맛있었다</td>
				      <td>별점이다</td>
				      <td>2022-04-05</td>
				      <td><img src="../img/A/냥이탁주.jpg" width="50" height="50"></td>
				    </tr>
				  </tbody>
				</table>	
		</div>
	</div>
	<div class="row mt-5 mb-5">
		<div class="col">
				<div class="accordion accordion-flush" id="accordionFlushExample">
				<span><b>자주하는 질문</b></span>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingOne">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
				        첫 질문은 뭐로할까
				      </button>
				    </h2>
				    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">이게내용이고 <code>코드내용인듯</code>내용이다</div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingTwo">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        두번째 질문
				      </button>
				    </h2>
				    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">이게내용이고 <code>코드내용인듯</code>내용이다</div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingThree">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
				        세번째 질문이구먼
				      </button>
				    </h2>
				    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">이게내용이고 <code>코드내용인듯</code>내용이다</div>
				    </div>
				  </div>
				</div>
		</div>
	</div>
	
</div>




<jsp:include page="../common/footer.jsp"/>
</body>
</html>