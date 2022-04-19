<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67df1f7c9b283b2023123ffabe045899"></script>

<div id="map" style="width:400px;height:500px;"></div>
	
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(36.6412834441384 , 127.85105483840633),
			level: 13
		};

		var map = new kakao.maps.Map(container, options);
	
		// 마커가 표시될 위치입니다 
		//var markerPosition  = new kakao.maps.LatLng(37.90540357648284 , 127.30905300193753 ); 

		// 마커를 생성합니다
		//var marker = new kakao.maps.Marker({
		//    position: markerPosition
		//});

		// 마커가 지도 위에 표시되도록 설정합니다
		//marker.setMap(map);
		
		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);    
		
		var positions = [
    {
        content: '<div>배상면주가</div>', 
        latlng: new kakao.maps.LatLng(37.90540357648284 , 127.30905300193753)
    },
    {
        content: '<div>국순당</div>', 
        latlng: new kakao.maps.LatLng(37.4893229 , 128.1957934)
    },
    {
        content: '<div>풍정사계</div>', 
        latlng: new kakao.maps.LatLng(36.701695 , 127.545495)
    },
    {
        content: '<div>중원당</div>',
        latlng: new kakao.maps.LatLng(36.9970372 , 127.8787317)
    },
    {
        content: '<div>복순도가</div>',
        latlng: new kakao.maps.LatLng(35.5856494 , 129.0975319)
    },
    {
        content: '<div>청산녹수</div>',
        latlng: new kakao.maps.LatLng(35.3451059 , 126.8128224)
    },
    {
        content: '<div>한국 애플리즈</div>',
        latlng: new kakao.maps.LatLng(36.4370944 , 128.7231036)
    },
    {
        content: '<div>태인합동주조</div>',
        latlng: new kakao.maps.LatLng(35.6516202 , 126.9450533)
    },
    {
        content: '<div>제주샘주</div>',
        latlng: new kakao.maps.LatLng(33.4446362 , 126.3375372)
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
       // title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
    
    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });
    

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}


	</script>
</body>
</html>