<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 눌렀을때</title>

</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="container">
<h2 style="text-align: center;">${param.name}</h2>
</div>



<nav class="navbar navbar-expand-lg navbar-light bg-white container">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">도수</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">저도수(0~10)%</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">낮은 중도수(10~20)%</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">높은 중도수(20~30)%</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">고도수(30~40)%</a>
        </li>
      </ul>
    </div>
   <!--  <form> -->
		<div class="dropdown" >
	  <a class="btn btn-secondary btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
	    기본순
	  </a>
	
	  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
	    <li><a class="dropdown-item" href="#">평점순</a></li>
	    <li><a class="dropdown-item" href="#">최신순</a></li>
	  </ul>
		</div>
	
	<!-- </form> -->

  </div>

</nav>

<div class="container">	
	<div class="row" >
		<div class="col-lg-3 col-md-6">
			<div class="card mb-3">
			  <img src="../img/10월의 술.jpg" class="card-img-top" alt="모르겠다">
			  <div class="card-body">
			    <p class="card-text">내용도 끌고 와야한다 src도 물론 사진누르면 창 이동하는걸로 통일하자 가격도 적혀야하고 리뷰도 별점도 물론 for문으로 다 나오게도 해야하고
			    c choos로 필터기능도 만들어야한다.
			    </p>
			  </div>
			</div>
		</div>
		
		<div class="col-lg-3 col-md-6">
			<div class="card  mb-3">
			  <img src="../img/10월의 술.jpg" class="card-img-top" alt="모르겠다">
			  <div class="card-body">
			    <p class="card-text">내용도 끌고 와야한다 src도 물론 사진누르면 창 이동하는걸로 통일하자 가격도 적혀야하고 리뷰도 별점도 물론 for문으로 다 나오게도 해야하고
			    c choos로 필터기능도 만들어야한다.
			    </p>
			  </div>
			</div>
		</div>
		
		<div class="col-lg-3 col-md-6">
			<div class="card  mb-3">
			  <img src="../img/10월의 술.jpg" class="card-img-top" alt="모르겠다">
			  <div class="card-body">
			    <p class="card-text">내용도 끌고 와야한다 src도 물론 사진누르면 창 이동하는걸로 통일하자 가격도 적혀야하고 리뷰도 별점도 물론 for문으로 다 나오게도 해야하고
			    c choos로 필터기능도 만들어야한다.
			    </p>
			  </div>
			</div>
		</div>
		
		<div class="col-lg-3 col-md-6">
			<div class="card  mb-3">
			  <img src="../img/10월의 술.jpg" class="card-img-top" alt="모르겠다">
			  <div class="card-body">
			    <p class="card-text">내용도 끌고 와야한다 src도 물론 사진누르면 창 이동하는걸로 통일하자 가격도 적혀야하고 리뷰도 별점도 물론 for문으로 다 나오게도 해야하고
			    c choos로 필터기능도 만들어야한다.
			    </p>
			  </div>
			</div>
		</div>
			
			
		
		
	</div>
</div>


<jsp:include page="../common/footer.jsp"/>




</body>
</html>