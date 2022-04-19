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
			<a class="btn btn-primary" href="${path}/board/qaWrite.jsp"
				role="button" value="등록하기">등록하기</a>
		</div>
		<p>
		<form name="qa" method="post" action="${path}/board/qaRead.jsp"
			style="text-align: center;">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">글번호</th>
						<th scope="col">작성자</th>
						<th scope="col">카테고리</th>
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
						<th scope="col">
							<button type="button" class="btn btn-primary btn-sm" id="delete">
								삭제</button>
						</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${qaList}" var="qa">
						<tr>
							<th scope="row">${qa.qaNumber}</th> 
							<td>${qa.userId}</td>
							<td>${qa.qaTitle }</td>
							<td><a
								href="${path}/front?key=qa&methodName=selectByQANum&qaNumber=${qa.qaNumber}">${qa.qaContent}</a>
							</td>
							<td>${qa.qaDate}</td>
							<td><input type="checkbox" name="delete" value=""></td>
						</tr>
					</c:forEach>

					<!-- 페이징처리 -->
					<jsp:useBean class="alcohol.mvc.paging.PageCnt" id="p" />
					<nav class="pagination-container">
						<div class="pagination">
							<c:set var="doneLoop" value="false" />
							<c:set var="temp" value="${(pageNo-1) % p.blockcount}" />
							<c:set var="startPage" value="${pageNo - temp}" />

							<c:if test="${(startPage-p.blockcount) > 0 }">
								<a class="pagination-newer"
									href="${path}/front?key=qa&methodName=select&pageNo=${startPage-1}">PREV</a>
							</c:if>

							<span class="pagination-inner"> <c:forEach var='i'
									begin='${startPage}' end='${(startPage-1) + p.blockcount}'>
									<c:if test="${(i-1) >= p.pageCnt}">
										<c:set var="doneLoop" value="true" />
									</c:if>
									<c:if test="${not doneLoop}">
										<a class="${i==pageno?'pagination-active':page}"
											href="${path}/front?key=qa&methodName=select&pageNo=${i}">${i}</a>
									</c:if>
								</c:forEach>

							</span>

							<c:if test="${(startPage+p.blockcount)<=p.pageCnt}">
								<a class="pagination-older"
									href="${path}/front?key=qa&methodName=select&pageNo=${startPage+p.blockcount}">NEXT</a>
							</c:if>

						</div>
					</nav>

				</tbody>
			</table>
		</form>
	</div>

	<%@include file="../common/footer.jsp"%>
</body>
</html>