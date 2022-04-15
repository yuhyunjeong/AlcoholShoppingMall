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
	
	div {
		margin 100px;
		
	}
</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<h1>Q&A</h1>

	<div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>이수빈</td>
					<td><a href="#">Sample Data</a></td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>이수빈</td>
					<td><a href="#">Sample Data2</a></td>
				</tr>

			</tbody>
		</table>
	</div>




	<%@include file="../common/footer.jsp"%>
</body>
</html>