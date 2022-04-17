<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지글 보기</title>
</head>
<body>
<%@include file="../common/header.jsp"%>
<caption><h2 align="center">공지사항</h2></caption>


<form>

<div class="col-md-7 col-lg-8" style="float: none; margin:0 auto;">
	<div class="container">
	
		<div class="row mb-5">
			<div class="col">
			
			<div class="row m-5">
			    <label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
			    <div class="col-sm-10">
			      <textarea readonly class="form-control-plaintext" id="inputTitle" >제목갖고와야함</textarea>
			    </div>
			 </div>
			 
			 <div class="row m-5">
			    <label for="inputContent" class="col-sm-2 col-form-label">내용</label>
			    <div class="col-sm-10">
			      <textarea readonly class="form-control-plaintext" id="inputContent" rows="10">내용갖고와야함</textarea>
			    </div>
			 </div>
			 
			 <div class="row m-5">
			    <div class="col-sm-2"></div>
			    <div class="col-sm-10">
				  <label for="formFileDisabled" class="form-label"></label>
				  <input class="form-control" type="file" id="formFileDisabled" disabled>
				</div>
			 </div>
			 
			 <div class="row m-5">
			    <label for="date" class="col-sm-2 col-form-label">작성일</label>
			    <div class="col-sm-10">
			      <input type="date" readonly class="form-control-plaintext" id="date">
			    </div>
			 </div>
			 
		
				<p>
				<div class="row m-5" align="right">
					 <div class="col-sm-12">
						<button type="button" class="btn btn-light"  onclick= "location.href='${path}/front?key=notice&methodName=select'">목록</button>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
</form>



<%@include file="../common/footer.jsp"%>
</body>
</html>