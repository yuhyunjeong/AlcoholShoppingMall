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
						<!-- <div class="row">
							<div class="col-12  text-center">
								<button type="button" class="btn btn-link me-10"
									style="text-decoration: none;">배송통계</button>
								<button type="button" class="btn btn-link me-10"
									style="text-decoration: none;">환불관리</button>
								<button type="button" class="btn btn-link me-10"
									style="text-decoration: none;">매출통계</button>
							</div>
						</div> -->
						<div class="row">

							<div class="col">
								<form action="" method="get">
									<input type="hidden" name="name" value="shipping" />
									<button type="submit" id="shipping" class="btn btn-link me-10"
										style="text-decoration: none;">배송통계</button>
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

		<!-- 일별 -->
		<div class="border border-dark container">
			<div class="border border-dark row">
				<div class="col-2" style="background: lightgray;">일별</div>
				<div class="col-10" style="background: #ffffff;">
					<div class="btn-group" role="group"
						aria-label="Basic outlined example">
						<button type="button" class="btn btn-outline-dark">오늘</button>
						<button type="button" class="btn btn-outline-dark">1주일</button>
						<button type="button" class="btn btn-outline-dark">1개월</button>
						<button type="button" class="btn btn-outline-dark">6개월</button>
						<button type="button" class="btn btn-outline-dark">1년</button>
					</div>

					<button type="button" class="btn btn-primary">Primary</button>

				</div>
			</div>

			<!-- 주별 -->
			<div class="row border border-dark" style="">
				<div class="col-2" style="background: lightgray;">주별</div>
				<div class="col-10" style="background: #ffffff;">
					<div class="row">
						<div class="col-2" style="background: #ffffff;">
							<span>최근</span>
						</div>
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option selected>Open this select menu</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="col-6" style="background: #ffffff;"></div>
						<div class="col-2" style="background: #ffffff;">
							<button type="button" class="btn btn-primary">Primary</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 월별 -->
			<div class="row border border-dark">
				<div class="col-2" style="background: lightgray;">월별</div>
				<div class="col-10" style="background: #ffffff;">
					<div class="row">
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option selected>Open this select menu</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option selected>Open this select menu</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="col-2" style="background: #ffffff;">~</div>
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option selected>Open this select menu</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="col-2" style="background: #ffffff;">
							<select class="form-select" aria-label="Default select example">
								<option selected>Open this select menu</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="col-2" style="background: #ffffff;">
							<button type="button" class="btn btn-primary">Primary</button>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>


	<hr>

	<c:choose>
		<c:when test="${param.name == 'shipping' }">
			<jsp:include page="../admin/shipping.jsp" />
		</c:when>
		<c:when test="${param.name == 'refund'}">
			<jsp:include page="../admin/refund.jsp" />
		</c:when>
		<c:when test="${param.name == 'sales'}">
			<jsp:include page="../admin/sales.jsp" />
		</c:when>
		<c:otherwise>
			<div></div>
		</c:otherwise>
	</c:choose>



	<jsp:include page="../common/footer.jsp" />
</body>
</html>