<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<style>
	*{
    font-family: "Roboto", sans-serif !important;
	}
</style>
<section class="header  navigation" style="color: dee2e6">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand" href="${ pageContext.request.contextPath }/index.jsp">
                        <img src="${ pageContext.request.contextPath }/resources/images/하나은행.png" alt="logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="tf-ion-android-menu"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <c:choose>
							    <c:when test="${empty loginVO }">
       	                            <li class="nav-item">
		                                <a class="nav-link" href="${ pageContext.request.contextPath }/login">로그인</a>
		                            </li>
		                            <li class="nav-item">
		                                <a class="nav-link" href="${ pageContext.request.contextPath }/signup">회원가입</a>
		                            </li>
		                            <li class="nav-item">
		                                <a class="nav-link" href="${ pageContext.request.contextPath }/board">손님의 소리</a>
		                            </li>
		                            <li class="nav-item">
		                                <a class="nav-link" href="${ pageContext.request.contextPath }/">하나은행</a>
		                            </li>
		
		                            <li class="nav-item dropdown">
		                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                                    	모바일 번호표
		                                </a>
		                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		                                    <a class="dropdown-item" href="${ pageContext.request.contextPath }/numberTicket_1">번호표 발급</a>
		                                    <a class="dropdown-item" href="${ pageContext.request.contextPath }/numberTicket_my">번호표 확인</a>
		                                    <a class="dropdown-item" href="${ pageContext.request.contextPath }/numberTicket_branch">지점 검색</a>
		                                </div>
		                            </li>
							    </c:when>
							    <c:otherwise>
							    	<c:if test="${loginVO.type eq 'A'}">
								    	<li class="nav-item">
			                                <a class="nav-link" href="${ pageContext.request.contextPath }/numberTicket_admin">대기인원확인</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" href="${ pageContext.request.contextPath }/logout">로그아웃</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" href="${ pageContext.request.contextPath }/numberTicket/analysis">분석</a>
			                            </li>
			                            <li class="nav-item">
			                               [${ loginVO.branchName }지점 ${ loginVO.tellerName } 님]
			                            </li>
							    	</c:if>
							    	
							    	<c:if test="${loginVO.type eq 'U'}">
								    	<li class="nav-item">
			                                <a class="nav-link" href="${ pageContext.request.contextPath }/mypage/${loginVO.id}">마이페이지</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" href="${ pageContext.request.contextPath }/logout">로그아웃</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" href="${ pageContext.request.contextPath }/board">손님의 소리</a>
			                            </li>
			                            <li class="nav-item">
			                                <a class="nav-link" href="${ pageContext.request.contextPath }/">하나은행</a>
			                            </li>
			
			                            <li class="nav-item dropdown">
			                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			                                    	디지털 번호표
			                                </a>
			                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			                                    <a class="dropdown-item" href="${ pageContext.request.contextPath }/numberTicket_1">번호표 발급</a>
			                                    <a class="dropdown-item" href="${ pageContext.request.contextPath }/numberTicket_my">번호표 확인</a>
			                                    <a class="dropdown-item" href="${ pageContext.request.contextPath }/numberTicket_branch">지점 검색</a>
			                                </div>
			                            </li>
			                            <li class="nav-item">
			                                [${ loginVO.name }님 환영합니다.]
			                            </li>
							    	</c:if>
							    </c:otherwise>

							</c:choose>	

                           	
                        </ul>
                    </div>
                </nav>
                
            </div>
        </div>
    </div>
</section>