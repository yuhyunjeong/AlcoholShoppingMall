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

<p>

<form>
<div class="container">

<div class="col-12">
  <label for="inputAddress" class="form-label">category</label>
   <select class="form-select form-select-sm" aria-label=".form-select-sm example">
     <option selected>select</option>
     <option value="1">탁주</option>
     <option value="2">청주</option>
     <option value="3">과실주</option>
     <option value="4">증류주</option>
     <option value="5">선물세트</option>
     <option value="6">이달의 술</option>
   </select>
</div><p>


<div class="row">
  <div class="col">
  <label for="inputAddress" class="form-label">상품코드</label>
    <input type="text" class="form-control" placeholder="상품코드" aria-label="First name">
  </div>
  <div class="col">
  <label for="inputAddress" class="form-label">상품이름</label>
    <input type="text" class="form-control" placeholder="상품이름" aria-label="Last name">
  </div>
</div><p>

<div class="col-12">
    <label for="inputAddress" class="form-label">상품설명</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="상품설명">
</div><p>

<div class="row">
  <div class="col">
  <label for="inputAddress" class="form-label">도수</label>
    <input type="text" class="form-control" placeholder="도수" aria-label="First name">
  </div>
  <div class="col">
  <label for="inputAddress" class="form-label">상품가격</label>
    <input type="text" class="form-control" placeholder="상품가격" aria-label="Last name">
  </div>
</div><p>

<div class="row">
 <div class="col">
  <label for="inputAddress" class="form-label">재고량</label>
    <input type="text" class="form-control" placeholder="재고량" aria-label="First name">
 </div>
 <div class="col">
  <label for="inputAddress" class="form-label">등록일</label>
    <input type="text" class="form-control" placeholder="등록일" aria-label="First name">
 </div> 

</form>

<p>
<div align="right">
<button type="button" class="btn btn-light" >등록하기</button>
</div><p>

</div>

</body>
</html>

<jsp:include page="../common/footer.jsp"/>