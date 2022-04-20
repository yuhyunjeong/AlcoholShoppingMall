<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="../common/header.jsp"%>
<title>양조장</title>
<script type="text/javascript" src="${path}/js/jquery-3.6.0.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67df1f7c9b283b2023123ffabe045899"></script>
<script type="text/javascript">
    	$(function(){
    		function selectAll(){
    		$("#title").mouseover(function(){
    			
    			let name = $(this).val();
    			let param = {"name" : name};
    			
    			$.ajax({
      				url : "../ajax",    //서버요청주소
      				type : "post",    //요청방식(method방식 : get | post | put : delete )
      				dataType : "json",    //서버가 보내온 데이터(응답) 타입 ( text | html | xml | json )
      				data: {key :"factory", methodName:"selectByName" , name: name},
      				success : function(result){
      					
      					let str ="";
      	   				$.each(result, function(index, item) {
      	   					
      	   					str+="<div class='col-lg-4 col-md-6'>";
      	   					//str+="<div class='row'>";
      	   					str+="<div class='card mb-3 h-100'>";
      	   					
      	   					//str+=`<a href='productDetail.jsp?pName=${"${item.fName}"}&type=${"${item.fType}"}'>`;
      	   					s//tr+=`<img src='${path}/img/${"${item.cateCode}"}/${"${item.pImage}"}.jpg' class=card-img-top alt='이미지가 없습니다.'></a>`;
      	   					str+="<div class='card-body'>";
      	   					str+="<p class='card-text'>";
      	   					
      	   					str+=`<b>${'${item.fName}'}</b>`;
      	   					str+=`<b>${'${item.fType}'}</b>`;
      	   					str+=`<b>${'${item.fAddr}'}</b>`;
      	   					//str+="</div>";
      	   					str+="</p></div></div></div>";
      	   				});
      	   				//$("rrr").remove();

      	   				$("[name=detail]").empty();
      					$("[name=detail]").html(str);
      					
      					
      				},      //성공했을때 실행할 함수
      				error : function(err){
      					alert(err+"에러 발생했어요.");
      				}       //실패했을때 실행할 함수
      			});
    			
    		});
    	}
    		
    		selectAll();
    });
    </script>
<style type="text/css">
a:link , a:visited{
	text-decoration: none;
}

</style>


</head>
<body>
<div class="container">
	<div class="py-5 text-center">
		<h1>양조장</h1>
	</div>
		<div class="row">
			<div class="col-md-4">
				<%@include file="map.jsp"%>
			</div>
			
			<div class="col-md-8">
				<div class="row">
					<div class="col">
						<table>
							<!-- <h2>양조장 목록</h2>-->
							<tbody>
							<c:forEach items="${facList}" var="factory">
								    <tr>				
								    			    
				                        <th scope="row" id="title">${factory.fName}</a></td>	                
				                       <!--  <td>${factory.fType}</td>
				                        <td>${factory.fAddr}</td> -->
								    </tr>
						    </c:forEach>
						    
						    </tbody>
						    
					    </table>
				    </div>
				    <div class="col" name="detail">
				    	
				    </div>
				</div>
				<div class="row">
					아작스로 양조장 사진같은거 띄워줄예정
					<div id="display"></div>
				</div>
			</div>
			<footer class="my-5 pt-5 text-muted text-center text-small"></footer>
		</div>
	
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>