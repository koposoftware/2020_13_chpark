<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<style>
	.top-footer {
  		background-color: #222222;
  		border-top: 1px solid #404040;
  		padding: 30px 0 30px;
	}	
	
	*{
    font-family: "Hana CM"
	}
	
	body{
    font-family: "Hana CM";
      
   }
   @font-face {
      font-family: Hana CM;
      src: url('${ pageContext.request.contextPath }/resources/css/font/HanaCM.TTF');
   }
</style>  
<footer id="footer" class="bg-one">
  <div class="top-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>INFORMATION</h3>
          <ul>
            <li><a href="https://www.hanati.co.kr/kor/main.jsp">하나금융티아이</a></li>
            <li><a href="https://www.hanafn.com:8002/main.do">하나금융그룹</a></li>
            <li><a href="https://www.kebhana.com/">하나은행</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->
		
		<div class="col-sm-3 col-md-3 col-lg-3">
          <h3>ABOUT US</h3>
          <ul>
            <li><a href="https://www.youtube.com/user/HanabankNewBiz">하나은행 TV</a></li>
            <li><a href="https://www.youtube.com/channel/UCUqMORjaZEGif1XeSAlqq8Q">하나금융티아이 TV</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->
       
        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>ABOUT US</h3>
          <ul>
              <li><a href="https://github.com/koposoftware/2020_13_chpark">GitHub</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->

      </div>
    </div> <!-- end container -->
  </div>
  <div class="footer-bottom">
    <h5>Copyright 2020. All rights reserved.</h5>
    <h6>Design and Developed by <a href="https://github.com/park-cheonho">박천호</a></h6>
  </div>
</footer> <!-- end footer -->