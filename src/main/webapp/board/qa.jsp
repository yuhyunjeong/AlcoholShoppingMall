<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
<script type="text/javascript" src="${path}/js/jquery-3.6.0.min.js"></script>
<style type="text/css">
h1 {
	text-align: center;
}

div {
	margin 100px;
	
}
</style>
<script type="text/javascript">
	$(function() {
		
		function qaFilter(v){	

			$.ajax({
	   			url :"${pageContext.request.contextPath}/ajax" , //서버요청주소
	   			type:"post", //요청방식(method방식 : get | post | put | delete )
	   			dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
	   			data: {key :"qa", methodName:"selectFilter", cate:v},
	   			success :function(result){//map이나옴

					let str = "";
					$.each(result, function(index, item) { // item이 customer 
						str += "<tr>";
						str += `<th scope="row">${'${item.qaList.qaNumber}'}</th>`;
						str += `<td>${'${item.qaList.userId}'}</td>`;
						str += `<td>${'${item.qaList.qaTitle}'}</td>`;
						str += `<td><a href='${path}/front?key=qa&methodName=selectByQANum&qaNumber=${"${item.qaList.qaNumber}"}'>${'${item.qaList.qaContent}'}</a></td>`;
						str += `<td>${'${item.qaList.qaDate}'}</td>`;
						str += "</tr>"
						str +="나오냐"
					});	
					$("#qaTable").remove();
					$("#qaTalbe").append(str);
					
					
				}, // 성공했을 때 실행할 함수 
				error : function(err) {
					alert(err + " 에러가 발생했어요.");
				}// 실패했을 때 실행할 함수  
	   			
			})
		}
		$("[name=btn]").click(function(){
			qaFilter($(this).val());
			$("#test").html($(this).val());
		})

	});

	
</script>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<h1>Q&A</h1>
	<nav class="navbar navbar-expand-lg navbar-light bg-white container">
		<div class="container-fluid">
			<div class="collapse navbar-collapse " id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">

						<button type="button" class="btn btn-link-light"
							style="text-decoration: none;" value="1" name=btn>1.상품문의</button>
					</li>
					<li class="nav-item">
						<button type="button" class="btn btn-link-light"
							style="text-decoration: none;" value="2" name=btn>2.결제/환불/교환
							문의</button>
					</li>
					<li class="nav-item">
						<button type="button" class="btn btn-link-light"
							style="text-decoration: none;" value="3" name=btn>3.쿠폰/포인트
							문의</button>
					</li>
					<li class="nav-item">
						<button type="button" class="btn btn-link-light"
							style="text-decoration: none;" value="4" name=btn>4.기타문의</button>
					</li>
				</ul>


			</div>
		</div>
	</nav>

	<div class="col-sm-6, container">
		<div class="d-grid gap-2 d-md-block">
			<a class="btn btn-primary" href="${path}/board/qaWrite.jsp"
				role="button">등록하기</a>
		</div>
		<p>
	</div>

			<table class="table table-hover">
			<thead>
					<tr>
						<th scope="col">글번호</th>
						<th scope="col">작성자</th>
						<th scope="col">카테고리</th>
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
					</tr>
			</thead>
			<tbody id= "qaTable">
			
			</tbody>
			</table>

	
	<!-- 페이징처리 -->
	<jsp:useBean class="alcohol.mvc.paging.PageCnt" id="p" />
	<nav class="pagination-container">
		<div class="pagination">
			<c:set var="doneLoop" value="false" />
			<c:set var="temp" value="${(pageNo-1) % p.blockcount}" />
			<c:set var="startPage" value="${pageNo - temp}" />

			<c:if test="${(startPage-p.blockcount) > 0 }">
				<a class="pagination-newer" href="${path}/front?key=qa&methodName=select&pageNo=${startPage-1}">PREV</a>
			</c:if>

			<span class="pagination-inner"> 
				<c:forEach var='i' begin='${startPage}' end='${(startPage-1) + p.blockcount}'>
					<c:if test="${(i-1) >= p.pageCnt}">
						<c:set var="doneLoop" value="true" />
					</c:if>
					<c:if test="${not doneLoop}">
						<a class="${i==pageno?'pagination-active':page}" href="${path}/front?key=qa&methodName=select&pageNo=${i}">${i}</a>
					</c:if>
				</c:forEach>

			</span>

			<c:if test="${(startPage+p.blockcount)<=p.pageCnt}">
				<a class="pagination-older" href="${path}/front?key=qa&methodName=select&pageNo=${startPage+p.blockcount}">NEXT</a>
			</c:if>

		</div>
	</nav>
<%@include file="../common/footer.jsp"%>
</body>
</html>