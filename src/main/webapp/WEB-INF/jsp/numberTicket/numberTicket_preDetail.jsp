<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta charset="UTF-8">
<title>사전 제출 서식 상세</title>
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
	case 'D':
		if(confirm('삭제하시겠습니까?')) {
			location.href = "${ pageContext.request.contextPath }/numberTicket/numberTicket_pre"
		}
		break;
	case 'R':
		location.href = "${ pageContext.request.contextPath }/numberTicket/numberTicket_pre";
		break;
	}
}
</script>
</head>
<body>

<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>

	<section class="service-2 section bg-gray">
		<div align="center" class="container">
			<div class="row">
				<div class="col-md-12 mx-auto">
					<div class="block text-center">
						<h2>사전 작성 서식 페이지</h2>
						<br>

						<table border="1" style="width: 100%" class="table table-bordered">
							<tr>
								<th width="25%">번호표 번호</th>
								<td>${ pre.numberticketNumber }</td>
							</tr>
							<tr>
								<th width="25%">손님 성함</th>
								<td><c:out value="${ pre.userId }" /></td>
							</tr>
							<tr>
								<th width="25%">업무 분류</th>
								<td>${ pre.serviceName }</td>
							</tr>
							<tr>
								<th width="25%">입금 은행</th>
								<td>${ pre.preSubmitBankName }</td>
							</tr>
							<tr>
								<th width="25%">입금 계좌 번호</th>
								<td>${ pre.preSubmitInputAccountNumber }</td>
							</tr>
							<tr>
								<th width="25%">현금 입금액</th>
								<td>${ pre.preSubmitCashInput }</td>
							</tr>
							<tr>
								<th width="25%">수표 입금액</th>
								<td>${ pre.preSubmitCheckInput }</td>
							</tr>
							<tr>
								<th width="25%">통장 메모</th>
								<td>${ pre.preSubmitMemo }</td>
							</tr>
						</table>
						<br>
						<c:if test="${ loginVO.type eq 'A'}">
							<input type="button" value="삭제" onclick="doAction('D')" class="btn btn-main mb-2">&nbsp;&nbsp;
							<input type="button" value="뒤로가기" onclick="doAction('R')" class="btn btn-main mb-2">&nbsp;&nbsp;
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<%-- contextPath 밑에 webapp가 루트 --%>
		<%@include file="/WEB-INF/jsp/include/footerBottom.jsp"%>
	</footer>
	
	<!-- Main jQuery -->
	<script
		src="${ pageContext.request.contextPath }/resources/plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="${ pageContext.request.contextPath }/resources/plugins/bootstrap/dist/js/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Owl Carousel -->
	<script
		src="${ pageContext.request.contextPath }/resources/plugins/slick-carousel/slick/slick.min.js"></script>
	<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
	<!-- Smooth Scroll js -->
	<script
		src="${ pageContext.request.contextPath }/resources/plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>

	<!-- Custom js -->
	<script
		src="${ pageContext.request.contextPath }/resources/js/script.js"></script>

</body>
</html>