<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구독</title>
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
        
       
        
          <hr class="my-4">
        	
        <div class="my-3">	
          <div class="card">
          
             <div class="card-body">
	             <div class="row mb-3">
	            	<h4 class="card-title" style="text-align: center;">배송지</h4>
	           	 </div>
            
	            <div class="row mb-3">
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
            
	            <div class="row mb-3">
	              	<label for="email" class="col-sm-2 col-form-label">연락처</label>
		              <div class="col-sm-10">
		             	 <input type="text" class="form-control" id="phone" placeholder="000-0000-0000 방식으로 입력해주세요.">
			              <div class="invalid-feedback">
			                Please enter a valid email address for shipping updates.
			              </div>
		           	 </div>
				</div>

				<div class="row mb-3">
	            
	             	 <label for="address" class="col-sm-2 col-form-label">주소</label>
		              <div class="col-sm-10">
		              	<input type="text" class="form-control" id="address" placeholder="주소를 입력해주세요." required>
			              <div class="invalid-feedback">
			                Please enter your shipping address.
			              </div>
		            </div>
	            </div>

	            <div class="row mb-3">
	              	<label for="address2" class="col-sm-2 col-form-label">상세주소<span class="text-muted">(Optional)</span></label>
		              <div class="col-sm-10">
		              		<input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요.">
		           	 </div>
	             </div>     
        	</div>
          </div>
		</div>
			<p>
			
          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Save this information for next time</label>
          </div>

          <hr class="my-4">

          <h4 class="mb-3" style="text-align: center;">결제 방법</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Credit card</label>
            </div>
            
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>

          <hr class="my-4">
			<h4 class="mb-3" style="text-align: center;">총 결제 금액 : </h4>
		
          <button class="w-100 btn btn-primary btn-lg" type="submit">결제 하기</button>
        </form>
      </div>
    </div>
  </main>
  
  <footer class="my-5 pt-5 text-muted text-center text-small">
  </footer>
  
</div>

<%@include file="../common/footer.jsp"%>
</body>
</html>