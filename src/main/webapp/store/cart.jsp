<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="../common/header.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<script type="text/javascript">

  

</script>



</head>
<body>

<h2 align="center">장바구니</h2><p>

<div class="container" style="padding-left: 250px;">

<div class="row"> 

 <div class="col">
 <div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked="checked">
  <label class="form-check-label" for="flexCheckDefault">전체선택</label>

 </div> 
</div> 


<div class="row">
  <div class="col-md-5 mr-3">
  
    <div class="card w-85">

<div class="row"> 
<div class="col text-start">  
<div style="padding-left:5px;">  
 <input class="form-check-input" type="checkbox" name="check" id="flexCheckDefault" value="" aria-label="..." checked="checked"> 
 </div>
</div>  

<div class="col text-end">
  <button type="button" class="btn-close" aria-label="Close" onclick="delete"></button>
</div>
</div>
    
 <div class="card-body">     
       <div class="col-md-4">
          <img src="../img/A/냥이탁주.jpg" class="rounded float-start" alt="냥이탁주" style="max-width:150px;">
       </div>
       
       <div class="row">
        <div class="col">
        <div class="text-start"><h4><b>냥이탁주</b></h4></div>
      </div>
     </div><p>
     
     <div class="row"> 
     
     <div class="col">
     <input name="items" type="number" class="datail-quantity form-control text-center input-sm" value="1" >
     </div>
      
      <div class="col">
        <div class="text-end">15000원</div>
      </div>   
      </div><hr>
       
       
       <div class="row">  
               <div class="col">
               <div class="text-start">상품 금액</div><p> 
               <div class="text-start"><b>총 금액</b></div> 
              </div> 
              
              <div class="col">
               <div class="text-end">15000원</div><p> 
               <div class="text-end"><b>15000원</b></div> 
              </div>
           </div>

       </div><!--상품카드바디-->
    </div><!--상품카드-->  

  </div><!--그리드-->
       
               
<div class="col-md-offset-2 col-md-4">
  <div class="card" style="width: 18rem;">
    <div class="card-body">
      <b>계산서</b><p><hr>
        <div class="row">  
          <div class="col">
            <div class="text-start">총 상품 금액</div><p> 
            <div class="text-start">총 배송비</div><p>
            <div class="text-start"><b>총 결제 금액</b></div> 
           </div> 
           <div class="col">
             <div class="text-end">15000원</div><p>
             <div class="text-end">3000원</div><p>
             <div class="text-end"><b>18000원</b></div><p>
           </div> 
         </div>
   </div><!--계산서카드 바디-->
  </div><!--계산서카드--> <p><p>
  
   <a href="${path}/store/order.jsp"><button type="button" class="btn btn-primary btn-lg">주문하기</button></a>
  
</div><!--그리드--><p>

</div><!--1번 row-->

<div class="row">
  <div class="col-md-5 mr-3">
    <div class="card w-85">


<div class="row"> 
<div class="col text-start">  
<div style="padding-left:5px;">  
 <input class="form-check-input" type="checkbox" name="check" id="flexCheckDefault" value="" aria-label="..." checked="checked"> 
 </div>
</div>  

<div class="col text-end">
 <button type="button" class="btn-close" aria-label="Close"></button>
</div>
</div>
 
<div class="card-body">       
  <div class="col-md-4">
     <img src="../img/A/냥이탁주.jpg" class="rounded float-start" alt="냥이탁주" style="max-width:150px;">
  </div>
       
       <div class="row">
        <div class="col">
        <div class="text-start"><h4><b>냥이탁주</b></h4></div>
      </div>
     </div><p>
     
     <div class="row"> 
     
     <div class="col">
     <input name="items" type="number" class="datail-quantity form-control text-center input-sm" value="1" >
     </div>
      
      <div class="col">
        <div class="text-end">15000원</div>
      </div>   
      </div><hr>
       
       <div class="row">  
               <div class="col">
               <div class="text-start">상품 금액</div><p> 
               <div class="text-start"><b>총 금액</b></div> 
              </div> 
              
              <div class="col">
               <div class="text-end">15000원</div><p> 
               <div class="text-end"><b>15000원</b></div> 
              </div>
           </div>

       </div><!--상품카드바디-->
    </div><!--상품카드-->      
  </div><!--그리드--><p>
</div><!--2번 row-->



 </div><!--form-check -->    

 
</div><!--컨테이너-->



</body>
</html>

<jsp:include page="../common/footer.jsp"/>