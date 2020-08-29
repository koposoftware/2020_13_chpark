<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<section class="header  navigation" style="color: dee2e6">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="${ pageContext.request.contextPath }/resources/images/하나은행.png" alt="logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="tf-ion-android-menu"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <!--  
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                            </li>
                            -->
                           	<c:if test="${ empty loginVO }">
                            <li class="nav-item">
                                <a class="nav-link" href="${ pageContext.request.contextPath }/login">로그인</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${ pageContext.request.contextPath }/signup">회원가입</a>
                            </li>
                           	</c:if>
                           	<c:if test="${ not empty loginVO }">
                            <li class="nav-item">
                                <a class="nav-link" href="${ pageContext.request.contextPath }/mypage/${loginVO.id}">마이페이지</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${ pageContext.request.contextPath }/logout">로그아웃</a>
                            </li>
                           	</c:if>
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
                                    <a class="dropdown-item" href="${ pageContext.request.contextPath }">번호표 확인</a>
                                    <a class="dropdown-item" href="${ pageContext.request.contextPath }/numberTicket_branch">지점 검색</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                
            </div>
        </div>
    </div>
</section>