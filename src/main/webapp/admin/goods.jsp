<%@page import="alcohol.mvc.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>

<style type="text/css">
button {
	border: none;
}

.table {
	text-align: center;
}
</style>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>

<script type="text/javascript">

$(function(){
	//삭제하기
		$(document).on("click", "[value=삭제]" , function(){
			//alert( $(this).attr("name")) 
			 $.ajax({
				url : "../ajax", //서버요청주소
				type : "post", //요청방식(method방식 : get | post | put | delete )
				dataType : "text", //서버가 보내온 데이터(응답)타입(text | html | xml | json )
				data : { key : "product" , methodName : "delete" , pCode : $(this).attr("name") } , // serialize()는 폼전송 하는 기능 
				success : function(result) {//성공했을때 실행할 함수 
                  if (result == 0) {
					  
					} else {
						select(); //화면갱신 
					}
				},

				error : function(err) { //실팽했을때 실행할 함수 
					alert(err + "에러 발생했어요.");
				}
			});//ajax */

		});

		select();
  });

</script>

</head>
<body>
	<caption>
		<h2 align="center">상품관리</h2>
	</caption>

	<p>
	<div class="container">
		<div align=left>
			<a href="${path}/admin/goodsWrite.jsp">
			<button type="button" class="btn btn-light">등록하기</button></a>
		</div>
	</div>
	<p>
	<div class="container">
		<!-- 전체 컨테이너의 절반 크기로 띄우게 됨 -->

	
		<table class="table table-sm">
			<thead class="table-light">
				<tr>
					<th scope="col">카테고리</th>
					<th scope="col">상품코드</th>
					<th scope="col">상품이름</th>
					<th scope="col">상품설명</th>
					<th scope="col">도수</th>
					<th scope="col">상품가격</th>
					<th scope="col">재고수량</th>
					<th scope="col">등록일</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${list}" var="product">
					<tr>
						<th scope="row">${product.cateCode}</th>
						<%-- <td>${product.cateCode}</td> --%>
						<td>${product.pCode}</td>
						<td>${product.pName}</td>
						<td>${product.pDetail}</td>
						<td>${product.pAlcohol}</td>
						<td>${product.pPrice}</td>
						<td>${product.pStuck}</td>
						<td>${product.pDate}</td>
						
						<td>
						<input type="button" class="btn" name="${product.pCode}" value="삭제">
						</td>
					    
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
	
	</div>


</body>
</html>

<jsp:include page="../common/footer.jsp" />