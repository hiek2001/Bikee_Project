<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= '/views/common/header.jsp' %>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=38dbe520351223d7e0dbf19bedaa6d68&libraries=services"></script>
	<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Cute+Font|Do+Hyeon|Sunflower:300" rel="stylesheet">
	<script>
	$(function(){
		$('.shop_name').click(function(){
			var addr = $(this).attr("alt");
			console.log(addr);
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
		})
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
	    	height: 100vh;
	    }
	    	
	</style>
	
	<div class = "container">
		<div class = "row">
			<div class = "col-sm-3 sidenav">
				<h2>대여소목록</h2>
				<hr>
				<div class="btn-group">
			  <button type="button" class="btn shop1 shop_name" alt="서울특별시 송파구 송파대로 570" >
			    잠실행복점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop2 shop_name" alt="서울특별시 동작구 노량진로 147">
			    노량진역점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop3 shop_name" alt="경기 성남시 수정구 태평동 7003-13">
			    탄천점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop4 shop_name" alt="인천 남동구 논현동 754-3">
			    인천소래포구역점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop5 shop_name" alt = "서울 마포구 상암동 1538">
			    하늘공원점
			  </button>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop6 shop_name" alt="경기 남양주시 조안면 진중리 279-2">
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
		.info{
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
		<div class = "row info">
			<div class = "div_shop_info col-sm-4">
			
			</div>
			<div class = "div_wheather_info col-sm-4"></div>
			<div class = "div_buy col-sm-4"></div>
		</div>
	</div>
<%@ include file= '/views/common/footer.jsp' %>