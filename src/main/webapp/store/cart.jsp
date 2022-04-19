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

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
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
</script>

</head>
<body>
	<%-- 
1) <c:forEach></c:forEach>

2) ajax 
--%>

	<h2 align="center">장바구니</h2>
	<p>
	<div class="container" style="padding-left: 250px;">

		<div class="row">

			<div class="col">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="flexCheckDefault" checked="checked" name="chk"> <label
						class="form-check-label" for="flexCheckDefault">전체선택</label>

				</div>
			</div>


			<div class="row">
                    
				<div class="col-md-5 mr-3">

					<c:forEach items="${cartList}" var="cartList" varStatus="status">

						<div class="card w-85">
							<div class="row">
								<div class="col text-start">
									<div style="padding-left: 5px;">
										<input class="form-check-input" type="checkbox"
											id="flexCheckDefault" value="" aria-label="..."
											checked="checked" name="chk">
									</div>
								</div>

								<div class="col text-end">
									<button type="button" class="btn-close" aria-label="Close"></button>
								</div>
							</div>

							<div class="card-body">
								<div class="col-md-4">
									<img
										src="${path}/img/${proList[status.index].cateCode}/${proList[status.index].pImage}.jpg"
										class="rounded float-start" style="max-width: 150px;">
								</div>

								<div class="row">
									<div class="col">
										<div class="text-start">
											<h4>
												<b>${proList[status.index].pName}</b>
											</h4>
										</div>
									</div>
								</div>
								<p>
								
								<div class="row">

									<div class="col">
										<div class="text-end">
											<input type="number" name="count"
												value="${cartList.cartCount}" min="1" max="99">개
										</div>
									</div>
								</div>
								<hr>


								<div class="row">
									<div class="col">
										<div class="text-start">상품 금액</div>
										<p>
										<div class="text-start">
											<b>총 금액</b>
										</div>
									</div>

									<div class="col">
										<div class="text-end">
											<fmt:formatNumber value="${proList[status.index].pPrice}"
												pattern="###,###" />
											원
										</div>
										<p>
										<div class="text-end">
											<b><fmt:formatNumber value="" pattern="###,###" />원</b>
										</div>
									</div>
								</div>

							</div>
							<!--상품카드바디-->
						</div>
						<p>
							<!--상품카드-->
					</c:forEach>
					
					
					
				</div><!--col-md-5 mr-3 -->

				<div class="col-md-offset-2 col-md-4">
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
										<fmt:formatNumber value="${cart.totalprice}" pattern="###,###" />
										원
									</div>
									<p>
									<div class="text-end">
										<fmt:formatNumber value="${cart.charge}" pattern="###,###" />
										원
									</div>
									<p>
									<div class="text-end">
										<b><fmt:formatNumber value="${cart.total}"
												pattern="###,###" />원</b>
									</div>
									<p>
								</div>
							</div>
						</div>
						<!--계산서카드 바디-->
					</div><p><p>
					<!--계산서카드-->
					<a href="${path}/store/order.jsp?type=order&title=구매하기">
					<button type="submit" class="btn btn-primary btn-lg">주문하기</button></a>
					</div>
					
					
    
                </div>  
				<!--row 그리드-->
				
			</div>
			<!-- 카드row -->

		</div>
		<!--전체row-->

	</div>
	<!--컨테이너-->

</body>
</html>

<jsp:include page="../common/footer.jsp" />