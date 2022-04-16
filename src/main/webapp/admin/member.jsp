<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<style type="text/css">
	li.open > a > span {
  	border-top: 0px !important;
  	border-bottom: 4px dashed !important;
}

</style>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>

<script type="text/javascript">



</script>

</head>
<body>
<jsp:include page="../common/header.jsp"/>
	<caption><h2 align="center">회원관리</h2></caption>
	
<div class="container ">
	<div class="row">
		<div class="col">
			<input class="btn btn-primary" type="button" value="등록하기">
		</div>
	</div>
	<form>
	<div class="row mb-3">
		<div class="col">
			<table class="table text-center">
			  <thead>
			    <tr>
			      <th scope="col">등록일</th>
			      <th scope="col">아이디</th>
			      <th scope="col">이름</th>
			      <th scope="col">연락처</th>
			      <th scope="col">총 주문 금액</th>
			      <th scope="col">등급</th>
			      <th scope="col">
			      <button type="button" class="btn btn-secondary btn-sm" id="coupon" data-bs-toggle="modal" data-bs-target="#exampleModal">
  					쿠폰 지급
				  </button>
				  <!-- Modal -->
				  
				  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				    <div class="modal-dialog modal-sm">
				      <div class="modal-content">
				        <div class="modal-header">
				          <h5 class="modal-title" id="exampleModalLabel">쿠폰지급</h5>
				          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				        </div>
				        
				        <div class="modal-body">
					        <div class="col mt-3 text-center">
					        <b>지급할 쿠폰 종류</b><br>
					          <select name="coupon">
							     <option value="쿠폰번호 입력하자 난수발생후 하면될듯하다" >생일쿠폰</option>
							     <option value="쿠폰번호 입력하자 난수발생후 하면될듯하다">5000원 할인 쿠폰</option>
							     <option value="쿠폰번호 입력하자 난수발생후 하면될듯하다">생일쿠폰2</option>
							  </select><br>
							</div> 
							<div class="col mt-3 text-center">
							<b>지급할 쿠폰 수</b> 
							<input name="items" type="number" class="datail-quantity form-control text-center input-sm" value="1" >
							</div>
						  
						  
				        </div>
				        <div class="modal-footer">
				          <input type="hidden" name="" value="">
				          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
				          <button type="submit" class="btn btn-primary">Submit</button>
				        </div>
				        
				      </div>
				    </div>
				  </div>
				  
		        </th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">2022-04-14</th>
			      <td>kim</td>
			      <td>피카츄</td>
			      <td>010-2222-2222</td>
			      <td>20000</td>
			      <td>회원</td>
			      <td><input type="checkbox"  name="couponcheck" value="Mark"></td>
			    </tr>
			    <tr>
			      <th scope="row">2022-04-14</th>
			      <td>jeong</td>
			      <td>파이리</td>
			      <td>010-3333-3333</td>
			      <td>40000</td>
			      <td>회원</td>
			      <td><input type="checkbox"  name="couponcheck" value="Otto"></td>
			    </tr>
			    
			  </tbody>
			</table>
		</div>
		
	</div>
	</form>
</div>



<jsp:include page="../common/footer.jsp"/>

</body>
</html>