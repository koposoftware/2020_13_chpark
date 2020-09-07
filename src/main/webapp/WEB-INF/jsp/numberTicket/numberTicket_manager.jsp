<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta charset="UTF-8">
<title>템플릿</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${ pageContext.request.contextPath }/resources/images/favicon/favicon.ico" />
<!-- Mobile Specific Meta
  ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="/img/favicon.png" />

<!-- CSS
  ================================================== -->
<!-- Themefisher Icon font -->
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/plugins/themefisher-font.v-2/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/plugins/bootstrap/dist/css/bootstrap.min.css">
<!-- Slick Carousel -->
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick-theme.css">
<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/css/style.css">

<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-dialog/master/dist/ax5dialog.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.css" />

<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-dialog/master/dist/ax5dialog.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.min.js"></script>	
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style type="text/css">
	.ax5-ui-dialog .ax-dialog-header,.btn-default,.btn-default:hover,.btn-default:focus{
		background: #31BB9E;
		color: #fff;
		border: none;
	}

</style>
<script type="text/javascript">

	$(function(){
		/* var dialog = new ax5.ui.dialog();
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
		}); */
		
		var firstGrid = new ax5.ui.grid();
		
	    firstGrid.setConfig({
            target: $('[data-ax5grid="first-grid"]'),
            columns: [
                {key: "branchName", label: "지점" ,width :'15%'},
                {key: "serviceId", label: "업무" , width :'10%'},
                {key: "analysisNumber", label: "번호" , width :'10%'},
                {key: "usersName", label: "손님성함" , width :'10%'},
                {key: "tellerId", label: "담당직원" , width :'15%'},
                {key: "analysisDate", label: "일자" , width :'20%'},
                {key: "analysisTime", label: "시간" , width :'20%'}
            ],
            body: {
            	onDBLClick: function(){
            		var json = this.list[this.dindex];
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
	    			tableTag+='<td>'+json['serviceId']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>번호</th>';
	    			tableTag+='<td>'+json['analysisNumber']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>담당직원</th>';
	    			tableTag+='<td>'+json['tellerId']+'</td>';
	    			tableTag+='</tr>';
	    			tableTag+='</table>';
	    			dialog.alert(tableTag);
                },
            }
        });
	    
	    
	    $.ajax({
    		url : '${ pageContext.request.contextPath }/numberservice/selectAnalysis',	
    		type : 'get',
    		success : function (data){
    			var json = JSON.parse(data);
    			firstGrid.setData(json);
    		}
	    })
	    
	})
</script>	
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
		<div>
			<select name="branch">
				<option value="">지점선택</option>
				<option value="계동">계동</option>
				<option value="혜화동">혜화동</option>
				<option value="서린">서린</option>
			</select> <select name="직원">
				<option value="">직원선택</option>
				<option value="김하나">김하나</option>
				<option value="송하나">송하나</option>
				<option value="박하나">박하나</option>
			</select>
		</div>

		<div
			style="width: 1300px; height: 600px; border: 1px solid green; text-align: center; margin: 0 auto;">
			<div data-ax5grid="first-grid" style="height: 100%;"></div>
		</div>
		
	</section>

	<footer>
		<%@ include file="/WEB-INF/jsp/include/footerBottom.jsp"%>
	</footer>

	<!-- 
    Essential Scripts
    =====================================-->


	<!-- Main jQuery -->
	<script
		src="/Project-spring-mvc/resources/plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="/Project-spring-mvc/resources/plugins/bootstrap/dist/js/popper.min.js"></script>
	<script
		src="/Project-spring-mvc/resources/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Owl Carousel -->
	<script
		src="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick.min.js"></script>
	<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
	<!-- Smooth Scroll js -->
	<script
		src="/Project-spring-mvc/resources/plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>

	<!-- Custom js -->
	<script src="/Project-spring-mvc/resources/js/script.js"></script>

</body>
</html>