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
<script type="text/javascript">

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
<h2>나의 번호표 </h2>
<h2 style="text-align: left">나의 번호표</h2>
<hr>
<ul>
<li style="text-align: left;"><span style="color: red;">번호표</span>를 확인해주세요</li>
</ul>
<table style="text-align:center; border:1px solid black;">
	<tr>
		<th>지점</th>
		<td>${ nt.branch_name } 지점 <!-- <button class="numberservice" id="100">번호표발급</button> --> </td>
	</tr>
	<tr>
		<th>창구</th>
		<td>${ nt.service_name } 업무<!--<button  class="numberservice" id="200">번호표발급</button> --></td>
	</tr>
	<tr>
		<th>번호</th>
		<td>${ nt.numberticket_number } 번<!-- <button class="numberservice" id="300">번호표발급</button> --></td>
	</tr>	
	<tr>
		<th>현재 대기 인원</th>
		<c:if test="${nt.service_id == 100}">
			<td>${nt100.standby}명</td>
		</c:if>
		<c:if test="${nt.service_id == 200}">
			<td>${nt200.standby}명</td>
		</c:if>
		<c:if test="${nt.service_id == 300}">
			<td>${nt300.standby}명</td>
		</c:if>
		<c:if test="${nt.service_id == 400}">
			<td>${nt400.standby}명</td>
		</c:if>
	</tr>
	
</table>
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