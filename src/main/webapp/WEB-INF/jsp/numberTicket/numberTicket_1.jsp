<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Mobile Specific Meta
  ================================================== -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon/favicon.ico" />
  
  <!-- CSS
  ================================================== -->
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plugins/themefisher-font.v-2/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plugins/bootstrap/dist/css/bootstrap.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plugins/slick-carousel/slick/slick-theme.css">
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/style.css"></head>
  <script src="${ pageContext.request.contextPath }/resources/plugins/jquery/dist/jquery.min.js"></script>
<body>
<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
</header>

<div style="width:1300px;height:600px; border:1px solid green; ">

<div style="width:500px;height:400px; border:1px solid red; float:left;">
안
</div>
<div id="map" style="width:50%;height:400px; float:left;"></div>
</div>

<footer>
		<%--include forward .xml은 root = / 가 Mission-WEB/ 임 --%>
		<%@ include file="/WEB-INF/jsp/include/footerBottom.jsp" %>	
</footer>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff2a5b564a26a1c55986504a754e4916&libraries=services,clusterer,drawing""></script>
<script>
    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
        center : new kakao.maps.LatLng(37.5696821, 126.9802171), // 지도의 중심좌표 
        level : 5 // 지도의 확대 레벨 
    });
    
    var imageSrc = '${ pageContext.request.contextPath }/resources/images/maker.png', // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(30, 30), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
      
	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)

    // 마커 클러스터러를 생성합니다 
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 10 // 클러스터 할 최소 지도 레벨 
    });
 
    // 데이터를 가져오기 위해 jQuery를 사용합니다
    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
    $.get("${ pageContext.request.contextPath }/numberTicket/LatLng.json", function(data) {
        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
        console.log(data)
        var markers = $(data.positions).map(function(i, position) {
            return new kakao.maps.Marker({
                position : new kakao.maps.LatLng(position.branch_latitude, position.branch_longitude),
                image : markerImage
            });
        });
		for(var i=0 ; i<data.positions.length; i++){
			console.log(data.positions[i].branch_name)
			//displayInfo(markers[i], data.positions[i])
		}
        // 클러스터러에 마커들을 추가합니다
        
        clusterer.addMarkers(markers);
    });
    
    /*
    // infodata.지점코드 해서 정보를 가지고 온다.
	function displayInfo(infomarker, infodata) {
         $.ajax({
        	 //매핑을한다. return 값이 NumberTocketVO여야 한다.
            url : '${pageContext.request.contextPath}/  /  /' + infodata.지점코드,
            type : 'get',
            success : function(data) {
            	// NumberTicketVO 오빠는 이런형식으로 data가 날라옴
               console.log(data)
               var content = '<div class="wrap">' + 
               				 '    <div class="info">' + 
               				 '        <div class="title">' + 
               				 				data.aptBasicVO=.kaptName + 
               				 '            <div class="close" onclick="closeCustomOverlay()" title="닫기"></div>' + 
               				 '        </div>' + 
               				 '        <div class="body">' + 
               				 '            <div class="desc">' + 
               				 '                <div class="ellipsis"> <b>(주소)</b><br>' + 
               				 						data.지점주소 + '</div>' + 
               				 '                <div class="ellipsis"> <b>(도로명)</b><br>' + 
               				 							data.aptDetailVO.doroJuso + '</div>' + '                <div class="jibun ellipsis">| 동수 | ' + data.aptDetailVO.kaptDongCnt + ' |세대수 | ' + data.aptDetailVO.kaptDaCnt + '</div>' + '            </div>' + '        </div>' + '    </div>' + '</div>';
               displayOverlay(infomarker, content)
            }
         })
      }
    }
    var clickedOverlay = null;
    
    //marker클릭시 오버레이가 뜨도록 event등록
    
      function displayOverlay(infomarker, content) {

         var customOverlay = new kakao.maps.CustomOverlay({
            content : content,
            position : infomarker.getPosition() // 마커의 lat lng 
         });
         
         //이벤트 핸드러를 등록한다.
         kakao.maps.event.addListener(infomarker, 'click', function() {
            if (clickedOverlay) {
               clickedOverlay.setMap(null); // 떠있는 오버레이 없애라
            }
            customOverlay.setMap(map); // 오버레이를 지도에 올린다.
            customOverlay.setZIndex(3); //커스텀overlay z-index 변경
            map.panTo(infomarker.getPosition()); //중심좌표 이동
            clickedOverlay = customOverlay;
         });
      }
    
    */
</script>

 	<!-- Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <%-- <script src="${ pageContext.request.contextPath }/resources/plugins/jquery/dist/jquery.min.js"></script> --%>
    <!-- Bootstrap -->
    <script src="${ pageContext.request.contextPath }/resources/plugins/bootstrap/dist/js/popper.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Owl Carousel -->
    <script src="${ pageContext.request.contextPath }/resources/plugins/slick-carousel/slick/slick.min.js"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <!-- Smooth Scroll js -->
    <script src="${ pageContext.request.contextPath }/resources/plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
    
    <!-- Custom js -->
    <script src="${ pageContext.request.contextPath }/resources/js/script.js"></script>
</body>
</html>