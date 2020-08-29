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
<title>로그인</title>
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
	function checkForm() {
		
		var f = document.lForm;
		
		if(isNull(f.id, '아이디를 입력하세요'))
			return false;
		if(isNull(f.password, '비밀번호를 입력하세요'))
			return false;
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

<%-- <section>
      <div align="center">
         <br>
         <hr>
         <h2>로그인</h2>
         <hr>
         <br>
         <form action="${ pageContext.request.contextPath }/login" method="post" onsubmit="return checkForm()" name="lform">
            <table style="width: 40%">
               <tr>
                  <th>ID</th>
                  <td><input type="text" name="id"></td>
               </tr>
               <tr>
                  <th>PASSWORD</th>
                  <td><input type="password" name="pwd"></td>
               </tr>
            </table>
            <br>
            <button type="submit">로그인</button>
         </form>
      </div>
</section> --%>

<section class="signin-page account">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="block">
                    <h2 class="text-center">로그인</h2>
                    
         				<form action="${ pageContext.request.contextPath }/login" method="post" onsubmit="return checkForm()" name="lform">
                        <div class="form-group">
                            <input type="text" class="form-control"  placeholder="ID" name="id">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" name="pwd">
                        </div>
                        <button type="submit" class="btn btn-main" >로그인</button>
                        
                    </form>
                    <p class="mt-20">New in this site ?<a href="${ pageContext.request.contextPath }/signup"> 회원가입 </a></p>
                    <!--  <p><a href="forget-password.html"> Forgot your password?</a></p> -->
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