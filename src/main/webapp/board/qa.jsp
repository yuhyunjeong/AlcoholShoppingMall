<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
<style type="text/css">
h1 {
	text-align: center;
}

div {margin 100px;
	
}
</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<h1>Q&A</h1>

	<div class="col-sm-6, container">
		<div class="d-grid gap-2 d-md-block">
			<a class="btn btn-primary" href="${path}/board/noticeWrite.jsp"
				role="button" value="등록하기">등록하기</a>
		</div>
		<p>
		<form name="qa" method="post" action="${path}/board/qa.jsp"
			style="text-align: center;">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">글번호</th>
						<th scope="col">작성자</th>
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
						<th scope="col">
							<button type="button" class="btn btn-primary btn-sm" id="delete">
								삭제</button>
						</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${noticeList}" var="notice">
						<tr>
							<th scope="row">${notice.noNumber}</th>
							<td><a
								href="${path}/front?key=notice&methodName=selectByNoticeNum&noNumber=${notice.noNumber}">${notice.noTitle}</a></td>

							<td>${notice.noDate}</td>
							<td>${notice.viewCount}</td>
							<td><input type="checkbox" name="delete" value=""></td>
						</tr>
					</c:forEach>



				</tbody>
			</table>
		</form>
	</div>

	<%@include file="../common/footer.jsp"%>
</body>
</html>