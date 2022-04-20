<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../common/header.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<script type="text/javascript"src="${path}/js/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() { //전체선택 해제
		$("#flexCheckDefault").click(function() {
			if ($("#flexCheckDefault").is(":checked"))
				$("input[name=chk]").prop("checked", true);
			else
				$("input[name=chk]").prop("checked", false);
		});

		$("input[name=chk]").click(function() {
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;

			if (total != checked)
				$("#flexCheckDefault").prop("checked", false);
			else
				$("#flexCheckDefault").prop("checked", true);
		});
		
	});
	
	$(function(){ 
		////계산.....
		$(".plus").click(function(){
			   var num = $(".numBox").val();
			   var plusNum = Number(num) + 1;
			   var price = `${proList[status.index].pPrice}`;
			    if(plusNum >= 99) {
			    $(".numBox").val(num);
			    $(".priceBox").val((price*num));
			    
			    
			   } else {
			    $(".numBox").val(plusNum);     
			    $(".priceBox").val((price*plusNum));
			   }
			  });
			  
			  $(".minus").click(function(){
			   var num = $(".numBox").val();
			   var minusNum = Number(num) - 1;
			   var price = `${proList[status.index].pPrice}`;
			   if(minusNum <= 0) {
			    $(".numBox").val(num);
			    $(".priceBox").val((price));
			   } else {
			    $(".numBox").val(minusNum);    
			    $(".priceBox").val((price*minusNum));
			   }
			  });
		
	});
</script>

</head>
<body>
	<%-- 
1) <c:forEach></c:forEach>

2) ajax 
--%>

	<h2 align="center">장바구니</h2>
	<p>
	
    <div class="container" style="padding-left: 150px;">	
    
        <div class="row">
        
           <div class="col">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked="checked" name="chk"/> 
					<label class="form-check-label" for="flexCheckDefault">전체선택</label>
				</div>
			</div>
        
        <div class="row">
        
           
        
             <form action="${path}/store/order.jsp">

              <div class="col-md-5 mr-3">
   
                 <c:forEach items="${cartList}" var="cartList" varStatus="status"> 
              
                    <div class="card w-85">
                    
                       <div class="row">

                       <div class="col text-start">
						<div style="padding-left: 5px;">
							<input class="form-check-input" type="checkbox" id="flexCheckDefault" value="" aria-label="..." checked="checked" name="chk">
						</div>
					  </div>
					  
					  <div class="col text-end">
						<button type="button" class="btn-close" aria-label="Close" />
					  </div>
					  
					  <div class="card-body">
						<div class="col-md-4">
					<img src="${path}/img/${proList[status.index].cateCode}/${proList[status.index].pImage}.jpg" 
					     class="rounded float-start" style="max-width: 200px;"> </div>
					  
					  <div class="row">
						<div class="col">
							<div class="text-start">
								<h4><b>${proList[status.index].pName}</b></h4>
							</div>
						</div>
                     </div>
                     <p><p><p><p><p><p><p><p>
                     <p><p><p><p><p><p><p><p>
                                         
                     <div class="row">
                         <div class="col">
							<div class="text-end"> 
							   <button type="button" class="minus" style="border: none; background: none;">-</button>
							   <input type="number" name="count" value="${cartList.cartCount}" 
								      class="numBox" min="1" max="99" readonly="readonly"/>
							   <button type="button" class="plus" style="border: none; background: none;">+</button>	
											
							</div>
						</div>
					</div><p><p><p>
					  
				   <div class="row">	  
					  <div class="col">
						<div class="text-start">상품 금액</div>
					    <p>
				
					</div>
				  	
			        
			       <div class="col">
					<div class="text-end">
					<input type="text" class="priceBox" name="totalprice" 
						   value="${cartList.cartCount*proList[status.index].pPrice}" size="5" readonly="readonly"/>원
					</div>
					
					<p> </div>
					
				 
									 
				</div><!--상품금액 총금액row-->	 
				
				 
					  
                </div><!--카드바디-->
                   
                </div><!--카드 안 row--> 
        
                </div><p><!--w85카드-->
                
                <%-- <input type="hidden" class="numBox" min="1" max="99" readonly="readonly" value="${cartList.cartCount}" >
                <input type="hidden" class="pricebox" readonly="readonly" size="5" value="${proList[status.index].pPrice}"> --%>
                
                </c:forEach>
              
                  <div class="col-md-5 mr-3"> 
                 <div class="card" style="width: 18rem;">
                   <div class="card-body">
                   
                     <b>계산서</b>
					 <p><hr>
					 
					 <div class="row">
					   <div class="col">
						 <div class="text-start">총 상품 금액</div>
							<p>
						 <div class="text-start">총 배송비</div>
						    <p>
						 <div class="text-start">
							<b>총 결제 금액</b>
						</div>
					  </div>
					  <div class="col">
					    <div class="text-end">
						  <input type="text" class="priceBox" name="totalprice" value="${proList[status.index].pPrice}" readonly="readonly" size="5">원
						</div><p>
						<div class="text-end">
						  <input type="text" class="priceBox" name="charge" value="3000" readonly="readonly" size="5">원<!--배송비-->
						</div><p>
						<div class="text-end">
						<b><input type="text" class="priceBox" name="total" value="${proList[status.index].pPrice}"readonly="readonly" size="5">원</b><!--최종금액-->
						</div><p>
					  </div>
					  
					</div> 
                   
                   </div><!--카드바디-->
                 
                 </div><p><p><p><!--카드-->
                 
                  
                 <input type="hidden" name="img" value="${path}/img/${proList[status.index].cateCode}/${proList[status.index].pImage}.jpg">
				 <button type="submit" class="btn btn-primary btn-lg">주문하기</button>
                 
                 </div>
                 
                 
                
              </div>
                        
            </form>
            
           
        
        </div>
        
   
           
        
        </div><!-- 1번 row -->
    
    </div><!--컨테이너--> 


	
   


</body>
</html>

<jsp:include page="../common/footer.jsp" />