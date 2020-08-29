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
  function doAction(type) {
		switch (type) {
		case 'M':
			if(confirm('수정하시겠습니까?')) {
				location.href = "${ pageContext.request.contextPath }/board"
			}
			break;
		case 'D':
			if(confirm('삭제하시겠습니까?')) {
				location.href = "${ pageContext.request.contextPath }/board"
			}
			break;
		case 'L':
			location.href = "${ pageContext.request.contextPath }/board";
			break;
		case 'R':
			location.href = "${ pageContext.request.contextPath }/board";
			break;
		}
	}
  </script>
</head>
<body>
	<header>
		<%-- contextPath 밑에 webapp가 루트 --%>
		<%-- 지시자는 복붙 액션은 메소드 호출 화면 자체는 같음  --%>
		<%-- <%@include file="/WEB-INF/jsp/include/topMenu.jsp" %> --%>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	
	<section>
	<div align="center">
	<hr>
	<h2>게시판 상세 페이지</h2>
	<hr>
	<br>
	<table border="1" style="width: 80%" class="table table-striped table-condensed">
		<tr>
			<th width="25%">번호</th>
			<td>${ board.no }</td>
		</tr>
		<tr>
			<th width="25%">제목</th>
			<td><c:out value="${ board.title }" /></td>
		</tr>
		<tr>
			<th width="25%">글쓴이</th>
			<td>${ board.writer }</td>
		</tr>
		<tr>
			<th width="25%">내용</th>
			<td>${ board.content }</td>
		</tr>
		<tr>
			<th width="25%">조회수</th>
			<td>${ board.viewCnt }</td>
		</tr>
		<tr>
			<th width="25%">등록일</th>
			<td>${ board.regDate }</td>
		</tr>
		<tr>
			<th width="25%">첨부파일</th>
			<td>
			<c:forEach items="${ fileList }" var="file">
				<a href="/Mission-WEB/upload/${ file.fileSaveName }">
				${ file.fileOriName }
				</a>
				(${ file.fileSize } bytes)<br>
			</c:forEach>
			</td>
		</tr>
	</table>
	<br>
	<c:if test="${ loginVO.id == board.writer }">
	<input type="button" value="수정" id="modify" onclick="doAction('M')" class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;	
	<input type="button" value="삭제" onclick="doAction('D')" class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;	
	</c:if>
	<input type="button" value="목록" onclick="doAction('L')" class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;	
	<c:if test="${ loginVO.type eq 'S'}">
	<input type="button" value="삭제" onclick="doAction('D')" class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;
	<input type="button" value="답글" onclick="doAction('R')" class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;
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