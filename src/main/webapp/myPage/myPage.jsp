<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<caption><h2 align="center">마이페이지</h2></caption>

<div class="container">

	<div class="row">
		<div class="col-1"></div>
		<div class="col-10">
			<div class="card mb-4 text-center" >
			  <div class="card-body">
			    <div class="row" >
					<div class="col-2  text-center">
						<b>아이디</b> 님
					</div>
					<div class="col-3">
						<span>구독상태</span>   <span><a href = "#" style="text-decoration: none;">구독 고민중</a></span><br>
						<span>잔여 적립금</span> <span><a href = "#" style="text-decoration: none;">3000</a></span><br>
						<span>잔여 쿠폰</span>   <span><a href = "#" style="text-decoration: none;">2</a></span>
					</div>
					<div class="col-7  text-center">
						<button type="button" class="btn btn-link me-10" style="text-decoration: none;">주문내역</button><button type="button" class="btn btn-link" style="text-decoration: none;">회원정보</button>
					</div>
				</div>
			  </div>
			</div>
		</div>	
		<div class="col-1"></div>
	</div>
	<hr>

</div>







<jsp:include page="../common/footer.jsp"/>
이름 구독상태 잔여적립금 잔여쿠폰  주문내역 회원정보<p>

(주문내역, 회원정보 눌렀을때 각각 영역 출력 ex)iframe
</body>
</html>