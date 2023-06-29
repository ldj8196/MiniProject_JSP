<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ORCA 위치</title>
    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body>
	<h1>현재 위치</h1>
	<div id="map" style="width: 1000px; height: 400px;"></div>
	<label>소요시간</label>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0a91293c73a6a496222351da535f7eb6"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		mapOption = {
			center : new kakao.maps.LatLng(35.111150, 129.057077), // 지도의 중심좌표
			level : 13
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		

		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [ {
			title : '부산항',
			latlng : new kakao.maps.LatLng(35.103523, 129.042367)
		}, {
			title : '지점1',
			latlng : new kakao.maps.LatLng(35.104384, 129.065499)
		}, {
			title : '지점2',
			latlng : new kakao.maps.LatLng(35.082962, 129.095712)
		}, {
			title : '지점3',
			latlng : new kakao.maps.LatLng(35.049056, 129.098225)
		}, {
			title : '지점4',
			latlng : new kakao.maps.LatLng(33.987598, 127.430714)
		}, {
			title : '지점5',
			latlng : new kakao.maps.LatLng(33.537457, 126.545549)
		}, {
			title : '제주항',
			latlng : new kakao.maps.LatLng(33.522564, 126.537010)
		}];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

		for (var i = 0; i < positions.length; i++) {

			// 마커 이미지의 이미지 크기 입니다
			var imageSize = new kakao.maps.Size(24, 35);

			// 마커 이미지를 생성합니다    
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : positions[i].latlng, // 마커를 표시할 위치
				title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				image : markerImage
			// 마커 이미지 
			});
		}
		
		var linePath;
		var lineLine = new kakao.maps.Polyline();
		var distance;
		
		for(var i=0;i<positions.length;i++) {
			if(i != 0){
				linePath = [ positions[i-1].latlng, positions[i].latlng] // 두 점
			};
			lineLine.setPath(linePath); // 선을 그릴 라인 세팅
			
			var drawLine = new kakao.maps.Polyline({
				map: map, // 선을 표시할 지도입니다 
	            path: linePath,
	            strokeWeight: 0, // 선의 두께입니다 
	            strokeColor: '#db4040', // 선의 색깔입니다
	            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            strokeStyle: 'solid' // 선의 스타일입니다
			});
			
			distance = Math.round(lineLine.getLength());
			displayCircleDot(positions[i].latlng, distance);
		}
		
		function displayCircleDot(position, distance){
			if (distance > 0) {
		        // 클릭한 지점까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
		        var distanceOverlay = new kakao.maps.CustomOverlay({
		        	//content: '<div class="dotOverlay">거리 <span class="number">' + distance + '</span>m</div>',
		            position: position,
		            yAnchor: 1,
		            zIndex: 2
		        });

		        // 지도에 표시합니다
		        distanceOverlay.setMap(map);
		    }
		}
		
		
	</script>
</body>
</html>