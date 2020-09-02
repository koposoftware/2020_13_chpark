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
<title>번호표 확인</title>
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
<script src="${ pageContext.request.contextPath }/resources/plugins/jquery/dist/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-dialog/master/dist/ax5dialog.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.css" />

<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-dialog/master/dist/ax5dialog.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.min.js"></script>

<style type="text/css">
	.ax5-ui-dialog .ax-dialog-header,.btn-default,.btn-default:hover,.btn-default:focus{
		background: #31BB9E !important;
		color: #fff !important;
		border: none !important;
	}
	
	.gridBtn{
		background: #31BB9E !important;
		color: #fff !important; 
		cursor: pointer;
	}
	.gridRedBtn{
		background: #f8d2cb !important;
		cursor: pointer;
	}
	 

</style>
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
		
		var firstGrid = new ax5.ui.grid();
		
	    firstGrid.setConfig({
            target: $('[data-ax5grid="first-grid"]'),
            columns: [
                {key: "serviceName", label: "업무" , width :'16%'},
                {key: "numberticketNumber", label: "번호" , width :'16%'},
                {key: "userName", label: "사용자" , width :'16%'},
                {key: "numberticketDate", label: "일자" , width :'16%'},
                {key: "numberticketTime", label: "시간" , width :'16%'},
                {key: "status", label: "상태" , width :'16%' ,styleClass: function () {
                    return (this.item.status === "상담") ? "gridBtn" : "gridRedBtn";
                }},
                
            ],
            body: {
            	onClick: function(){
            		var json = this.list[this.dindex];
            		
            		if(this.value =='상담'){
            			$.ajax({
            	    		url : '${ pageContext.request.contextPath }/numberservice/ticketupdate/' + json['numberticketSeq'],	
            	    		type : 'get',
            	    		success : function (data){
            	    			select();
            	    		}	
           	    		})
            		}else if(this.value =='종료'){
            			$.ajax({
            	    		url : '${ pageContext.request.contextPath }/numberservice/ticketdelete/' + json['numberticketSeq'],	
            	    		type : 'get',
            	    		success : function (data){
            	    			select();
            	    		}	
           	    		})
            		}
            		
                },
            }
        });
	    
	    
	    function select(){
	    	$.ajax({
	    		url : '${ pageContext.request.contextPath }/numberservice/adminTicket',	
	    		type : 'get',
	    		success : function (data){
	    			var json = JSON.parse(data);
	    			
	    			json.forEach(function(item){
	   				  if(item['tellerId'] == null){
		   				item['status'] = '상담';
		    		  }else{
		    			item['status'] = '종료';
		    		  }
	   				})
	   				
	    			firstGrid.setData(json);
	    		}
		    })
	    }
	    
	    select();
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

<div style="width:1300px;height:600px; border:1px solid green; text-align: center; margin: 0 auto;">
	<div data-ax5grid="first-grid" style="height: 100%;"></div>
</div>

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