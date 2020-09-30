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
<title>내 번호표 확인</title>
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
<script src="${ pageContext.request.contextPath }/resources/plugins/jquery/dist/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-dialog/master/dist/ax5dialog.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.css" />

<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-dialog/master/dist/ax5dialog.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-mask/master/dist/ax5mask.min.js"></script>

<style type="text/css">
	.ax5-ui-dialog .ax-dialog-header,.btn-default,.btn-default:hover,.btn-default:focus{
		background: #31BB9E;
		color: #fff;
		border: none;
	}

</style>
<script type="text/javascript">

	$(function(){
		var dialog = new ax5.ui.dialog();
		var mask = new ax5.ui.mask();
		dialog.setConfig({
		     title: "번호표 확인",
		     lang : {
		    	 ok : '확인'
		     },
		     onStateChanged: function () {
		         if (this.state === "open") {
		             mask.open();
		         }
		         else if (this.state === "close") {
		             mask.close();
		         }
		     }
		});
		
		var firstGrid = new ax5.ui.grid();
		
	    firstGrid.setConfig({
            target: $('[data-ax5grid="first-grid"]'),
            columns: [
                {key: "branchName", label: "지점" ,width :'20%'},
                {key: "serviceName", label: "업무" , width :'20%'},
                {key: "numberticketNumber", label: "번호" , width :'20%'},
                {key: "numberticketDate", label: "일자" , width :'20%'},
                {key: "numberticketTime", label: "발급시간" , width :'20%'}
            ],
            body: {
            	onDBLClick: function(){
            		var json = this.list[this.dindex];
	    			var tableTag = "";
	    			tableTag+='<table style="width: 100%;">';
	    			
	    			tableTag+='<colgroup>';
	    			tableTag+='<col style="width:100px;">';
	    			tableTag+='<col>';
	    			tableTag+='</colgroup>';
	    			tableTag+='<tr>';
	    			tableTag+='<th>지점</th>';
	    			tableTag+='<td>'+json['branchName']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>창구</th>';
	    			tableTag+='<td>'+json['serviceName']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>번호</th>';
	    			tableTag+='<td>'+json['numberticketNumber']+'</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>대기인원</th>';
	    			tableTag+='<td>'+json['standby']+'명</td>';
	    			tableTag+='</tr>';
	    			
	    			tableTag+='<tr>';
	    			tableTag+='<th>대기시간</th>';
	    			tableTag+='<td>약'+json['standbyTime']+'분</td>';
	    			tableTag+='</tr>';
	    			tableTag+='</table>';
	    			dialog.alert(tableTag);
                },
            }
        });
	    
	    
	    $.ajax({
    		url : '${ pageContext.request.contextPath }/numberservice/userTicket',	
    		type : 'get',
    		success : function (data){
    			var json = JSON.parse(data);
    			firstGrid.setData(json);
    			console.log(json);
    			console.log(json[0].branchName);
    			console.log(json[0].serviceName);
    			console.log(json[0].numberticketNumber);
    			$('#serviceName').val(json[0].serviceName);
    			$('#branchName').val(json[0].branchName);
    			$('#numberticketNumber').val(json[0].numberticketNumber);
    		}
	    })
	    
	    
	    function doPresubmit() {
	    //지금은 굳이 onload안써도 됨

	    let p = document.pForm;
	    if (p.bankName.value == '') {
	       alert('입금 은행명을 선택하세요')
	       p.bankName.focus();
	       return false;
	    }

	    if (p.inputAccountNumber.value == '') {
	       alert('입금 계좌 번호를 입력 해주세요')
	       p.inputAccountNumber.focus();
	       return false;
	    }

	    if (p.cashInput.value == '' || p.checkInput.value == '') {
	       alert('비밀번호를 입력 해주세요')
	       p.cashInput.focus();
	       p.checkInput.focus();
	       return false;
	    }
	    return true
	}
	})
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

<div class="row justify-content-center">

<div style="width:70%;height:300px; border:1px solid green; text-align: center; margin: 0 auto;">
	<div data-ax5grid="first-grid" style="height: 100%;"></div>
</div>
<div>
<br>
<br>
</div>
<div style="width:70%;">

<h2>사전 서식작성</h2> 
<P>아래의 서식 중 원하는 서식을 미리 작성하시면 고객님의 소중한 시간을 절약할 수 있습니다.</P>

<details>
<summary style="border: 1px solid black; padding: 3px;">입금(무통장, 수표)</summary>
        <div class="block text-center" style="border: 1px solid black; padding: 3px;">
          <form class="text-left clearfix mt-30" action="${ pageContext.request.contextPath }/numberTicket/preSubmit" method="post" name="pForm" onsubmit="return doPresubmit()">
            <div class="form-group">
                <table border="1">
                <input type="hidden" name="userId" value="${ loginVO.name }">
                <input type="hidden" name="serviceId" value="100">
                <input type="hidden" name="serviceName" id="serviceName">
                <input type="hidden" name="branchName" id="branchName">
                <input type="hidden" name="numberticketNumber" id="numberticketNumber">
				<tr>
					<th class="form-control">입금 계좌 은행</th>
					<td>
						<select name="preSubmitBankName">
							<option value="하나은행">하나은행</option>
							<option value="신한은행">신한은행</option>
							<option value="국민은행">국민은행</option>
							<option value="우리은행">우리은행</option>
						</select>
					</td>
				</tr>
				<tr>
					<th class="form-control">입금 계좌 번호</th>
					<td><input type="text" name="preSubmitInputAccountNumber" size="30" class="form-control"></td>
				</tr>
				<tr>
					<th class="form-control">현금 금액 입력</th>
					<td><input type="text" name="preSubmitCashInput" size="30" class="form-control"></td>
				</tr>
				<tr>
					<th class="form-control">수표 금액 입력</th>
					<td><input type="text" name="preSubmitCheckInput" size="30" class="form-control"></td>
				</tr>
				<tr>
					<th class="form-control">메모</th>
					<td><input type="text" name="preSubmitMemo" size="30" class="form-control"></td>
				</tr>
				</table>    
				<br>
				<p>* 통장을 소지하고 계시지 않아도 현금 또는 수표 입금이 가능합니다.</p>
				<p>* 본인 또는 타인의 하나은행 뿐만 아니라 타행계좌로도 입금이 가능합니다.</p> 
            </div>
            <button type="submit" class="btn btn-main text-center" id="btnList" name="submit">확인</button>
          </form>
         </div>
</details>

</div>

</div>

<br><br>

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