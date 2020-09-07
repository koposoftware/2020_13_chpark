<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
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
<script type="text/javascript">
function goWriteForm() {
   //location.href = "writeForm.jsp";
   location.href = "${ pageContext.request.contextPath }/board/write";
}
function doAction(boardNo){
//   location.href = "${ pageContext.request.contextPath }/board/detail?no=" + boardNo";
   location.href = "${ pageContext.request.contextPath }/board/" + boardNo;
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
		<%-- contextPath 밑에 webapp가 루트 --%>
		<%-- 지시자는 복붙 액션은 메소드 호출 화면 자체는 같음  --%>
		<%-- <%@include file="/WEB-INF/jsp/include/topMenu.jsp" %> --%>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>

	<section class="service-2 section bg-gray">
   	 <div align="center" class="container">
         <hr width="80%">
         <h2>손님의 소리</h2>
         <hr width="80%">
         <table border="1" style="width: 80%;">
            <tr>
               <th width="7%">번호</th>
               <th>제목</th>
               <th width="16%">글쓴이</th>
               <th width="20%">등록일</th>
            </tr>
            <c:forEach items="${ boardList }" var="board" varStatus="loop">
               <tr <c:if test="${ loop.count mod 2 eq 0 }">class="even"</c:if>>
                  <td>${ board.no }</td>
                  <td>
                  <a href="javascript:doAction(${ board.no })">
                     <c:out value="${ board.title }" />
                  </a>
                  </td>
                  <td>${ board.writer }</td>
                  <td>${ board.regDate }</td>
               </tr>
            </c:forEach>
         </table>
         <br>
         <c:if test="${ not empty loginVO }">
            <button onClick="goWriteForm()">새글 등록</button>
         </c:if>
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