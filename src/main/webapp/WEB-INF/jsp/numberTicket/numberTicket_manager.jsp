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
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

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
                {key: "serviceName", label: "업무" , width :'10%'},
                {key: "analysisNumber", label: "번호" , width :'10%'},
                {key: "usersName", label: "손님성함" , width :'10%'},
                {key: "tellerName", label: "담당직원" , width :'15%'},
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
	    			tableTag+='<td>'+json['serviceName']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>번호</th>';
	    			tableTag+='<td>'+json['analysisNumber']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>담당직원</th>';
	    			tableTag+='<td>'+json['tellerName']+'</td>';
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
	    
	    //total
	    let ii;
  		$.ajax({
    		url : '${ pageContext.request.contextPath }/numberservice/selectAnalysisTotal',	
    		type : 'get',
    		success : function (data){
    			var json = JSON.parse(data);
    			ii = json;
    			let content = '';
                content +=     '<h3 style="text-align: center;">우리지점 총 방문 손님</h3>';
                content +=     '<hr>';
                content +=     '<table class="table table-hover" style="text-align:center">';
                content +=         '<thead>';
                content +=             '<tr>'
                content +=                 '<th scope="col">방문 손님 숫자</th>';
                content +=             '</tr>';
                content +=         '</thead>';
                content +=         '<tbody>';
            	content +=         '<tr>';
                content +=             '<td>' + json.todayTotal + '</td>';
                content +=         '</tr>';
                content +=         '</tbody>';
                content +=     '</table>';
				
                $('#total').append(content);
			}
        });
  		
  		
  		//100
	    let jj;
  		$.ajax({
    		url : '${ pageContext.request.contextPath }/numberservice/selectAnalysis100',	
    		type : 'get',
    		success : function (data){
    			var json = JSON.parse(data);
    			jj = json;
    			let content = '';
                content +=     '<h3 style="text-align: center;">입출금 방문 손님</h3>';
                content +=     '<hr>';
                content +=     '<table class="table table-hover" style="text-align:center">';
                content +=         '<thead>';
                content +=             '<tr>'
                content +=                 '<th scope="col">방문 손님 숫자</th>';
                content +=             '</tr>';
                content +=         '</thead>';
                content +=         '<tbody>';
            	content +=         '<tr>';
                content +=             '<td>' + json.today100 + '</td>';
                content +=         '</tr>';
                content +=         '</tbody>';
                content +=     '</table>';
				
                $('#100').append(content);
			}
        });
  		
  		//200
	    let kk;
  		$.ajax({
    		url : '${ pageContext.request.contextPath }/numberservice/selectAnalysis200',	
    		type : 'get',
    		success : function (data){
    			var json = JSON.parse(data);
    			kk = json;
    			let content = '';
                content +=     '<h3 style="text-align: center;">대출 방문 손님</h3>';
                content +=     '<hr>';
                content +=     '<table class="table table-hover" style="text-align:center">';
                content +=         '<thead>';
                content +=             '<tr>'
                content +=                 '<th scope="col">방문 손님 숫자</th>';
                content +=             '</tr>';
                content +=         '</thead>';
                content +=         '<tbody>';
            	content +=         '<tr>';
                content +=             '<td>' + json.today200 + '</td>';
                content +=         '</tr>';
                content +=         '</tbody>';
                content +=     '</table>';
				
                $('#200').append(content);
			}
        });
  		
  		//300
	    let ll;
  		$.ajax({
    		url : '${ pageContext.request.contextPath }/numberservice/selectAnalysis300',	
    		type : 'get',
    		success : function (data){
    			var json = JSON.parse(data);
    			ll = json;
    			let content = '';
                content +=     '<h3 style="text-align: center;">외환 방문 손님</h3>';
                content +=     '<hr>';
                content +=     '<table class="table table-hover" style="text-align:center">';
                content +=         '<thead>';
                content +=             '<tr>'
                content +=                 '<th scope="col">방문 손님 숫자</th>';
                content +=             '</tr>';
                content +=         '</thead>';
                content +=         '<tbody>';
            	content +=         '<tr>';
                content +=             '<td>' + json.today300 + '</td>';
                content +=         '</tr>';
                content +=         '</tbody>';
                content +=     '</table>';
				
                $('#300').append(content);
			}
        });
  		
  		//400
	    let mm;
  		$.ajax({
    		url : '${ pageContext.request.contextPath }/numberservice/selectAnalysis400',	
    		type : 'get',
    		success : function (data){
    			var json = JSON.parse(data);
    			mm = json;
    			let content = '';
                content +=     '<h3 style="text-align: center;">기업 방문 손님</h3>';
                content +=     '<hr>';
                content +=     '<table class="table table-hover" style="text-align:center">';
                content +=         '<thead>';
                content +=             '<tr>'
                content +=                 '<th scope="col">방문 손님 숫자</th>';
                content +=             '</tr>';
                content +=         '</thead>';
                content +=         '<tbody>';
            	content +=         '<tr>';
                content +=             '<td>' + json.today400 + '</td>';
                content +=         '</tr>';
                content +=         '</tbody>';
                content +=     '</table>';
				
                $('#400').append(content);
			}
        });
  		
	})
	
  		google.charts.load('current', {packages: ['corechart', 'line']});
  		google.charts.setOnLoadCallback(drawLineColors);

  		function drawLineColors() {
  		      var data = new google.visualization.DataTable();
  		      data.addColumn('number', 'X');
  		      data.addColumn('number', 'Dogs');
  		      data.addColumn('number', 'Cats');

  		      data.addRows([
  		        [0, 0, 0],    [1, 10, 5],   [2, 23, 15],  [3, 17, 9],   [4, 18, 10],  [5, 9, 5],
  		        [6, 11, 3],   [7, 27, 19],  [8, 33, 25],  [9, 40, 32],  [10, 32, 24], [11, 35, 27],
  		        [12, 30, 22], [13, 40, 32], [14, 42, 34], [15, 47, 39], [16, 44, 36], [17, 48, 40],
  		        [18, 52, 44], [19, 54, 46], [20, 42, 34], [21, 55, 47], [22, 56, 48], [23, 57, 49],
  		        [24, 60, 52], [25, 50, 42], [26, 52, 44], [27, 51, 43], [28, 49, 41], [29, 53, 45],
  		        [30, 55, 47], [31, 60, 52], [32, 61, 53], [33, 59, 51], [34, 62, 54], [35, 65, 57],
  		        [36, 62, 54], [37, 58, 50], [38, 55, 47], [39, 61, 53], [40, 64, 56], [41, 65, 57],
  		        [42, 63, 55], [43, 66, 58], [44, 67, 59], [45, 69, 61], [46, 69, 61], [47, 70, 62],
  		        [48, 72, 64], [49, 68, 60], [50, 66, 58], [51, 65, 57], [52, 67, 59], [53, 70, 62],
  		        [54, 71, 63], [55, 72, 64], [56, 73, 65], [57, 75, 67], [58, 70, 62], [59, 68, 60],
  		        [60, 64, 56], [61, 60, 52], [62, 65, 57], [63, 67, 59], [64, 68, 60], [65, 69, 61],
  		        [66, 70, 62], [67, 72, 64], [68, 75, 67], [69, 80, 72]
  		      ]);

  		      var options = {
  		        hAxis: {
  		          title: '일별'
  		        },
  		        vAxis: {
  		          title: '방문 손님 수'
  		        },
  		        colors: ['#a52714', '#097138']
  		      };

  		      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
  		      chart.draw(data, options);
  		    }
		
	
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
		<div id="total"></div>
		<div id="100" style="text-align: center; width:50%; float: left;"></div>
		<div id="200" style="text-align: center; width:50%; float: right;"></div>
		<div id="300" style="text-align: center; width:50%; float: left;"></div>
		<div id="400" style="text-align: center; width:50%; float: right;"></div>
	</div>	
	
	<!-- 	<div>
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
 	-->
 		<div>
 		<br><br><br><br><br>
 		<br><br><br><br><br>
 		<br><br><br><br><br>
 		<br><br>
 		</div>
 		
		<div
			style="width: 1300px; height: 600px; border: 1px solid green; text-align: center; margin: 0 auto;">
			<div data-ax5grid="first-grid" style="height: 100%;"></div>
		</div>
		
		<div>
 		<br><br><br>
 		</div>
 		
		<div id="chart_div" style="width: 80%; text-align: center; margin: 0 auto;" ></div>
		
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