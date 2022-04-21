<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안다미로_상품카테고리</title>
<script type="text/javascript" src="${path}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	function selectAll(){
		$.ajax({
   			url :"../ajax" , //서버요청주소
   			type:"post", //요청방식(method방식 : get | post | put | delete )
   			dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
   			data: {key :"product", methodName:"cateSelect"},
   			success :function(result){

   				let str ="";
   				$.each(result, function(index, item) {
   					
   					str+="<div class='col-lg-4 col-md-6'>";
   					//str+="<div class='row'>";
   					str+="<div class='card mb-3 h-100'>";
   					
   					str+=`<a href='productDetail.jsp?pName=${"${item.pName}"}&type=${"${item.cateCode}"}'>`;
   					str+=`<img src='${path}/img/${"${item.cateCode}"}/${"${item.pImage}"}.jpg' class=card-img-top alt='이미지가 없습니다.'></a>`;
   					str+="<div class='card-body'>";
   					str+="<p class='card-text'>";
   					
   					str+=`<b>${'${item.pName}'}</b>`;
   					//str+="</div>";
   					str+="</p></div></div></div>";
   				});
   				//$("rrr").remove();

   				$("[name=best]").empty();
				$("[name=best]").html(str);
					
   			},error : function(err){  
   				alert(err+"에러 발생했어요.");
   			}  //실팽했을때 실행할 함수 
   		});
		
		$.ajax({
   			url :"../ajax" , //서버요청주소
   			type:"post", //요청방식(method방식 : get | post | put | delete )
   			dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
   			data: {key :"product", methodName:"selectByDate"},
   			success :function(result){
   				let str ="";
   				$.each(result, function(index, item) {
   					
   					str+="<div class='col-lg-4 col-md-6'>";
   					//str+="<div class='row'>";
   					str+="<div class='card mb-3 h-100'>";
   					
   					str+=`<a href='productDetail.jsp?pName=${"${item.pName}"}&type=${"${item.cateCode}"}'>`;
   					str+=`<img src='${path}/img/${"${item.cateCode}"}/${"${item.pName}"}.jpg' class=card-img-top alt='이미지가 없습니다.'></a>`;
   					str+="<div class='card-body'>";
   					str+="<p class='card-text'>";
   					
   					str+=`<b>${'${item.pName}'}</b>`;
   					//str+="</div>";
   					str+="</p></div></div></div>";
   				});
   				//$("rrr").remove();

   				$("[name=lately]").empty();
				$("[name=lately]").html(str);
					
   			},error : function(err){  
   				alert(err+"에러 발생했어요.");
   			}  //실팽했을때 실행할 함수 
   		});
		
	}
	selectAll();
	
});
</script>
<style type="text/css">
.profile-user-img{
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
}
.profile-user-img-img{
	width:100%;
	height: 100%;
	object-fit: cover;
}
</style>
</head>
<body>
<%@include file="../common/header.jsp"%>

<div class="container marketing" style="text-align: center;">

  <div class="row m-5" >
      <div class="col-lg-3" >
      <div class="profile-user-img">
       <a href="${path}/store/product.jsp?type=A&title=탁주">    
        	<image href="${pageContext.request.contextPath}/img/A/자연담은 복분자 막걸리.jpg"  class="profile-user-img-img"/>        
	   </a>
	   </div>
		<p>
        <h3>탁주</h3>
         <p></p>
      </div>
      
      <div class="col-lg-3" >
			 <div class="profile-user-img">
	      	<a href="${path}/store/product.jsp?type=B&title=청주">	
	       
	        <image href="${pageContext.request.contextPath}/img/B/매화 깊은 밤.jpg" class="profile-user-img-img"/>
	    
			</a>
			</div>
			<p>
	        <h3>청주</h3>
	        <p></p>

      </div>
      
      <div class="col-lg-3" >
		 <div class="profile-user-img">
	     	<a href="${path}/store/product.jsp?type=C&title=과실주">
	       
	        <image href="${pageContext.request.contextPath}/img/C/크라테 자두 와인.jpg"  class="profile-user-img-img"/>
	
			</a>
			</div>
			<p>
	        <h3>과실주</h3>
	        <p></p>
      </div>
      
      <div class="col-lg-3" >
      <div class="profile-user-img">
	      	<a href="${path}/store/product.jsp?type=D&title=증류주">
	     
	        <image href="${pageContext.request.contextPath}/img/D/만월.jpg"  class="profile-user-img-img"/>

			</a>
			</div>
			<p>
	        <h3>증류주</h3>
	        <p></p>
      </div>
   
    </div><!-- /.row -->

    <hr class="featurette-divider">
    <p></p><br>
    <h2 style="font-weight:bold;">베스트</h2>
    <div class="row m-5" name="best">
    	
  		
  		
    </div>
    <h2 style="font-weight:bold;">신상품</h2>
    <div class="row m-5"  name="lately">
    
  		
    </div>
</div>


<%@include file="../common/footer.jsp"%>
</body>
</html>