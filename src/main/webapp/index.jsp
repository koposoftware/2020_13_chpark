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
<title>하나은행</title>
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
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/style.css">
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


  

<!--
Fixed Navigation
==================================== -->
<!--  
<section class="top-header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <ul class="currency-status">
                    <li>
                        <a href="#">
                            <i class="tf-ion-arrow-down-b down-status"></i>
                            <span>BTC/USD</span>
                            <span>15046.07</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="tf-arrow-dropup up-status"></i>
                            <span>ETH/USD</span>
                            <span >843.0005</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="tf-arrow-dropup up-status"></i>
                            <span>BCH/USD</span>
                            <span>2648.1377</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="tf-arrow-dropup up-status"></i>
                            <span>BTG/USD</span>
                            <span>278.0000</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="tf-arrow-dropup down-status"></i>
                            <span>DASH/USD</span>
                            <span>1131.8100</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="tf-arrow-dropup down-status"></i>
                            <span>XRP/USD</span>
                            <span>2.1956</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="tf-arrow-dropup up-status"></i>
                            <span>ZEC/USD</span>
                            <span>2.1956</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
-->
<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
</header>

 <!--
Welcome Slider
==================================== -->

<section class="hero-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 align-self-center mb-4 mb-lg-0">
				<div class="video-player">
					<img class="img-fluid rounded" src="${ pageContext.request.contextPath }/resources/images/slider/slider-bg-2.jpg" alt="">
					<a class="play-icon">
						<i class="tf-ion-ios-play" data-video="https://www.youtube.com/embed/g3-VxLQO7do?autoplay=1"></i>
					</a>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="block">
					<h2>손님의 행복  <br> 그 하나를 위해</h2>
					<p>우리가 하나된다면 넘지 못할 위기는 없습니다. <br> 하나금융그룹은 대한민국과 함께합니다. </p>
					<ul class="list-inline">
						<li class="list-inline-item">
							<a href="https://www.hanafn.com:8002/main.do" class="btn btn-main">하나금융그룹 알아보기</a>		
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>	

<!--
Start About Section
==================================== -->
<section class="service-2 section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="title text-center">
          <h4>하 나 은 행</h4>
          <h2>모바일 번호표 사용법</h2>
          <span class="border"></span>
          <p>쉽고 편하게 스마트하게! 하나에선 더이상 기다릴 필요 없습니다!</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 p-0">
        <div class="service-item text-center">
            <span class="count">1.</span>
            <h4>지점과 업무 선택</h4>
            <p>손님이 원하시는 지점과 이용하시는 업무를 정해주세요</p>
        </div>
      </div>
      <div class="col-md-4 p-0">
        <div class="service-item text-center">
          <span class="count">2.</span>
          <h4>필요 서류 확인</h4>
          <p>선택하신 업무에 필요한 서류를 미리 확인하고 준비하세요</p>
        </div>
      </div>
      <div class="col-md-4 p-0">
        <div class="service-item text-center">
          <span class="count">3.</span>
          <h4>번호표 발급</h4>
          <p>번호표를 발급 받고 여유있게 지점에 방문하세요</p>
        </div>
      </div>
    </div>    <!-- End row -->
  </div>    <!-- End container -->
</section>   <!-- End section -->


<!-- Start 홍보 Section
=========================================== -->
<section class="blog section" id="blog">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="title text-center">
					<h4>하나 소식</h4>
					<h2>하나의 소식을 전해드립니다</h2>
					<span class="border"></span>
					<p>언론 보도 자료 모음 입니다.</p>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- single blog post -->
			<article class="col-12 col-md-6" >
				<div class="post-item">
					<div class="post-thumb">
					  	<img class="img-fluid shadow rounded" src="${ pageContext.request.contextPath }/resources/images/hana_ad2.jpg" alt="Generic placeholder image">
					</div>
			  		<div class="post-title">
				    	<h3 class="mt-0"><a href="">폴리텍-하나금융, 디지털 뉴딜 선도 인재 양성 박차</a></h3>
			  		</div>
			  		<div class="post-meta">
			  			<div class="post-meta">
				  			<ul class="list-inline">
				  				<li class="list-inline-item">
				  					<!-- <span>By</span> <a href="" class="">Jonathon Ive</a> -->		
				  				</li>
				  				<li class="list-inline-item">
				  					<span>By</span> <span> 2020.07.29</span>		
				  				</li>
							</ul>
				  		</div>
			  		</div>
			  		<div class="post-content">
					    <p>지성규 하나은행장은 “디지털 인재 양성이 무엇보다 중요한 시기에 신기술·신산업 분야 교육훈련을 주도하는 폴리텍과 지속해서 협력해 나갈 것”이라며 “포스트 코로나 이후 한국판 뉴딜의 성공적 추진을 위해 하나금융그룹이 마중물 역할을 할 것”이라고 밝혔다.</p>
			  		</div>
				    <a class="btn btn-main" href="http://www.epnc.co.kr/news/articleView.html?idxno=101203">Read more</a>
				</div>
			</article>
			<!-- /single blog post -->
			
			<!-- single blog post -->
				<article class="col-12 col-md-6" >
					<div class="post-item">
						<div class="post-thumb">
						  	<img class="img-fluid shadow rounded" src="${ pageContext.request.contextPath }/resources/images/hana_ad1.jpg" alt="Generic placeholder image" 
						  	style="height: 275px">
						</div>
				  		<div class="post-title">
					    	<h3 class="mt-0"><a href="">하나금융티아이, 차별화된 디지털·글로벌·데이터전략 추진</a></h3>
				  		</div>
				  		<div class="post-meta">
				  			<ul class="list-inline">
				  				<li class="list-inline-item">
				  					<!-- <span>By</span> <a href="" class="">Jonathon Ive</a> -->		
				  				</li>
				  				<li class="list-inline-item">
				  					<span>By</span> <span> 2020.06.26</span>		
				  				</li>
							</ul>
				  		</div>
				  		<div class="post-content">
						    <p>하나금융티아이는 하나금융그룹의 '앞서가는 디지털 금융그룹, 손님 중심의 데이터 기반 정보회사'로 발돋움하기 위한 중추적 역할을 수행하고 있다.특히 2020년 창립 30주년을 맞아 새로운 경영 슬로건 'Next 3·2·1- 함께 이룬 30년, 새롭게 여는 2020, 가치를 높이는 1000명'을 선포하고 디지털·글로벌·데이터전략 실행을 위한 거버넌스와 사업 포트폴리오 혁신을 추진하고 있다.</p>
				  		</div>
					    <a class="btn btn-main" href="https://www.mk.co.kr/news/special-edition/view/2020/06/654335/">Read more</a>
					</div>
				</article>
			<!-- end single blog post -->
			
		</div> <!-- end row -->
	</div> <!-- end container -->
</section> <!-- end section -->
				

<!--
Start Call To Action
==================================== -->
<section class="call-to-action section-sm">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h2>모두의 기쁨 그 하나를 위하여!</h2>
				<p>직원, 손님, 사회 모두가  행복한 금융 <br> 함께 성장하며 행복을 나누는 금융 하나금융그룹이 앞장서겠습니다.</p>
				<a href="https://www.hanafn.com:8002/info/aboutus.do" class="btn btn-main">그룹소개</a>
			</div>
		</div> 		<!-- End row -->
	</div>   	<!-- End container -->
</section>   <!-- End section -->

<footer>
		<%--include forward .xml은 root = / 가 Mission-WEB/ 임 --%>
		<%@ include file="/WEB-INF/jsp/include/footerBottom.jsp" %>	
</footer>
    
    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="${ pageContext.request.contextPath }/resources/plugins/jquery/dist/jquery.min.js"></script>
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