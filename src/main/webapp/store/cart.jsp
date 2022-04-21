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

<script type="text/javascript">
	
	

</script>

</head>
<body>

<h2 align="center">장바구니</h2>
<div class="container" style="padding-left: 150px;">

 <div class ="row"><p/><p/><p/>
  
  <div class="col-md-5 mr-3">
   
    <div class="card w-85">
    
       <div class="col text-end">
         <form action="${path}/front">
		   <input type="hidden" name="key" value="cart" >
   		   <input type="hidden" name="methodName" value="delete" >
   		   <input type="hidden" name="userId" value="${loginUser.userId}" >
   		   <input type="hidden" name="cartNo" value="${cartList.cartNumber}" >
           <input type="submit" class="btn-close" aria-label="Close" value=""/>
         </form>
       </div>
      
      <div class="card-body">
      
      <%-- <c:forEach items="${cartList}" var="cartList" varStatus="status"> --%>
      
         <img src="${path}/img/${proList[status.index].cateCode}/${proList[status.index].pImage}.jpg" 
			  class="rounded float-start" style="max-width: 200px;">
			  
			  <div class="text-start"><h4><b>${proList[status.index].pName}</b></h4></div>
			  
			 <div class="row">
			  <div class="col">
			   <div class="text-start">수량</div>
			   <div class="text-start">상품 금액</div>
			  </div>
			  
			  <div class="col">
			   <div class="text-end"><fmt:formatNumber value="${cartList.cartCount}"/>개</div>
			   <div class="text-end"><fmt:formatNumber value="${proList[status.index].pPrice}"/>원</div><p/>
			  </div>
			 </div>
			   
	   <%--  </c:forEach> --%>
			 
      </div><!--바디-->
      
    </div><p/><!--카드-->

  </div><!--col-md-5 mr-3 왼쪽-->
  
  
  
  <!-- 여기부터는 오른쪽 계산서 -->

  <div class="col-md-5 mr-3">
    <div class="card" style="width: 18rem;">
      <b align="center"><h4>계산서</h4></b><p/>
      
      <div class="row">
        <div class="col">
          <div class="text-start">총 상품 금액</div><p/>
          <div class="text-start">총 배송비</div><p/>
          <div class="text-start"><b>총 결제 금액</b></div><p/>
	    </div>
	      
	    <div class="col">
          <div class="text-end"><fmt:formatNumber value="${proList[status.index].pPrice}"/>원</div><p/>
	      <div class="text-end"><fmt:formatNumber value="3000"/>원</div><p/>
	      <div class="text-end"><fmt:formatNumber value="${(cartList.cartCount*proList[status.index].pPrice)+3000}"/>원</div><p/><p/>	    
	    <form action="${path}/front" method="post"> 
	      <input type="hidden" name="img" value="${path}/img/${proList[status.index].cateCode}/${proList[status.index].pImage}.jpg">
	      <button type="submit" class="btn btn-primary btn-lg" value="삭제">주문하기</button><p/>
	    </form> 
	    </div>
      </div>
      
      
    </div><!--계산서박스-->
  </div><!--col-md-5 mr-3 오른쪽-->

</div><!--가장 큰 row-->

</div><!--컨테이너-->


				<%-- 


								<
									<div class="row">
										<div class="col">
											<div class="text-end">
												<input id="count" name="items" type="number"
													class="detail-quantity form-control text-center input-sm"
													min="0" value="${cartList.cartCount}">
											</div>
										</div>
									</div>
									<p>
									<p>
									<p>
									<div class="row">
										<div class="col">
											<div class="text-start">상품 금액</div>
											<p>
										</div>


										<div class="col">
											<div class="text-end">

												<input type="text" class="priceBox" name="totalprice"
													value="${cartList.cartCount*proList[status.index].pPrice}"
													size="5" readonly="readonly" />원
											</div>

											<p>
										</div>



									</div>
									<!--상품금액 총금액row-->



								</div>
								<!--카드바디-->

							</div>
							<!--카드 안 row-->

						</div>
						<p>
							<!--w85카드-->

							<input type="hidden" class="numBox" min="1" max="99" readonly="readonly" value="${cartList.cartCount}" >
                <input type="hidden" class="pricebox" readonly="readonly" size="5" value="${proList[status.index].pPrice}">
					</c:forEach>
					<form action="${path}/front" method="post">
						<div class="col-md-5 mr-3">
							<div class="card" style="width: 18rem;">
								<div class="card-body">



									<b>계산서</b>
									<p>
									<hr>

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
												<input type="text" class="priceBox" name="totalprice"
													value="${proList[status.index].pPrice}" readonly="readonly"
													size="5">원
											</div>
											<p>
											<div class="text-end">
												<input type="text" class="priceBox" name="charge"
													value="3000" readonly="readonly" size="5">원
												<!--배송비-->
											</div>
											<p>
											<div class="text-end">
												<b><input type="text" class="priceBox" name="total"
													value="${proList[status.index].pPrice}" readonly="readonly"
													size="5">원</b>
												<!--최종금액-->
											</div>
											<p>
												<input id="count" name="items" type="number"
													class="detail-quantity form-control text-center input-sm"
													min="0" value="1">
										</div>

									</div>

								</div>
								<!--카드바디-->

							</div>
							<p>
							<p>
							<p>
								<!--카드-->


								<input type="hidden" name="img"
									value="${path}/img/${proList[status.index].cateCode}/${proList[status.index].pImage}.jpg">
								<button type="submit" class="btn btn-primary btn-lg">주문하기</button>
					</form>

				</div>



			</div>
>>>>>>> 73d98d010704b68bd794770ebf755003dce8e0ca




<<<<<<< HEAD
</div><!--row-->

</form>

</div><!--컨테이너-->
            
            

    
 
=======
		</div>




	</div>
	<!-- 1번 row -->

	</div>
	<!--컨테이너-->


>>>>>>> 73d98d010704b68bd794770ebf755003dce8e0ca --%>




</body>
</html>

<jsp:include page="../common/footer.jsp" />