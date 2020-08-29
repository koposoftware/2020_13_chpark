<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta charset="UTF-8">
<title>Insert title here</title>
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
  
  function doSignup() {
	    //지금은 굳이 onload안써도 됨

	    let s = document.sForm;
	    if (s.NAME.value == '') {
	       alert('성함을 입력 해주세요')
	       s.NAME.focus();
	       return false;
	    }

	    if (s.ID.value == '') {
	       alert('아이디를 입력 해주세요')
	       s.ID.focus();
	       return false;
	    }

	    if (s.PASSWORD.value == '') {
	       alert('비밀번호를 입력 해주세요')
	       s.PASSWORD.focus();
	       return false;
	    }
	    return true
	}
  
  window.onload = function() {
	    let btn = document.getElementById("btnList");
	    btn.onclick = function() {
	       alert('입력중인 내용이 사라집니다. 이동하시겠습니까?')
	       location.href = "<%= request.getContextPath() %>"
	    }
	}
	function goBack() {
	    alert('입력중인 내용이 사라집니다. 이동하시겠습니까?')
	    location.href = "<%= request.getContextPath() %>"
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

<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 mx-auto">
        <div class="block text-center">
          <h2 class="text-center">회원가입</h2>
          <form class="text-left clearfix mt-30" action="${ pageContext.request.contextPath }/signup" method="post" name="sForm"
          onsubmit="return doSignup()">
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="아이디" name="id">
            </div>
            <div class="form-group">
              <input type="password" class="form-control"  placeholder="비밀번호" name="pwd">
            </div>
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="성함" name="name">
            </div>
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="주민등록번호" name="ssn">
            </div>
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="성별 M/F" name="sex">
            </div>
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="연락처" name="phone">
            </div>
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="생일" name="birth">
            </div>
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="주소" name="address">
            </div>
            <button type="submit" class="btn btn-main text-center">회원가입</button>
            <input type="button" value="돌아가기" id="btnList" onclick="goBack()" class="btn btn-main text-center">
          </form>
          <p class="mt-20">이미 등록하신 손님이신가요?<a href="${ pageContext.request.contextPath }/login">로그인</a></p>
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