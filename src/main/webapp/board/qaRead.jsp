<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<caption>
		<h2 align="center">Q&A</h2>
	</caption>



	<div class="col-md-7 col-lg-8" style="float: none; margin: 0 auto;">
		<div class="container">

			<div class="row mb-5">
				<div class="col">

					<div class="row m-5">
						<label for="inputNumber" class="col-sm-2 col-form-label">글번호</label>
						<div class="col-sm-10">
							<textarea readonly class="form-control-plaintext" id="inputNumber">${qa.qaNumber}</textarea>
						</div>
					</div>

					<div class="row m-5">
						<label for="inputId" class="col-sm-2 col-form-label">작성자</label>
						<div class="col-sm-10">
							<textarea readonly class="form-control-plaintext" id="inputId">${qa.userId}</textarea>
						</div>
					</div>

					<div class="row m-5">
						<label for="inputCategory" class="col-sm-2 col-form-label">카테고리</label>
						<div class="col-sm-10">
							<textarea readonly class="form-control-plaintext" id="inputCategory">${qa.qaCategory}</textarea>
						</div>
					</div>

					<div class="row m-5">
						<label for="inputContent" class="col-sm-2 col-form-label">문의 내용</label>
						<div class="col-sm-10">
							<textarea readonly class="form-control-plaintext" id="inputContent" rows="10">${qa.qaContent}</textarea>
						</div>
					</div>

					<div class="row m-5">
						<label for="date" class="col-sm-2 col-form-label">작성일</label>
						<div class="col-sm-10">${qa.qaDate}</div>
					</div>


					<p>
					<div class="row m-5" align="right">
						<div class="col-sm-10">
							<!-- 수정시 필요한 데이터들을 hidden으로 숨겨놓고 폼 데이터로 보내준다. -->
							<form name="requestForm" method="get"
								action="${path}/board/qaUpdate.jsp">
								<input type=hidden name="qaNumber" value="${qa.qaNumber}">
								<input type=hidden name="qaCategory" value="${qa.qaCategory}">
								<input type=hidden name="qaContent" value="${qa.qaContent}">
								<input type=hidden name="qaDate" value="${qa.qaDate}"> <input
									type=submit class="btn btn-light" value="수정하기">
							</form>
							<!-- 	<button type="button" onclick="location.href='${path}/board/noticeUpdate.jsp'" class="btn btn-light" >수정하기</button> -->
						</div>
						<div class="col-sm-2">
							<button type="button" class="btn btn-light"
								onclick="location.href='${path}/front?key=qa&methodName=select'">목록</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<%@include file="../common/footer.jsp"%>
</body>
</html>