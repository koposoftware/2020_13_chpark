<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Mobile Specific Meta
  ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${ pageContext.request.contextPath }/resources/images/favicon/favicon.ico" />

<!-- CSS
  ================================================== -->
<!-- Themefisher Icon font -->
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/plugins/themefisher-font.v-2/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/plugins/bootstrap/dist/css/bootstrap.min.css">
<!-- Slick Carousel -->
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/plugins/slick-carousel/slick/slick-theme.css">
<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="/Project-spring-mvc/resources/css/style.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
  function getReplyList() {
		//alert('리스트 로드');
		// 해당 게시물의 댓글 리스트 조회 하기 -> <div id="replyList" />에 조회 데이터 업데이트
		$.ajax({
			url : '${ pageContext.request.contextPath }/reply/${ board.no }',
			type : 'get',
			success : function(data) { // data의 타입이 스트링이다 자바스크립트에서 사용하려면 JSON으로 스트링을 바꿔야함
				
				//성공했다면 새로 리스트 뜰때 기존꺼에 append 되지 않도록 하위 항목 지우는 .empty
				$('#replyList').empty();
				
				//alert('댓글 등록 성공')
				console.log(data)
				let list = JSON.parse(data);
				console.log(list)
				
				//for(i = 0; i < list.length; i++) {
				//	console.log(list[i])
				//}
				//$('#replyList').html('');
				$(list).each(function() {
					console.log(this)
					
					let str = '';
					str += '<hr>';
					str += '<div>';
					str += '<strong>' + this.content + '</strong>';
					str += '&nbsp;&nbsp;&nbsp;';
					str += '(' + this.writer + ')';
					str += '&nbsp;&nbsp;&nbsp;';
					str += this.regDate + '&nbsp;&nbsp;&nbsp;';
					str += '<button class="delBtn" id=' + this.no + '>삭제</button>';
					str += '</div>';
					
					$('#replyList').append(str);
				})
			},
			error : function() {
				alert('댓글 등록 실패')
			}
		})
	}
  $(document).ready(function() {
		$('#replyAddBtn').click(function() {
			let content = document.rform.content.value;
			let writer = document.rform.writer.value;
			
			//ajax로 3가지 넘겨야함 content writer board.no
			// reply/insert?boardNO
			$.ajax({
				url : '${ pageContext.request.contextPath }/reply',
				type : 'post',
				data : {
					boardNo : ${ board.no },
					content : content,
					writer : writer
				},
				success : function() {
					alert('댓글 등록 성공')
					document.rform.content.value = '';
					document.rform.writer.value = '';
					getReplyList();
				}, error : function() {
					alert('댓글 등록 실패')
				}
			})		
		})
	})
	// 화면 뜨자마자 리스트 나오게
	$(document).ready(function() {
		getReplyList();
	})
	
	$(document).ready(function() {
		$(document).on('click', '.delBtn', function() {
			//alert('click');
			
			if(!confirm('댓글을 삭제하시겠습니까?')) return;
			
			let replyNo = $(this).attr('id');
			console.log(replyNo);
			
			$.ajax({
				url : '${ pageContext.request.contextPath }/reply/' + replyNo + '/${board.no}',
				type : 'delete',
				success : function() {
					alert('성공')
					getReplyList()
				},
				error : function() {
					alert('실패')
				}
			});
			/* 대기
			$.ajax({
				url : '${ pageContext.request.contextPath }/reply/' + replyNo,
				type : 'delete',
				success : function() {
					alert('성공')
					getReplyList()
				},
				error : function() {
					alert('실패')
				}
			});
			*/
		})
	})
  
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

	<section class="service-2 section bg-gray">
		<div align="center">
			<hr>
			<h2>게시판 상세 페이지</h2>
			<hr>
			<br>
			<table border="1" style="width: 80%"
				class="table table-striped table-condensed">
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
					<td><c:forEach items="${ fileList }" var="file">
							<a href="/Mission-WEB/upload/${ file.fileSaveName }"> ${ file.fileOriName }
							</a>
				(${ file.fileSize } bytes)<br>
						</c:forEach></td>
				</tr>
			</table>
			<br>
			<c:if test="${ loginVO.id == board.writer }">
				<input type="button" value="수정" id="modify" onclick="doAction('M')"
					class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;	
	<input type="button" value="삭제" onclick="doAction('D')"
					class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;	
	</c:if>
			<input type="button" value="목록" onclick="doAction('L')"
				class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;
			<c:if test="${ loginVO.type eq 'S'}">
				<input type="button" value="삭제" onclick="doAction('D')"
					class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;
	<input type="button" value="답글" onclick="doAction('R')"
					class="btn btn-primary py-1 px-3 m-3">&nbsp;&nbsp;
	</c:if>

			<br>
			<hr>
			<form name="rform">
				댓글 : <input type="text" name="content" size="50"> 이름 : <input
					type="text" name="writer" size="10">
				<%-- 서밋을 쓰면 post니까 피하려고 --%>
				<input type="button" value="댓글추가" id="replyAddBtn">
			</form>

			<div id="replyList"></div>

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