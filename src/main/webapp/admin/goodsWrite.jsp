<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/header.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>

<script type="text/javascript">
	
</script>


</head>
<body>

	<caption>
		<h2 align="center">상품등록</h2>
	</caption>

	<p>
	
	
	<div class="container">

		<form action="${path}/front" method="post">
		
			<div class="col-12">
				<label for="inputAddress" class="form-label">category</label> <select
					class="form-select form-select-sm"
					aria-label=".form-select-sm example" name="category">
					<option selected>select</option>
					<option value="A">탁주</option>
					<option value="B">청주</option>
					<option value="C">과실주</option>
					<option value="D">증류주</option>
					<option value="GIFT">선물세트</option>
					<option value="Monthly">이달의 술</option>
				</select>
			</div>
			<p>
			<div class="row">
				<div class="col">
					<label for="inputAddress" class="form-label">상품코드</label> <input
						type="text" class="form-control" placeholder="상품코드"
						aria-label="First name" name="pCode">
				</div>
				<div class="col">
					<label for="inputAddress" class="form-label">상품이름</label> <input
						type="text" class="form-control" placeholder="상품이름"
						aria-label="Last name" name="pName">
				</div>
			</div>
			<p>
			<div class="col-12">
				<label for="inputAddress" class="form-label">상품설명</label> <input
					type="text" class="form-control" id="inputAddress"
					placeholder="상품설명" name="pDetail">
			</div>
			<p>
			<div class="row">
				<div class="col">
					<label for="inputAddress" class="form-label">도수</label> <input
						type="text" class="form-control" placeholder="도수"
						aria-label="First name" name="pAlcohol">
				</div>
				<div class="col">
					<label for="inputAddress" class="form-label">상품가격</label> <input
						type="text" class="form-control" placeholder="상품가격"
						aria-label="Last name" name="pPrice">
				</div>
			</div>
			<p>
			<div class="row">
				<div class="col">
					<label for="inputAddress" class="form-label">재고량</label> <input
						type="text" class="form-control" placeholder="재고량"
						aria-label="First name" name="pStuck">
				</div>
				<div class="col">
					<label for="inputAddress" class="form-label">등록일</label> <input
						type="date" class="form-control" id="date" name="pDate">
				</div>


				<p>
				<div align="right">
					<input type="hidden" name="key" value="product" /> 
					<input type="hidden" name="methodName" value="insertwrite" />
					<button type="submit" class="btn btn-light" >등록하기</button>

				</div>
				<p>
			</div>
     
          	</form>
     </div>

	
</body>
</html>

<jsp:include page="../common/footer.jsp" />