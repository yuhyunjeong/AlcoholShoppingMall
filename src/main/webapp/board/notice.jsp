<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style type="text/css">
a:link , a:visited{
	text-decoration: none;
}
 a:hover {
	font-weight: bold;
}
</style>

</head>
<body>
<%@include file="../common/header.jsp"%>

<div class="container" style="text-align: center;">
	<h1>공지사항</h1>
	<table class="table">
	
	  <thead class="table-light">
	    <tr>
	      <th scope="col">글번호</th>
	      <th scope="col">제목</th>
	      <th scope="col">작성일</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">1</th>
	      <td><a href="#">공지사항 입니다.</a></td>
	      <td>2022/04/16</td>
	    </tr>
	    <tr>
	      <th scope="row">2</th>
	      <td><a href="#">로그인한게 관리자라면</a></td>
	      <td>2022.04.16</td>
	    </tr>
	    <tr>
	      <th scope="row">3</th>
	      <td><a href="#">등록, 수정, 삭제 가능</a></td>
	      <td>2022-04-16</td>
	    </tr>
	  </tbody>
	</table>
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>