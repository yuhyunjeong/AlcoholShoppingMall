<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구독</title>
<style type="text/css">
html,body{
	height: 100%;
}
</style>
</head>
<body>
<%@include file="../common/header.jsp"%>

<div class="container">
	<main>
    <div class="py-5 text-center">
      <h1>정기구독</h1>     
    </div>
	
	
	

    
        
      <div class="col-md-7 col-lg-8" style="float: none; margin:0 auto;"> <!-- 가운데 정렬 -->
               
        <form class="needs-validation" novalidate>
          <div class="container">
           <div class="row mb-5">
           		<div class="col">
           			<div class="row mb-5">
           			<h4>구독할 개수</h4>
           			</div>
           			<div class="row mb-5">
	           			<div class="col">
		           			<p class="text-start" >구독료</p>
		           			<p class="text-start" >개수</p>
	           			</div>
	           			<div class="col">
		           			<p class="text-end" >29,000원</p>       			
		           			<p class="text-end" ><input name="items" type="number" class="datail-quantity form-control text-center input-sm" value="1" ></p>
	           			</div>
	           			
           			</div>
           			<div class="row">
	           			<div class="col">
								<h4>총 구독료 : </h4>
						</div>
						<div class="col">
								<h4 class="text-end" >87,000원</h4>
						</div>
					</div>
           		</div>
				
				<div class="col" >
					<img src="../img/4월의 술2.jpg" class="rounded float-end" style="width: 300px; height: 200px">
				</div>
								
			</div>
			
			<hr class="my-5">
			<div class="row">
				
			</div>
           </div>
          
        	
        <div class="my-4">	
          <div class="card">
          
             <div class="card-body">
               <div class="container">
	             <div class="row my-4">
	            	<h4 class="card-title" style="text-align: center;">배송지</h4>
	           	 </div>
            
	            <div class="row m-4">
	             	 <label for="username" class="col-sm-2 col-form-label">수령인</label>
		              <div class="col-sm-10">
			              <div class="input-group has-validation">              
			                	<input type="text" class="form-control" id="username" placeholder="이름을 입력해주세요." required>
				                <div class="invalid-feedback">
				                 이름을 입력해주세요.
				                </div>
			              </div>
		          	  </div>
				</div>
            
	            <div class="row m-4">
	              	<label for="email" class="col-sm-2 col-form-label">연락처</label>
		              <div class="col-sm-10">
		             	 <input type="text" class="form-control" id="phone" placeholder="000-0000-0000 방식으로 입력해주세요.">
			              <div class="invalid-feedback">
			                Please enter a valid email address for shipping updates.
			              </div>
		           	 </div>
				</div>

				<div class="row m-4">
	            
	             	 <label for="address" class="col-sm-2 col-form-label">주소</label>
		              <div class="col-sm-10">
		              	<input type="text" class="form-control" id="address" placeholder="주소를 입력해주세요." required>
			              <div class="invalid-feedback">
			                Please enter your shipping address.
			              </div>
		            </div>
	            </div>

	            <div class="row m-4">
	              	<label for="address2" class="col-sm-2 col-form-label">상세주소<span class="text-muted">(Optional)</span></label>
		              <div class="col-sm-10">
		              		<input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요.">
		           	 </div>
	             </div>     
        	  </div>
        	</div>
          </div>
		</div>
			<p>


          <hr class="my-5">
          <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100 my-5">
             <div class="col-md-offset-4 col-md-4">
			  	<div class="card" style="width: 18rem;">
          
            	 <div class="card-body">
              
             		<div class="row">
             		
	            		<h4 class="card-title" style="text-align: center;">결제방법</h4>
	            	
	           		 </div>
             
		         	 <div class="my-3" >
		           		 <div class="form-check">
		             		 <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
		             	 	<label class="form-check-label" for="credit">Credit card</label>
		           		 </div>
		            
		         	  </div>
		         	</div>
		         </div>
		        </div>
		     </div>
		     </div>        

          <hr class="my-5">
          
          <div class="d-grid gap-2 col-6 mx-auto">
			<h4  class="mb-3" style="text-align: center;">총 결제 금액 : 87,000원</h4>
          	<button class="btn btn-primary btn-lg" type="submit">결제 하기</button>
          </div>
          
        </form>
      </div>
    </div>
  </main>
  
  <footer class="my-5 pt-5 text-muted text-center text-small"></footer>
  
</div>

<%@include file="../common/footer.jsp"%>
</body>
</html>