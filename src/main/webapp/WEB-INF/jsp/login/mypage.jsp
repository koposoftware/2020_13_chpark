<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta charset="UTF-8">
<title>My Page</title>
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
<script type="text/javascript">
function doAction(type) {
	switch (type) {
	case 'M' :
		if(confirm('회원 정보를 수정하시겠습니까?')) {
			location.href = "${ pageContext.request.contextPath }/mypageUpdate/${loginVO.id}"
		}
		break;
	case 'D' :
		if(confirm('회원 탈퇴 하시겠습니까?')) {
			location.href = "${ pageContext.request.contextPath }/"
		}
		break;
	}
}
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

<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 mx-auto">
        <div class="block">
          <h2 class="text-center">개인정보</h2>
            <form class="text-center clearfix mt-30" style="text-align: center" >
             <div class="form-group" style="text-align: center">
               <table border="1" style="width: 90%; text-align: center; margin-left: auto; margin-right: auto;">
				<tr>
					<th style="width: 35%">성함</th>
					<td>${ member.name }</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>${ member.pwd }</td>
				</tr>
				<tr>
					<th>주민등록번호</th>
					<td>${ member.ssn }</td>
				</tr>
				<tr>
					<th>성별</th>
					<td>${ member.sex }</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${ member.address }</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>${ member.phone }</td>
				</tr>
			</table> 
			<br>    
        	<input type="button" value="회원 탈퇴" onclick="doAction('D')" class="btn btn-main text-center">
			<input type="button" value="정보 수정" onclick="doAction('M')" class="btn btn-main text-center">
             </div>
             </form>
              </div>
            </div>
         </div>
      </div>
</section>


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