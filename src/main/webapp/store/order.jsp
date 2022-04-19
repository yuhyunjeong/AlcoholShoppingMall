<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<jsp:include page="../common/header.jsp"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매하기</title>
<style type="text/css">
 
 .card{text-align: center;}
 .form-check{text-align: left;}
 
</style>

<script type="text/javascript">
  
</script>



</head>
<body>
<h2 align="center">구매하기</h2><p>

<div class="container">



<div class="container row" style="float: none; margin:100 auto;">
<div class="col-md-9 col-lg-9" style="float: none; margin:0 auto;"><p>

<c:forEach items="${proList}" var="proList" varStatus="status">

<div class="row">
 <div class="col">
  <div class="text-start"><h3><b>${proList[status.index].pName}</b></h3></div> 
 </div>
 <div class="col">
  <img src="${path}/img/${proList[status.index].cateCode}/${proList[status.index].pImage}.jpg" class="rounded float-end" style="width:180px; height:250px;">   
 </div>
</div>

</c:forEach>  
  
<div class="row">  
 <div class="col">
 <div class="text-start">상품 금액</div><p> 
 <div class="text-start">수량</div> 
 </div> 
 <div class="col">
 <div class="text-center"><fmt:formatNumber value="${proList[status.index].pPrice}" pattern="###,###" />원</div><p>
 <div class="text-center">${cart.cartcount}개</div>
 </div> 
</div>

<hr>

<div class="row">  
 <div class="col">
 <div class="text-start"><b>총 상품 금액</b></div> 
 </div> 
 <div class="col">
 <div class="text-center"><b><fmt:formatNumber value="${cart.totalprice}" pattern="###,###"/>원</b></div><p> 
</div> 
</div> 

</div><!--그리드 가운데 정렬?-->

<p>

<div class="col-md-6 col-lg-7" style="float: none; margin:0 auto;">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">배송지</h5>
         <div class="input-group mb-3">
         <span class="input-group-text" id="basic-addon1">수령인</span>
         <input type="text" class="form-control" placeholder="수령인" aria-label="Username" aria-describedby="basic-addon1">
         </div><p>
         
         <div class="input-group mb-3">
         <span class="input-group-text" id="basic-addon1">주소</span>
         <input type="text" class="form-control" placeholder="주소" aria-label="Username" aria-describedby="basic-addon1">
         </div><p>
                  
         <div class="input-group mb-3">
         <span class="input-group-text" id="basic-addon1">상세주소</span>
         <input type="text" class="form-control" placeholder="상세주소" aria-label="Username" aria-describedby="basic-addon1">
         </div>
         
         <div class="input-group mb-3">
         <span class="input-group-text" id="basic-addon1">연락처</span>
         <input type="text" class="form-control" placeholder="010-0000-0000" aria-label="Username" aria-describedby="basic-addon1">
         </div>              
      </div><p>
</div>
</div><!--배송지 카드--><p>
  
<div class="col-md-5 col-lg-5" style="float: none; margin:0 auto;">  
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">사용 가능한 쿠폰</h5>
        <select class="form-select" aria-label="Default select example">
         <option selected>select</option>
         <option value="1">Welcome coupon</option>
         <option value="2">Birthday coupon</option>
         <option value="3">New Product coupon</option>
        </select>
      </div>
    </div>
</div><!--쿠폰--><p>
    
<div class="col-md-5 col-lg-5" style="float: none; margin:0 auto;">  
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">사용 가능한 적립금</h5>
        <h6 class="text-end"><b><fmt:formatNumber value="${point}" pattern="###,###"/>원</b></h6>
        <input class="form-control form-control-sm" type="text" placeholder="사용할 적립금을 입력하세요" aria-label=".form-control-sm example">
      </div>
    </div>
</div><!--적립금--><p>

<div class="col-md-3 col-lg-3" style="float: none; margin:0 auto;">  
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">결제방법</h5>
        <div class="form-check">
       <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
       <label class="form-check-label" for="flexRadioDefault2">신용카드</label>
      </div>
      <div class="form-check">
       <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
       <label class="form-check-label" for="flexRadioDefault1">무통장 입금</label>
      </div>
      </div>
    </div>
  </div><p><!--결제-->

<div class="col-md-9 col-lg-9" style="float: none; margin:0 auto;"><p>
<hr>

<div class="row">
 <div class="col">
  <div class="text-start"><b>계산서</b></div><p>
  <div class="text-start">총 상품 금액</div><p>
  <div class="text-start">총 할인 금액</div><p>
  <div class="text-start">&nbsp;&nbsp;포인트 사용</div><p>
  <div class="text-start">&nbsp;&nbsp;쿠폰</div><p>
  <div class="text-start">총 배송비</div><p>
  <div class="text-start"><b>총 결제 금액</b></div><p>
 </div>
 <div class="col">
  <div class="text-end">&nbsp;</div><p>
  <div class="text-end"><fmt:formatNumber value="${cart.totalprice}" pattern="###,###"/>원</div><p>
  <div class="text-end"><fmt:formatNumber value="${discount}" pattern="###,###"/>원</div><p>
  <div class="text-end"><fmt:formatNumber value="${point}" pattern="###,###"/>원</div><p>
  <div class="text-end"><fmt:formatNumber value="${coupon.cname}" pattern="###,###"/>원</div><p>
  <div class="text-end"><fmt:formatNumber value="${cart.charge}" pattern="###,###"/>원</div><p>
  <div class="text-end"><b><fmt:formatNumber value="${cart.total}" pattern="###,###"/>원</b></div><p>
 
</div>



<div align="center">
<button type="submit" onclick="order()" class="btn btn-light">결제하기</button>
</div><p> 

 
</div>
</div><!--계산서 전체를 위한....-->

</div><!--container row-->

</div><!--container--> 





</body>
</html>
<jsp:include page="../common/footer.jsp"/>
