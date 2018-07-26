<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= '/views/common/header.jsp' %>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=38dbe520351223d7e0dbf19bedaa6d68&libraries=services"></script>

	<style>
	/* 큰 영역 나누기 */
		.sidenav{
			height : 700px;
			
		}
		#map{
			height : 700px;
			}
		.shopinfo{
			display : inline-block;
			width : 100%;
			height : 29%;
			border : 1px solid green;
			}
	/* 작은 영역 나누기 */
	/* 대여소목록 이벤트 */
		.shop_name:hover{
			font-weight : bolder;
			}
	</style>
	<script>
	$(function(){
		$('.shop_name').click(function(){
			var addr = $(this).attr("alt");
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
	<div class = "container">
		<div class = "row content">
			<div class = "col-sm-3 sidenav">
				<h2>대여소목록</h2>
				<h3 class = "shop_name" alt="서울특별시 송파구 송파대로 570">잠실한강</h3>
				<h3 class = "shop_name" alt="서울특별시 동작구 노량진로 147">노량진역</h3>
				<h3 class = "shop_name" alt="경기 성남시 수정구 태평동 7003-13">탄천</h3>
				<h3 class = "shop_name" alt="인천 남동구 논현동 754-3">소래포구역</h3>
				<h3 class = "shop_name" alt="경기 남양주시 조안면 진중리 279-2">북한강</h3>
			
			
			
			</div>
			<div id = "map" class = "col-sm-9">
			
			</div>
		
		
		
		</div>
	
	
	</div>
	<div class ="container">
		<div class = "row contenet">
			<div class = "col-sm-4"></div>
			<div class = "col-sm-4"></div>
			<div class = "col-sm-4"></div>
		</div>
	</div>
	<!-- <div class = "container">
		<div class = "sidenav" >
			<h2>대여소목록</h2>
			<h3 class = "shop_name" alt="서울특별시 송파구 송파대로 570">잠실한강</h3>
			<h3 class = "shop_name" alt="서울특별시 동작구 노량진로 147">노량진역</h3>
			<h3 class = "shop_name" alt="경기 성남시 수정구 태평동 7003-13">탄천</h3>
			<h3 class = "shop_name" alt="인천 남동구 논현동 754-3">소래포구역</h3>
			<h3 class = "shop_name" alt="경기 남양주시 조안면 진중리 279-2">북한강</h3>
			
		</div>
		
		
		
		<div id="map"></div>

		
	</div>
	<div class = "shopinfo"></div> -->
<%@ include file= '/views/common/footer.jsp' %>