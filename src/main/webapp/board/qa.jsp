<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QA</title>
<script type="text/javascript" src="${path}/js/jquery-3.6.0.min.js"></script>
<style type="text/css">
h1 {
	text-align: center;
}

div {margin 100px;
	
}
</style>
<script type="text/javascript">
$(function(){
	function selectAll(){
		$.ajax({
   			url :"../ajax" , //서버요청주소
   			type:"post", //요청방식(method방식 : get | post | put | delete )
   			dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
   			data: {key :"qa", methodName:"select"},
   			success :function(result){
   				
   				alert(result)
   				let str ="";
   				$.each(result, function(index, item) {

   					str += "<tr>";
					str += `<th scope='row'>${item.qaNumber}</th>`;
					str += `<td>${item.userId}</td>`;
					str += `<td>${item.qaTitle}</td>`;
					str += `<td><a href='${path}/front?key=qa&methodName=selectByQANum&qaNumber=${"${item.qaNumber}"}'>${'${item.qaContent}'}</a></td>`;
					str += `<td>${item.qaDate}</td>`;
					str += "</tr>"
   				});
   				//$("rrr").remove();

   				$("#qaTable tr:gt(0)").remove();
				$("#qaTalbe tr:eq(0)").after(str);
					
   			},error : function(err){  
   				alert(err+"에러 발생했어요.");
   			}  //실팽했을때 실행할 함수 
   		});		
	}
	
	
	
	
	
	

	function qaFilter(v){

		$.ajax({
   			url :"../ajax" , //서버요청주소
   			type:"post", //요청방식(method방식 : get | post | put | delete )
   			dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
   			data: {key :"qa", methodName:"selectFilter", cate : v},
   			success :function(result){
   				alert("success");
   				let str ="";
   				$.each(result, function(index, item) {
   					str += "<tr>";
					str += `<th scope='row'>${'${item.qaNumber}'}</th>`;
					str += `<td>${'${item.userId}'}</td>`;
					str += `<td>${'${item.qaTitle}'}</td>`;
					str += `<td><a href='${path}/front?key=qa&methodName=selectByQANum&qaNumber=${"${item.qaNumber}"}'>${'${item.qaContent}'}</a></td>`;
					str += `<td>${'${item.qaDate}'}</td>`;
					str += "</tr>"
   				});
   				//$("rrr").remove();

   				$("#qaTable tr:gt(0)").remove();
				$("#qaTalbe tr:eq(0)").after(str);
					
   			},error : function(err){  
   				alert(err+"에러 발생했어요.");
   			}  //실팽했을때 실행할 함수 
   		});	
	}//function 끝
	
	
	selectAll();
	
	
	$("[name=btn]").click(function(){
		qaFilter($(this).val());
	})
	
})//jQuery끝
	
</script>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<h1>QA</h1>
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
				role="button" >등록하기</a>
		</div>
		<p>
		<%-- <form name="qa" method="post" action="${path}/board/qaRead.jsp" style="text-align: center;"> --%>
			<table class="table table-hover" id="qaTable" cellspacing="0">
					<tr>
						<th scope="col">글번호</th>
						<th scope="col">작성자</th>
						<th scope="col">카테고리</th>
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
					</tr>
			</table>
		<!-- </form> -->
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
	</div>

	<%@include file="../common/footer.jsp"%>
</body>
</html>