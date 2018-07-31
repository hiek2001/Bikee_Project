<%@page import="shop.model.vo.Shop"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= '/views/common/header.jsp' %>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=38dbe520351223d7e0dbf19bedaa6d68&libraries=services"></script>
	<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Cute+Font|Do+Hyeon|Sunflower:300" rel="stylesheet">
	<%
		Shop s = (Shop)request.getAttribute("shop");
	%>
	<script>
	function drawMap(addr){
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(33.450701, 126.570667),
			level: 5
		};
		var map = new daum.maps.Map(container, options);
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(addr, function(result, status) {

			     // 정상적으로 검색이 완료됐으면 
			     if (status === daum.maps.services.Status.OK) {

			        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
			         // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new daum.maps.Marker({
			            map: map,
			            position: coords
			        });
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new daum.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;"><img style="width:100px;height:30px;" src = "/Bikee_project/images/logo.jpg"></div>'
			        }); 
			        infowindow.open(map, marker);

			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } 
			});
	}
	function writeShopInfo(code){
		$.ajax({
			url:"<%=request.getContextPath()%>/course/changeShopInfo",
			data : {shopId:code},
			type:"get",
			success : function(data){
				var s = data.shop;
				var info = "<p>"+data.shop.shopName+" (tel."+s.shopPhone+")</p>";
				info += "<p>주소 : "+data.shop.shopAddr+"</p>"
				info += "<p>운영 시간 : "+data.shop.shopAddr+"</p>"
				info += "<p>보유 자전거 종류 : "+data.shop.shopAddr+"</p>"
				info += "<p> : "+data.shop.shopAddr+"</p>"
				info += "<p>주소 : "+data.shop.shopAddr+"</p>"
				info += "<p>주소 : "+data.shop.shopAddr+"</p>"
				
				$('#info').html(info);
			},
			error:function(jxhr,textStatus,error)
			{
				console.log("ajax실패!");
				console.log(jxhr);
				console.log(textStatus);
				console.log(error);
			}
		});
	}
	function writeShopInfo(code){
		$.ajax({
			url:"<%=request.getContextPath()%>/course/changeShopInfo",
			data : {shopId:code},
			type:"get",
			success : function(data){
				var s = data.shop;
				drawMap(s.shopAddr);
				var info = "<p>"+s.shopName+" (tel."+s.shopPhone+")</p>";
				info += "<p>주소 : "+s.shopAddr+"</p>";
				info += "<p>운영 시간 : "+s.shopAddr+"</p>";
				info += "<p>보유 자전거 종류 : "+s.shopAddr+"</p>";
				info += "<p>코스정보</p>";
				
				info += "<p>주소 : "+s.shopAddr+"</p>";
				info += "<p>주소 : "+s.shopAddr+"</p>";
				
				$('#info').html(info);
			},
			error:function(jxhr,textStatus,error)
			{
				console.log("ajax실패!");
				console.log(jxhr);
				console.log(textStatus);
				console.log(error);
			}
		});
	}
	$(function(){
		var addr = "<%=s.getShopAddr()%>"
		var code = "<%=s.getShopId()%>"
		console.log(addr);
		drawMap(addr);
		writeShopInfo(code);
		$('.shop_name').click(function(){
			code = $(this).attr("alt");
			writeShopInfo(code);
			
			
		});
	});
	</script>
	<style>
	/* sidenav style */

		.shop_name:hover{
			font-weight : bolder;
		}
		h2{
			font-family: 'Do Hyeon', sans-serif;
		}
		
		/* shop button design */
		.btn-group{width:100%;
	    	margin: 2px;}
	    .btn-group .btn{width:100%;
	   		font-size: 20px;
	   		font-family: 'Sunflower', sans-serif;
	   	}
		.shop1{
    	background-color: red;
    	color : white;
    	}
	    
		.shop2{
	    	background-color: orange;
	    	color : white;
	    	}
	   
		.shop3{
	    	background-color: blue;
	    	color : white;
	    	}
	    
		.shop4{
	    	background-color: green;
	    	color : white;
	    	}
	    
		.shop5{
	    	background-color: hotpink;
	    	color : white;
	    	}
	   
		.shop6{
	    	background-color: silver;
	    	color : white;
	    	}
	    
	    /* map style */
	    .divMap {
	    	padding-top: 7%;
	    	padding-left : 10px;}
	    #map {
	    	height: 70vh;
	    }
	    	
	</style>
	
	<div class = "container">
		<div class = "row">
			<div class = "col-sm-3 sidenav">
				<h2>대여소목록</h2>
				<hr>
				<div class="btn-group">
			  <button type="button" class="btn shop1 shop_name" alt="gs_05" >
			    잠실행복점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop2 shop_name" alt="no_02">
			    노량진역점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop3 shop_name" alt="tc_01">
			    성남탄천점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop4 shop_name" alt="ic_03">
			    인천소래포구역점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop5 shop_name" alt = "ha_06">
			    하늘공원점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop6 shop_name" alt="yp_04">
			    양평북한강점
			  </button>
			  </div>
			</div>
			
			
			<div class = "col-sm-9 divMap">
				<div id ="map"></div>
			</div>		
		</div>
	</div>
	<style>
		.infoStyle{
			height : 30vh;
			
		}
		.div_shop_info{
			height : 100%;
			border : 1px solid red;
		}
		.div_wheather_info{
			height : 100%;
			border : 1px solid red;
		}
		.div_buy{
			height : 100%;
			border : 1px solid red;
		}
	</style>
	<div class ="container">
		<div class = "row">
			<div class = "col-sm-3"></div>
			<div id = "info" class = "infoStyle div_shop_info col-sm-5"></div>
			<div class = "div_buy col-sm-4"></div>
		</div>
	</div>
<%@ include file= '/views/common/footer.jsp' %>