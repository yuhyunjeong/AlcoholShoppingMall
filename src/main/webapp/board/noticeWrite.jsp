<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지등록</title>
</head>
<body>
<%@include file="../common/header.jsp"%>

<caption><h2 align="center">공지사항 등록 or 수정 폼</h2></caption>

<form>
<div class="container" style="text-align: center;">

<div class="row m-5">
	<div class="col">
	
	<div class="row m-5">
	    <label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="inputTitle" placeholder="제목을 입력해주세요.">
	    </div>
	 </div>
	 
	 <div class="row m-5">
	    <label for="inputContent" class="col-sm-2 col-form-label">내용</label>
	    <div class="col-sm-10">
	      <textarea class="form-control" id="inputContent" rows="10">내용에 이미지 추가는 어떻게</textarea>
	    </div>
	 </div>
	 
	 <div class="row m-5">
	    <label for="inputFile" class="col-sm-2 col-form-label">첨부파일</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="inputFile" placeholder="첨부파일 가능한가?"> 
	    </div>
	 </div>
	 
	 <div class="row m-5">
	    <label for="date" class="col-sm-2 col-form-label">날짜</label>
	    <div class="col-sm-10">
	      <input type="date" class="form-control" id="date">
	    </div>
	 </div>
	 

		<p>
		
		<div class="row m-5" align="right">
			 <div class="col-sm-10">
				<button type="button" class="btn btn-light" >등록하기</button>
			</div>
			
			<div class="col-sm-2">
				<button type="button" class="btn btn-light" >수정하기</button>
			</div>
		
		</div><p>
		
	</div>
</div>
</form>



</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>