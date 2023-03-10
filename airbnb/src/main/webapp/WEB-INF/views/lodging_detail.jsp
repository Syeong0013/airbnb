<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 	<script src="/js/jquery-ui.js"></script> -->
    <script src="/js/calendar.js"></script>
    
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.16.0/moment.min.js"></script>
<!-- 	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script> -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.14.2/jquery.daterangepicker.min.js"></script>

    <link rel="stylesheet" href="/css/main.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.14.2/daterangepicker.min.css">
<!-- 	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" /> -->

    <link rel="stylesheet" href="/css/jquery-ui.css"/>
    <link rel="stylesheet" href="/css/calendar.css"/>
	<link rel="icon" href="/image/logo.png">
	<meta charset="UTF-8">
	<title><c:out value= '${vo.l_name}'/></title>

</head>
<body>
	<% Boolean isLogin = (String)session.getAttribute("user_id") == null ? false : true; %>
	<div class="wrap">
	    <div class="header">
	      <div class="logo-div">
	        <div class="logo-img" onclick="location.href='/'">
	        	<img src="/image/logo.png"/>
	        	<div class="logo-text">airbnb</div>
	        </div>
	      </div>
	      </div>
	      
	      <div class="content">
	      	<div id="lodging_info" data-value="<c:out value= '${vo.l_id }'/>" class="f_t_2"><c:out value= '${vo.l_name }'/></div>
	      	<div class="lodging_list_area2">
	      		<div class="pic_div2 big">
	      			<img src="pic_url?url=<c:out value= '${vo.pic_path_list[0] }'/>"/>
	      		</div>
	      		<div class="pic_div2">
	      			<img src="pic_url?url=<c:out value= '${vo.pic_path_list[1] }'/>"/>
	      		</div>
	      		<div class="pic_div2">
	      			<img src="pic_url?url=<c:out value= '${vo.pic_path_list[2] }'/>"/>
	      		</div>
	      		<div class="pic_div2">
	      			<img src="pic_url?url=<c:out value= '${vo.pic_path_list[3] }'/>"/>
	      		</div>
	      		<div class="pic_div2">
	      			<img src="pic_url?url=<c:out value= '${vo.pic_path_list[4] }'/>"/>
	      		</div>
	      	</div>
	      	
	      	<div class="">
	      		<div class="content_div">
				  	<div class="detail_div">
				  		<div class="title_info">
					      	<div class="f_t_4">
					      		<c:out value= "${vo.userVo.user_name }"/>?????? ??????????????? <c:out value= "${vo.building_code }"/>
					      	</div>
					      	<div class="f_5">
					      		?????? ?????? <c:out value= "${vo.basic_person }"/>??? ?? <c:out value= "?????? ${vo.bedroom_ea }"/>??? ?? ?????? <c:out value= "${vo.bed_ea }"/>??? ?? ?????? <c:out value= "${vo.bath_ea }"/>???
					      	</div>
					    </div>
					    <div class="exp_info">
					    	<c:out value= '${vo.l_exp }' escapeXml="false" />
					    </div>
					    <div class="facility_info">
					    	<div class="f_t_4" style="margin-bottom: 20px;">?????? ????????????</div>
					    	<div class="facility_info_list">
					    		<c:forEach var="list" items="${vo.facility_list}">
					    			<div>
					    				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" viewBox="0 0 45 45">
										  <path d=" <c:out value= '${list.F_ICON_ID}'/>"></path>
										</svg>
					    				<c:out value= "${list.F_NAME}" />
					    			</div>
					    		</c:forEach>
					    	</div>
					    </div>
					    <div id="datePicker_div">
					    
					    </div>
			      	</div>
			      	<div class="scroll_div">
			      		<div class="once_price"><span class="f_t_4">???
							<fmt:formatNumber value="${vo.basic_price}" pattern="#,###"/>
						</span> /???</div>
			      		<div id="reservation_info">
				      		<div id="reservation_date_info">
				      			<div style="border-right: 1px solid #ccc;">
				      				<div style="font-size: 10px;">?????????</div>
				      				<div id="checkIn_dd">?????? ??????</div>
				      			</div>
				      			<div>
				      				<div style="font-size: 10px;">????????????</div>
				      				<div id="checkOut_dd">?????? ??????</div>
				      			</div>
			      			</div>
<!-- 				      	</div> -->

<!-- 				      	<div id="reservation_per_info"> -->
							<div id="per_info">
				      			<div style="font-size: 10px;">??????</div>
				      			<div id="gest_no" data-value="1">????????? 1???</div>
			      			</div>
			      		</div>
			      		<button type="button" class="reservation_btn" onclick="checkLogin()">????????????</button>
			      		<div class="s_f_5" style="text-align: center;">?????? ?????? ????????? ????????? ???????????? ????????????.</div>
			      		
			      		<div class="bill_list">
			      			<div class="date"></div>
			      			<div class="total_price_div">
			      			<span>??? ??????</span><span class="total_price"></span>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
		      	<div class="ex_info_div">
		      		<div class="host_info">
				    	<div class="f_t_4" style="padding-bottom: 20px;">?????????: <c:out value= '${vo.userVo.user_name }'/>???</div>
				    	<div><c:out value= '${vo.userVo.user_name }'/>?????? ????????? ?????? <c:out value= '${vo.userVo.user_lvl }'/>?????????.</div>
<!-- 				    	<button type="button" onclick="connect_host">??????????????? ????????????</button> -->
				    
				    	<c:if test="${not empty vo.userVo.user_phone }">
				    		<div>??????: <c:out value= '${vo.userVo.user_phone }'/></div>
				    	</c:if>
				    	<c:if test="${not empty vo.userVo.user_email }">
				    		<div>??????: <c:out value= '${vo.userVo.user_email }'/></div>
				    	</c:if>
				    </div>
				    <div class="rule_info_div">
				    	<div class="f_t_4">?????????????????? ??????</div>
				    	<div class="rule_info">
				    		<div class="f_t_5">?????? ????????????</div>
				    		<div>????????? ?????? ??????: <c:out value= '${vo.checkin }'/> ??????</div>
				    		<div>???????????? ??????: <c:out value= '${vo.checkout }'/> ?????????</div>
				    	</div>
				    </div>
		      	</div>
	      	</div>
	      </div>
      </div>
      
      <footer>
      
      </footer>
      
      <script>
      	function checkLogin(){
      		if(<%= isLogin %>){
      			gotoReservation();
      		}else{
      			alert("????????? ??? ??????????????????.");
      			return;
      		}
      	}
      </script>
</body>

</html>
