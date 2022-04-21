<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문관리</title>
<style type="text/css">
h1 {
	text-align: center;
	padding: 30px;
}

div {
	text-align: center;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<!-- 배송관리 환불관리 매출통계 눌렀을때 각각 영역 출력 ex)iframe -->

	<h1>주문관리</h1>
	<div class="container">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-10">
				<div class="card mb-4 text-center">
					<div class="card-body">
						<div class="row">

							<div class="col">
								<form action="${path}/front" method="post">
									<input type="hidden" name="key" value="order" /> <!-- Controller를 찾는 정보 -->
									<input type="hidden" name="methodName" value="orderAll" />  <!-- 메소드이름 -->
									<input type="hidden" name="name" value="shipping" />
									<input type=hidden name="userId" value="${loginUser.userId}">
			
									<button type="submit" id="shipping" class="btn btn-link me-10"
										style="text-decoration: none;">배송관리</button>
								</form>
							</div>
							<div class="col">
								<form action="" method="get">
									<input type="hidden" name="name" value="refund" />
									<button type="submit" id="refund" class="btn btn-link me-10"
										style="text-decoration: none;">환불관리</button>
								</form>
							</div>
							<div class="col">
								<form action="" method="get">
									<input type="hidden" name="name" value="sales" />
									<button type="submit" id="sales" class="btn btn-link me-10"
										style="text-decoration: none;">매출통계</button>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-1"></div>
		</div>

<!-- 
		<div class="btn-group" role="group"
			aria-label="Basic outlined example">
			<button type="button" class="btn btn-outline-dark">오늘</button>
			<button type="button" class="btn btn-outline-dark">1주일</button>
			<button type="button" class="btn btn-outline-dark">1개월</button>
			<button type="button" class="btn btn-outline-dark">6개월</button>
			<button type="button" class="btn btn-outline-dark">1년</button>
			<button type="button" class="btn btn-dark">검색</button>
		</div>

	</div>


	일별
	<div class="border border-dark container">
		<div class="row border border-dark ">
			<div class="col-2" style="background: lightgray;">일별</div>
			<div class="col-10" style="background: #ffffff;">
				<div class="row">
					<div class="col-2" style="background: #ffffff;">
						<select class="form-select" aria-label="Default select example">
							<option value="2018">2018년</option>
							<option value="2019">2019년</option>
							<option value="2020">2020년</option>
							<option value="2021">2021년</option>
							<option value="2022">2022년</option>
						</select>
					</div>
					<div class="col-2" style="background: #ffffff;">
						<select class="form-select" aria-label="Default select example">
							<option value="1">1월</option>
							<option value="2">2월</option>
							<option value="3">3월</option>
							<option value="4">4월</option>
							<option value="5">5월</option>
							<option value="6">6월</option>
							<option value="7">7월</option>
							<option value="8">8월</option>
							<option value="9">9월</option>
							<option value="10">10월</option>
							<option value="11">11월</option>
							<option value="12">12월</option>
						</select>
					</div>
					<div class="col-2" style="background: #ffffff;">
						<select class="form-select" aria-label="Default select example">
							<option value="1">1일</option>
							<option value="2">2일</option>
							<option value="3">3일</option>
							<option value="4">4일</option>
							<option value="5">5일</option>
							<option value="6">6일</option>
							<option value="7">7일</option>
							<option value="8">8일</option>
							<option value="9">9일</option>
							<option value="10">10일</option>
							<option value="11">11일</option>
							<option value="12">12일</option>
							<option value="13">13일</option>
							<option value="14">14일</option>
							<option value="15">15일</option>
							<option value="16">16일</option>
							<option value="17">17일</option>
							<option value="18">18일</option>
							<option value="19">19일</option>
							<option value="20">20일</option>
							<option value="21">21일</option>
							<option value="22">22일</option>
							<option value="23">23일</option>
							<option value="24">24일</option>
							<option value="25">25일</option>
							<option value="26">26일</option>
							<option value="27">27일</option>
							<option value="28">28일</option>
							<option value="29">29일</option>
							<option value="30">30일</option>
							<option value="31">31일</option>
						</select>
					</div>
					<div class="col-4" style="background: #ffffff;"></div>
					<div class="col-2" style="background: #ffffff;">
						<button type="button" class="btn btn-dark">검색</button>
					</div>
				</div>
			</div>

			주별
			<div>
			<div class="row border border-dark">
				<div class="col-2" style="background: lightgray;">주별</div>
				<div class="col-10" style="background: #ffffff;">
					<div class="row">
						<div class="col-2" style="background: #ffffff;">
							<span>최근</span>
						</div>
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option value="1">1주</option>
								<option value="2">2주</option>
								<option value="3">3주</option>
								<option value="4">4주</option>
								<option value="5">5주</option>
								<option value="6">6주</option>
							</select>
						</div>
						<div class="col-6" style="background: #ffffff;"></div>
						<div class="col-2" style="background: #ffffff;">
							<button type="button" class="btn btn-dark">검색</button>
						</div>
					</div>
				</div>
			</div>
			</div>

			월별
			<div>
			<div class="row border border-dark">
				<div class="col-2" style="background: lightgray;">월별</div>
				<div class="col-10" style="background: #ffffff;">
					<div class="row">
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option value="2018">2018년</option>
								<option value="2019">2019년</option>
								<option value="2020">2020년</option>
								<option value="2021">2021년</option>
								<option value="2022">2022년</option>
							</select>
						</div>
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option value="1">1월</option>
								<option value="2">2월</option>
								<option value="3">3월</option>
								<option value="4">4월</option>
								<option value="5">5월</option>
								<option value="6">6월</option>
								<option value="7">7월</option>
								<option value="8">8월</option>
								<option value="9">9월</option>
								<option value="10">10월</option>
								<option value="11">11월</option>
								<option value="12">12월</option>
							</select>
						</div>
						<div class="col-2" style="background: #ffffff;">~</div>
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option value="2018">2018년</option>
								<option value="2019">2019년</option>
								<option value="2020">2020년</option>
								<option value="2021">2021년</option>
								<option value="2022">2022년</option>
							</select>
						</div>
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option value="1">1월</option>
								<option value="2">2월</option>
								<option value="3">3월</option>
								<option value="4">4월</option>
								<option value="5">5월</option>
								<option value="6">6월</option>
								<option value="7">7월</option>
								<option value="8">8월</option>
								<option value="9">9월</option>
								<option value="10">10월</option>
								<option value="11">11월</option>
								<option value="12">12월</option>
							</select>
						</div>
						<div class="col-2" style="background: #ffffff;">
							<button type="button" class="btn btn-dark">검색</button>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	</div>
 -->
	<hr>

<%-- 	<c:choose>
		<c:when test="${param.name == 'shipping' }">
			<jsp:include page="${path}/admin/shipping.jsp" />
		</c:when>
		<c:when test="${param.name == 'refund'}">
			<jsp:include page="${path}/admin/refund.jsp" />
		</c:when>
		<c:when test="${param.name == 'sales'}">
			<jsp:include page="${path}/admin/sales.jsp" />
		</c:when>
		<c:otherwise>
			<div></div>
		</c:otherwise>
	</c:choose> --%>



	<jsp:include page="../common/footer.jsp" />
</body>
</html>