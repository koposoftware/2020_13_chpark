<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta charset="UTF-8">
<title>번호표 발급</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon/favicon.ico" />
<!-- Mobile Specific Meta
  ================================================== -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/img/favicon.png" />
  
  <!-- CSS
  ================================================== -->
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="/Project-spring-mvc/resources/plugins/themefisher-font.v-2/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="/Project-spring-mvc/resources/plugins/bootstrap/dist/css/bootstrap.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick-theme.css">
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="/Project-spring-mvc/resources/css/style.css">
  
  <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css" />
  <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-dialog/master/dist/ax5dialog.css" />
  <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.css" />
  
  <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js"></script>
  <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.min.js"></script>
  <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-dialog/master/dist/ax5dialog.min.js"></script>
  <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.min.js"></script>

  <script src="${ pageContext.request.contextPath }/resources/plugins/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript">

	$(function(){
		var dialog = new ax5.ui.dialog();
		var mask = new ax5.ui.mask();
		dialog.setConfig({
		     title: "번호표 확인",
		     lang : {
		    	 ok : '확인'
		     },
		     onStateChanged: function () {
		         if (this.state === "open") {
		             mask.open();
		         }
		         else if (this.state === "close") {
		             mask.close();
		         }
		     }
		});
		
		$(document).on('click', ".tdBtn", function(){
			let service = $(this).attr('id');
			
			///numberservice/{locations}/{service}
			$.ajax({
	    		url : '${ pageContext.request.contextPath }/numberservice/${ locations }/' + service,	
	    		type : 'get',
	    		success : function (data){
	    			
	    			var json = JSON.parse(data)['data'];

	    			var tableTag = "";
	    			tableTag+='<table style="width: 100%;">';
	    			
	    			tableTag+='<colgroup>';
	    			tableTag+='<col style="width:100px;">';
	    			tableTag+='<col>';
	    			tableTag+='</colgroup>';
	    			tableTag+='<tr>';
	    			tableTag+='<th>지점</th>';
	    			tableTag+='<td>'+json['branchName']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>창구</th>';
	    			tableTag+='<td>'+json['serviceName']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>번호</th>';
	    			tableTag+='<td>'+json['numberticketNumber']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>대기인원</th>';
	    			tableTag+='<td>'+(json['standby']-1)+'명</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>예상시간</th>';
	    			tableTag+='<td>약'+json['standbyTime']+'분</td>';
	    			tableTag+='</tr>';
	    			tableTag+='</table>';
	    			dialog.alert(tableTag);
	    		}
    		});
			//location.href = "${ pageContext.request.contextPath }/numberservice/" + "${ locations }" + "/" + service
		})
		
		
		var dialogTest = new ax5.ui.dialog();
		var maskTest = new ax5.ui.mask();
		dialogTest.setConfig({
		     title: "번호표 확인",
		     lang : {
		    	 ok : '확인'
		     },
		     onStateChanged: function () {
		         if (this.state === "open") {
		             maskTest.open();
		         }
		         else if (this.state === "close") {
		             maskTest.close();
		         }
		     }
		});
		//
		$(document).on('click', ".type", function(){
			let service = $(this).attr('name');
			
			firstGrid.setData(dataMap[service]);
		})
		
		var firstGrid = new ax5.ui.grid();
		
	    firstGrid.setConfig({
            target: $('[data-ax5grid="first-grid"]'),
            columns: [
                {key: "col1", label: "업무" ,width :'20%'},
                {key: "col2", label: "필요서류" , width :'70%'},
                {key: "col3", label: "비대면가능" ,width :'10%'},
            ],
            body: {
            	onDBLClick: function () {
            		//var json = this.list[this.dindex];
	    			var tableTag = "";
	    			tableTag+='<table style="width: 100%;">';
	    			tableTag+='<colgroup>';
	    			tableTag+='<col style="width:100px;">';
	    			tableTag+='<col>';
	    			tableTag+='</colgroup>';
	    			tableTag+='<tr>';
	    			tableTag+='<th>테스트</th>';
	    			tableTag+='</tr>';
	    			tableTag+='</table>';
	    			dialogTest.alert(tableTag);
				},
            }
        });
	    
	    
	    var dataMap = {
		    	100 : [],
		    	200 : [],
		    	300 : [],
		    	400 : []
		    };
		    
	    <c:forEach items="${ serviceDescList }" var="serviceDesc" varStatus="loop">
	    	dataMap['${serviceDesc.serviceId}'].push({col1:'${serviceDesc.name}',col2:'${serviceDesc.etc}',col3:'${serviceDesc.untact}'});
	 	</c:forEach>
	 	firstGrid.setData(dataMap[100]);
	 	
	 	
		
	 	<%-- 즐겨찾기 등록 하는 함수 --%>
	 	$(document).on('click', ".basket", function(){
	        let locations = $(this).attr('id');
	        
	        <%--location.href = "${ pageContext.request.contextPath }/location/basket/" + locations--%>
			
	        $.ajax({
	    		url : '${ pageContext.request.contextPath }/location/basket/' + locations,	
	    		type : 'get',
	    		success : function (data){
	    			alert(locations+"지점을 즐겨찾기에 등록 했습니다.")
    			}
	        });
			//location.href = "${ pageContext.request.contextPath }/numberservice/" + "${ locations }" + "/" + service
		})
	       
	})
	
  </script>
<style type="text/css">
	table td,th{
		border:1px solid rgba(0,0,0,.1);
		padding: 5px;
	}

	.type{
		cursor: pointer;
	}
	.tdBtn{
		background: #31BB9E;
		color: #fff;
		cursor: pointer;
	}
	
	.ax5-ui-dialog .ax-dialog-header,.btn-default,.btn-default:hover,.btn-default:focus{
		background: #31BB9E;
		color: #fff;
		border: none;
	}
	
</style>
</head>
<body id="body">

 <!--
  Start Preloader
  ==================================== -->
  <div id="preloader">
    <div class="preloader">
      <div class="sk-circle1 sk-child"></div>
      <div class="sk-circle2 sk-child"></div>
      <div class="sk-circle3 sk-child"></div>
      <div class="sk-circle4 sk-child"></div>
      <div class="sk-circle5 sk-child"></div>
      <div class="sk-circle6 sk-child"></div>
      <div class="sk-circle7 sk-child"></div>
      <div class="sk-circle8 sk-child"></div>
      <div class="sk-circle9 sk-child"></div>
      <div class="sk-circle10 sk-child"></div>
      <div class="sk-circle11 sk-child"></div>
      <div class="sk-circle12 sk-child"></div>
    </div>
  </div> 
  <!--
  End Preloader
  ==================================== -->
  
<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
</header>

<section class="service-2 section bg-gray">

 <div class="row justify-content-center">


 <div style="width:100%;height:600px; border:1px solid rgba(0,0,0,.1); text-align: center; margin: 0 auto;padding: 20px;">
	<h2>${ locations } 지점 현황 </h2>
	<button id=${ locations } class="btn btn-main mb-2 basket" style="height: 40px; ">즐겨찾기에 등록</button>
	<hr>
	<div style="width: 50%;height:85%;float: left;">
		
		<h2 style="text-align: center;">대기 손님 현황</h2>
		<hr>
		<table style="width: 100%;height:calc(100% - 120px);">
			<colgroup>
				<col style="width:150px;">
				<col>
				<col style="width:160px;">
			</colgroup>
			<tr>
				<th colspan="3">
					<span style="color: red;">원하시는 업무</span>를 선택해주세요
				</th>
			</tr>
			
			<tr>
				<th class="type" name="100" style="width: 33%">입출금 업무</th>
				<td>${ nt100.standby } 명</td>
				<td  id="100" class="tdBtn">번호표발급</td>
			</tr>
			<tr>
				<th class="type" name="200" style="width: 33%">대출 업무</th>
				<td>${ nt200.standby } 명</td>
				<td  id="200" class="tdBtn">번호표발급</td>
			</tr>
			<tr>
				<th class="type" name="300" style="width: 33%">외환 업무</th>
				<td>${ nt300.standby } 명</td>
				<td  id="300" class="tdBtn">번호표발급</td>
			</tr>	
			<tr>
				<th class="type" name="400" style="width: 33%">기업 업무</th>
				<td>${ nt400.standby } 명</td>
				<td  id="400" class="tdBtn">번호표발급</td>
			</tr>
			
		</table>
	

	</div>

	<div style="width: 50%;float: left;height: 85%;">
		<h2 style="text-align: center;">구비서류</h2>
		<hr>
		<div data-ax5grid="first-grid" style="height: calc(100% - 120px);padding-left: 10px;"></div>
	</div>
 </div>
 
 </div>  <!-- End class="row justify-content-center" -->
 
 </section>   <!-- End section -->

<footer>
		<%@ include file="/WEB-INF/jsp/include/footerBottom.jsp" %>	
</footer>

    <!-- 
    Essential Scripts
    =====================================-->
    
    
    <!-- Main jQuery -->
    <script src="/Project-spring-mvc/resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/Project-spring-mvc/resources/plugins/bootstrap/dist/js/popper.min.js"></script>
    <script src="/Project-spring-mvc/resources/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Owl Carousel -->
    <script src="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick.min.js"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <!-- Smooth Scroll js -->
    <script src="/Project-spring-mvc/resources/plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
    
    <!-- Custom js -->
    <script src="/Project-spring-mvc/resources/js/script.js"></script>

</body>
</html>