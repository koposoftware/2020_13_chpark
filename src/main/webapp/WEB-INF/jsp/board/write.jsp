<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
  <link rel="stylesheet" href="/Project-spring-mvc/resources/plugins/themefisher-font.v-2/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="/Project-spring-mvc/resources/plugins/bootstrap/dist/css/bootstrap.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick-theme.css">
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="/Project-spring-mvc/resources/css/style.css">
</head>
<style>
	.error {
		color : red
	}
</style>
<body>
	<header>
		<%-- contextPath 밑에 webapp가 루트 --%>
		<%-- 지시자는 복붙 액션은 메소드 호출 화면 자체는 같음  --%>
		<%-- <%@include file="/WEB-INF/jsp/include/topMenu.jsp" %> --%>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>

<section class="service-2 section bg-gray">
	<div align="center" class="container">
		<div class="row">
      		<div class="col-md-8 mx-auto">
        		<div class="block text-center">
					<h2>게시글 등록</h2>
		
		<form:form commandName="boardVO" method="post" class="text-left clearfix mt-30">
			<table border="1" style="width: 100%" class="table table-bordered">
				<tr>
					
					<th width="20%">글제목</th>
					<td>
						<div class="form-group">
						<!-- path 는 get.title -->
						<form:input path="title" class="form-control"/><form:errors path="title" class="error" />
						</div>
					</td>
				</tr>
				<tr>
					<th width="20%">글쓴이</th>
					<td>
						<!-- path 는 get.title -->
						<div class="form-group">
						<form:input path="writer" class="form-control"/><form:errors path="writer" class="error" />
						</div>
					</td>			
				</tr>
				<tr>
					<th width="20%">글내용</th>
					<td>
						<!-- path 는 get.title -->
						<div class="form-group">
						<form:textarea path="content" rows="7" cols="50" class="form-control"/>
						<form:errors path="content" class="error" />
						</div>
					</td>			
				</tr>
			</table>
			
			<button type="submit" class="btn btn-main mb-2" style="text-align: center">등록</button>
		</form:form>
			   </div>
      		</div>
   		 </div>
		</div>
	</section>
	<footer>
		<%-- contextPath 밑에 webapp가 루트 --%>
		<%@include file="/WEB-INF/jsp/include/footerBottom.jsp" %>
	</footer>
	
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