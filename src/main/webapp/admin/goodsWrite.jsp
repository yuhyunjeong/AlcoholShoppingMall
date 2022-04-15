<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="../common/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>

</head>
<body>
<caption><h2 align="center">상품등록</h2></caption>

<table border="1" width="500" height="50" align="center" cellspacing="5">
<tr>
 <td>카테고리</td>
 <td colspan="2">
<select class="form-select form-select-sm" aria-label=".form-select-sm example">
  <option selected>select</option>
  <option value="1">탁주</option>
  <option value="2">청주</option>
  <option value="3">과실주</option>
  <option value="4">증류주</option>
  <option value="5">선물세트</option>
  <option value="6">이달의 술</option>
</select>
 </td>
</tr>



<tr>
<td>상품코드</td>
<td colspan="2"><input type="text"></td>
</tr>
<tr>
<td>상품이름</td>
<td colspan="2"><input type="text"></td>
</tr>
<tr>
<td>도수</td>
<td colspan="2"><input type="text"> %</td>
</tr>
<tr>
<td>상품가격</td>
<td colspan="2"><input type="text"> 원</td>
</tr>
<tr>
<td>재고수량</td>
<td colspan="2"><input type="text"> 개</td>
</tr>
<tr>
<td>등록일</td>
<td colspan="2"><input type="text"></td>
</tr>



</tr>



</table>


<div align="right">
<button type="button" class="btn btn-light" >등록하기</button>
</div><p>



</body>
</html>

<jsp:include page="../common/footer.jsp"/>