<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- Header.jsp -->
<%@ include file= 'views/common/header.jsp' %> <!-- 파일 include. header.jsp 파일을 읽어들인다 -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/index.css?var=1"> <!-- index.css -->

<style>
</style>

<!-- 스크립트 -->
<script>
$(function() {
	$("#myCarousel").carousel({
	    interval : 3000,
	});
})

</script>
<!-- Carousel -->
<div id="myCarousel" class="carousel 
slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
	        <a href="#"><img src="<%=request.getContextPath() %>/images/carousel/1.jpg"></a>
	        <div class="carousel-caption">
	            <h2>누구나</h2>
	            <p>BIKEE는 남녀노소 누구나 이용 가능합니다.</p>
	        </div>
	    </div>

    	<div class="item">
	        <a href="#"><img src="<%=request.getContextPath() %>/images/carousel/2.jpg"></a>
	        <div class="carousel-caption">
	            <h2>언제나</h2>
	            <p>BIKEE를 이용하길 원하는 분은 언제나 이용할 수 있습니다.</p>
	        </div>
    	</div>
    	<div class="item">
            <a href="#"><img src="<%=request.getContextPath() %>/images/carousel/3.png"></a>
       		<div class="carousel-caption">
            	<h2>어디서나</h2>
            	<p>BIKEE 대여소는 경기도 곳곳에 자리잡고 있습니다.</p>
        	</div>
    	</div>
	</div>
	
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<!-- 이미지 포트폴리오 -->
<div id="port" class="container-fluid text-center">
	<div class="container">
	    <h2>자전거</h2>
	    <h4>누구나 자유롭게 이용할 수 있는 대여 시설</h4>
	    <div class="row text-center">
	        <div class="col-sm-4">
	            <div class="thumnail">
	                <img src="<%=request.getContextPath() %>/images/index/pic01.jpg" alt="test">
	                <p><strong>자전거</strong></p>
	                <p>테스트입니다.</p>
	                <button type="button" class="btn btn-primary">자세히 알아보기</button>
	            </div>
	        </div>
	        <div class="col-sm-4">
	            <div class="thumnail">
	                <img src="<%=request.getContextPath() %>/images/index/pic02.jpg" alt="test">
	                <p><strong>자전거</strong></p>
	                <p>테스트입니다.</p>
	                <button type="button" class="btn btn-primary">자세히 알아보기</button>
	            </div>
	        </div>
	        <div class="col-sm-4">
	            <div class="thumnail">
	                <img src="<%=request.getContextPath() %>/images/index/pic03.jpg" alt="test">
	                <p><strong>자전거</strong></p>
	                <p>테스트입니다.</p>
	                <button type="button" class="btn btn-primary">자세히 알아보기</button>
	            </div>
	        </div>
	    </div>
    </div>
</div>

<div id="point" class="row text-center">
	<div class="col-sm-1">
	</div>
	<div class="col-sm-5">
		<h1>ECO</h1>
		<br>
		<p>바이키는 교통체증, 대기오염, 고유가 문제를 해결하기위해 노력합니다.</p>
		<p>자전거 교통수단 분담률을 향상시켜 CO2 발생 감소를 실현하고</p>
		<p>국가 비전인 저탄소 녹색성장을 추구합니다</p>
	</div>
	
	<div class="col-sm-5">
		<h1>HEALTH</h1>
		<br>
		<p>자전거 이용의 생활화를 통한 시민 건강 증진의 실현과</p>
		<p>건강한 사회 및 시민들의 삶의 질을 높이고자 마련되었습니다.</p>
		<p>더 가치있는 서비스로 불편함이 없도록 노력하겠습니다.</p>
	</div>
	<div class="col-sm-1">
	</div>
</div>

<!-- 서비스 -->
<div id="service" class="container-fluid text-center">
    <h1>SERVICE</h1>
    <h4>What we offer</h4>
    <br>
    <div class="row">
        <div class="col-sm-4">
            <a href="#"><i class="fas fa-bicycle"></i></a>
            <h4>BIKE</h4>
            <p>다양한 종류의 자전거를 빌릴 수 있습니다.</p>
        </div>
        <div class="col-sm-4">
                <a href="#"><i class="fas fa-leaf"></i></a>
            <h4>GREEN</h4>
            <p>친환경적인 이동 수단입니다.</p>
        </div>
        <div class="col-sm-4">
                <a href="#"><i class="fas fa-wrench"></i></a>
            <h4>REPAIR</h4>
            <p>고장 시 수리 지원이 가능합니다.</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
                <a href="#"><i class="far fa-chart-bar"></i></a>
            <h4>GREEN</h4>
            <p>자전거를 타면 자연이..!!</p>
        </div>
        <div class="col-sm-4">
                <a href="#"><i class="fas fa-home"></i></a>
            <h4>SEARCH</h4>
            <p>자전거를 타면 실력이..!!</p>
        </div>
        <div class="col-sm-4">
                <a href="#"><i class="fas fa-road"></i></a>
            <h4>WRENCH</h4>
            <p>자전거를 타면 연장이..!!알파알파 응답하라 브라보</p>
        </div>
    </div>
</div>
<%@ include file= 'views/common/footer.jsp' %>
