<%@page import="alcohol.mvc.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
   <jsp:include page="../common/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>

<style type="text/css">

button{border:none; }

.table{text-align: center;}

</style>

<script type="text/javascript">

</script>

</head>
<body>
<caption><h2 align="center">상품관리</h2></caption>

<p>


<div class="container">
<div align=left >
 <a href="${path}/admin/goodsWrite.jsp"><button type="button" class="btn btn-light" >등록하기</button></a>
</div>
</div>
<p>


<div class="container"><!-- 전체 컨테이너의 절반 크기로 띄우게 됨 -->
      
      
<table class="table table-sm">
<thead class="table-light">
<tr> 
<th>카테고리</th>
<th>상품코드</th>
<th>상품이름</th>
<th>상품설명</th>
<th>도수</th>
<th>상품가격</th>
<th>재고수량</th>
<th>등록일</th>
<th><a href="${path}/store/goods.jsp"><button type="button" class="btn btn-sm btn-dark">삭제</button></a></th>
</tr>


<c:forEach items="${list}" var="product">
 <tr>
  <td>${product.cateCode}</td>
  <td>${product.pCode}</td>
  <td>${product.pName}</td>
  <td>${product.pDetail}</td>
  <td>${product.pAlcohol}</td>
  <td>${product.pPrice}</td>
  <td>${product.pStuck}</td>
  <td>${product.pDate}</td>
 </tr> 
</c:forEach>

<div>
  <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
</div>
</td>

</tr>


</thead>
</table>

</div>


</body>
</html>

<jsp:include page="../common/footer.jsp"/>