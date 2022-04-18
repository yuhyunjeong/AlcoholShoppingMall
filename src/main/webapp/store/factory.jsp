<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="../common/header.jsp"%>
<title>양조장</title>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67df1f7c9b283b2023123ffabe045899"></script>



</head>
<body>
<div class="container">
	<div class="py-5 text-center">
		<h1>양조장</h1>
	</div>
		<div class="row">
			<div class="col">
				<%@include file="map.jsp"%>
			</div>
			<div class="col">
				
				<table>
				<h2>양조장 목록</h2>
				<tbody>
				<c:forEach items="${facList}" var="factory">
					    <tr>
						    <th scope="row">${factory.fName}</th>
	                        <td><a href="${path}/front?key=factory&methodName=selectByName&noNumber=${factory.fName}">${factory.fName}</a></td>
	                
	                        <td>${factory.fType}</td>
	                        <td>${factory.fAddr}</td>
					    </tr>
			    </c:forEach>
			    </tbody>
			    </table>
				
			</div>
			<footer class="my-5 pt-5 text-muted text-center text-small"></footer>
		</div>
	
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>