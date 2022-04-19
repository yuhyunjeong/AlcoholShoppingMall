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
			<form name="writeForm" method="post" action="${path}/front">
				<div class="row mb-5">
					<div class="col">

						<div class="row m-5">
							<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
							<div class="col-sm-10">
								<input type="text" name="qaTitle" class="form-control"
									id="inputTitle" placeholder="제목을 입력해주세요.">
							</div>
						</div>

						<div class="row m-5">
							<label for="inputContent" class="col-sm-2 col-form-label">문의
								내용</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="qaContent"
									id="inputContent" rows="10">내용</textarea>
							</div>
						</div>

						<div class="row m-5">
							<label for="date" class="col-sm-2 col-form-label">날짜</label>
							<div class="col-sm-10">
								<input type="date" class="form-control" name="qaDate" id="date">
							</div>
						</div>

						<div class="row m-5">
							<label for="inputTitle" class="col-sm-2 col-form-label">비밀글 설정</label>
							<div class="col-sm-10">
								<input type="checkbox" name="secret" value="">
							</div>
						</div>


						<p>
						<div class="row m-5" align="right">
							<div class="col-sm-10">
								<button type="submit" class="btn btn-light">등록하기</button>
							</div>

							<div class="col-sm-2">
								<button type="button" class="btn btn-light"
									onclick="location.href='${path}/front?key=qa&methodName=select'">목록</button>
							</div>

						</div>
						<p>
					</div>
				</div>
			</form>
		</div>
	</div>





	<%@include file="../common/footer.jsp"%>
</body>
</html>