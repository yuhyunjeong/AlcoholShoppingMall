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

</head>
<body>
<caption><h2 align="center">상품관리</h2></caption>

<p>


<div class="container">
<div align=left >
<button type="button" class="btn btn-light" >등록하기</button>
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
<th><a href="${path}/#"><button type="button" class="btn btn-sm btn-dark">삭제</button></a></th>
</tr>


<c:choose>
  <c:when test="${empty requestScope.list}">
     <p align="center">등록된 상품이 없습니다</p>
  </c:when>

<c:forEach items="${requestScop.list}" var="cartDto">
  <td>
  <p><fmt:formatNumber value="${cartDto.cartNo}"/></p>
</td>
<td>
  <p>${cartDto.userId}</p>
</td>
<td>
  <p>${cartDto.pCode}</p>
</td>
<td>
  <p><fmt:formatNumber value="${cartDto.cartCount"}/></p>
</td>
  
  
</c:forEach>
</c:choose>

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