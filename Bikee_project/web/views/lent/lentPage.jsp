<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file= '/views/common/header.jsp' %>
 
 <%
	int methodNum = (int) request.getAttribute("methodNum");

 %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
      <meta name="description" content="" />
      <meta name="keywords" content="" />
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
      <script src="js/skel.min.js"></script>
      <script src="js/skel-panels.min.js"></script>
      <script src="js/init.js"></script>
      <noscript>
         <link rel="stylesheet" href="css/skel-noscript.css" />
         <link rel="stylesheet" href="css/style.css" />
         <link rel="stylesheet" href="css/style-desktop.css" />
      </noscript>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <!-- 타임피커 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.10.0/jquery.timepicker.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.10.0/jquery.timepicker.css" />
</head>>

<script>
	function fn_callingJsp() {
		location.href="<%= request.getContextPath() %>/lent/lentSelect2"
	}
</script>
<!-- <script type="text/javascript">	

$('#seat').click(function() {
	
			document.seat.src="https://data.ac-illust.com/data/thumbnails/fb/fb581a078bef0f89ffeff1b46d151b00_w.jpeg"

	});
</script> -->
<script type='text/javascript'>

	 var ch = 0;
 	
	function change(){
		if(ch==0){
			document.seat.src="https://data.ac-illust.com/data/thumbnails/fb/fb581a078bef0f89ffeff1b46d151b00_w.jpeg"
			ch = 1;
		}
		else {
			document.seat.src = "https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"
			ch = 0;
		}
	}



</script>
  
  <body>
  
	<form name='lentBikeeFrm' action="<%=request.getContextPath()%>/lent/lentSelect2" method='post'>
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>정기권 결제</h2>
				<p>정기권을 결제하여 자유롭게 바이키를 즐길 수 있습니다.</p>

				
			</div>
			<br>
			<br>
			
			<h3>
				지점선택
			</h3>
			<hr>
			<div class="row">
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="http://jwnoin.org/bbs/pds/board/4/images/01-crop.jpg" width=250px height=200px/>
						<div class="card-block">
							<h5 class="card-title">
								성남탄천점
							</h5>
							<p class="card-text">
								<h6>경기도 성남시</h6>
							</p>
							<p>	
								<input type="radio" name="shopId" id="shopId" value="tc_01" checked>
								<a href="#sungnam" >click</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="http://www.edjnews.co.kr/imgdata/edjnews_co_kr/201607/2016071109304448.jpg"  width=250px height=200px/>
						<div class="card-block">
							<h5 class="card-title">
								노량진역점
							</h5>
							<p class="card-text">
								<h6>서울시 동작구</h6>							
							</p>
							<p>
								<input type="radio" name="shopId" id="shopId" value="no_02" checked>
								<a href="#noryang" >click</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="http://bike.chosun.com/site/data/img_dir/2016/09/22/2016092201491_8.jpg" width=250px height=200px/>
						<div class="card-block">
							<h5 class="card-title">
								인천소래포구점
							</h5>
							<p class="card-text">
								<h6>인천시 소래포구</h6>
							</p>
							<p>
								<input type="radio" name="shopId" id="shopId" value="ic_03" checked>
								<a href="#inchun" >click</a>
							</p>
						</div>
					</div>
				</div>
			<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="http://tour.yp21.net/multi/uploadFile/20120202_0947(1).jpg" width=250px height=200px/>
						<div class="card-block">
							<h5 class="card-title">
								양평북한강점
							</h5>
							<p class="card-text">
								<h6>경기도 양평시</h6>
							</p>
							<p>
								<input type="radio" name="shopId" id="shopId" value="yp_04" checked>
								<a href="#yangpyung" >click</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="http://mblogthumb2.phinf.naver.net/20160609_213/homibike_14654066419411me3f_JPEG/DSC04632.jpg?type=w800"  width=250px height=200px/>
						<div class="card-block">
							<h5 class="card-title">
								잠실행복점
							</h5>
							<p class="card-text">
								<h6>서울시 송파구</h6>
							</p>
							<p>
								<input type="radio" name="shopId" id="shopId" value="gs_05" checked>
								<a href="#jamsil" >click</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://i.ytimg.com/vi/iwCRc4xkTkw/maxresdefault.jpg"  width=250px height=200px/>
						<div class="card-block">
							<h5 class="card-title">
								하늘공원점
							</h5>
							<p class="card-text">
								<h6>서울시 마포구</h6>
							</p>
							<p>
								<input type="radio" name="shopId" id="shopId" value="ha_06" checked>
								<a href="#mapo" >click</a>
							</p>
						</div>
					</div>
				</div>
			</div>			
			<br><br><br>		
			
			
			<!--성남탄천점 자전거 섹터 -->
			<div class="row" id = 'sungnam'>
			<h3>자전거 선택</h3>
			<hr>
			<br><br>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat' onclick='change()' src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx101" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat1'  src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx102" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx103" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx104" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx105" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx106" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx107" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb101" checked>
								<a href="#time" >click</a>							
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb102" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb103" checked>
								<a href="#time" >click</a>
					</div>
				</div>
								
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb104" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb105" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road101" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road102" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road103" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road104" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road105" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb101" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb102" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb103" checked>
								<a href="#time" >click</a>
					</div>
				</div>	
							
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm101" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm102" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm103" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm104" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm105" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm106" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm107" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm108">
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm109" onclick='change1'>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm110" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
			</div>
			<h4>성남 탄천점 BIKEEBOX</h4>
			<br><br><br><br>
			
			
			
<!--노량진역점 자전거 섹터 -->
			<div class="row" id = 'noryang'>
			<h3>자전거 선택</h3>
			<hr>
			<br><br>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat' onclick='change()' src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx201" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat1'  src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx202" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx203" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx204" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx205" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx206" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx207" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb201" checked>
								<a href="#time" >click</a>							
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb202" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb203" checked>
								<a href="#time" >click</a>
					</div>
				</div>
								
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb204" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb205" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road201" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road202" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road203" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road204" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road205" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb201" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb202" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb203" checked>
								<a href="#time" >click</a>
					</div>
				</div>	
							
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm201" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm202" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm203" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm204" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm205" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm206" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm207" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm208">
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm209" onclick='change1'>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm210" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
			</div>
			<h4>노량진역점 BIKEEBOX</h4>
			<br><br><br><br>
		
	

<!--인천소래포구점 자전거 섹터 -->
			<div class="row" id = 'inchun'>
			<h3>자전거 선택</h3>
			<hr>
			<br><br>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat' onclick='change()' src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx301" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat1'  src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx302" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx303" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx304" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx305" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx306" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx307" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb301" checked>
								<a href="#time" >click</a>							
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb302" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb303" checked>
								<a href="#time" >click</a>
					</div>
				</div>
								
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb304" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb305" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road301" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road302" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road303" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road304" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road305" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb301" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb302" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb303" checked>
								<a href="#time" >click</a>
					</div>
				</div>	
							
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm301" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm302" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm303" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm304" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm305" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm306" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm307" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm308">
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm309" onclick='change1'>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm310" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
			</div>
			<h4>인천소래포구 BIKEEBOX</h4>
			<br><br><br><br>
			
			
			
			
<!--양평북한강점 자전거 섹터 -->
			<div class="row" id = 'yangpyung'>
			<h3>자전거 선택</h3>
			<hr>
			<br><br>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat' onclick='change()' src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx401" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat1'  src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx402" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx403" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx404" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx405" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx406" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx407" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb401" checked>
								<a href="#time" >click</a>							
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb402" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb403" checked>
								<a href="#time" >click</a>
					</div>
				</div>
								
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb404" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb405" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road401" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road402" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road403" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road404" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road405" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb401" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb402" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb403" checked>
								<a href="#time" >click</a>
					</div>
				</div>	
							
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm401" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm402" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm403" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm404" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm405" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm406" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm407" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm408">
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm409" onclick='change1'>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm410" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
			</div>
			<h4>양평북한강점 BIKEEBOX</h4>
			<br><br><br><br>
			
			
			
	<!--잠실행복점 자전거 섹터 -->
			<div class="row" id = 'jamsil'>
			<h3>자전거 선택</h3>
			<hr>
			<br><br>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat' onclick='change()' src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx501" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat1'  src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx502" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx503" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx504" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx505" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx506" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx507" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb501" checked>
								<a href="#time" >click</a>							
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb502" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb503" checked>
								<a href="#time" >click</a>
					</div>
				</div>
								
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb504" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb505" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road501" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road502" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road503" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road504" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road505" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb501" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb502" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb503" checked>
								<a href="#time" >click</a>
					</div>
				</div>	
							
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm501" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm502" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm503" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm504" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm505" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm506" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm507" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm508">
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm509" onclick='change1'>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm510" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
			</div>
			<h4>잠실행복점 BIKEEBOX</h4>
			<br><br><br><br>
			




			<!--하늘공원점 자전거 섹터 -->
			<div class="row" id = 'mapo'>
			<h3>자전거 선택</h3>
			<hr>
			<br><br>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat' onclick='change()' src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx601" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img name ='seat1'  src='https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg' height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx602" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx603" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx604" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx605" checked>
								<a href="#time" >click</a>
						</div>
					</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx606" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="bmx607" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb601" checked>
								<a href="#time" >click</a>							
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb602" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb603" checked>
								<a href="#time" >click</a>
					</div>
				</div>
								
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb604" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="mtb605" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road601" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road602" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road603" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road604" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="road605" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb601" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb602" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="rcb603" checked>
								<a href="#time" >click</a>
					</div>
				</div>	
							
				</div>
				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm601" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Second" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm602" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm603" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm604" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg"height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm605" checked>
								<a href="#time" >click</a>
					</div>
				</div>
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm606" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm607" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm608">
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm609" onclick='change1'>
								<a href="#time" >click</a>
					</div>
				</div>				
				<div class="col-md-1">
					<div class="card">
						<img class="card-img-top" alt="Bootstrap Thumbnail Third" src="https://data.ac-illust.com/data/thumbnails/9c/9c0cf971899b8b20e5e18969655b3ce5_w.jpeg" height=100px width=100px>
								<input type="radio" name="bikeId" id="bikeId" value="nm610" checked>
								<a href="#time" >click</a>
					</div>
				</div>				
			</div>
			<h4>하늘공원점 BIKEEBOX</h4>
			<br><br><br><br>





						
		<div id='time'>
		<h3>대여시간/반납시간</h3>
 		  <input type="date" name="buyDate">		
 		  <input type="date" name="returnDate">
 		<hr>

 
<!-- 			<div class="input-a margin-t-10"><input type="text" id="stime" name="stime" value="" class="timePicker" placeholder="00:00 AM"></span></div>
			<div class="input-a margin-t-10"><input type="text" id="etime" name="etime" value="" class="timePicker" placeholder="23:00 AM"></span></div>
			
			<script>
			$('#stime')
			    .timepicker({timeFormat:'H:i', 'minTime':'06:00','maxTime': '23:00','scrollDefaultNow': true })  //stime 시작 기본 설정
			    .on('changeTime', function() {                            //stime 을 선택한 후 동작
			        var from_time = $("input[name='stime']").val();  //stime 값을 변수에 저장
			        $('#etime').timepicker('option', 'minTime', from_time); //etime의 mintime 지정
			        if ($('#etime').val() && $('#etime').val() < from_time) { 
			            $('#etime').timepicker('setTime', from_time);
			//etime을 먼저 선택한 경우 그리고 etime시간이 stime시간보다 작은경우 etime시간 변경
			        }	
			    });
			
			$('#etime').timepicker({timeFormat:'H:i','minTime':'06:00','maxTime': '23:00'}); //etime 시간 기본 설정
			</script>
			
 -->		</div>

		
		<input type="hidden" name="methodNum" value="2">
		<!-- <input type='hidden' name ='merchantUid' value='uid0030'> -->
		<!--DB삽입되는지 알기위해서 임의로 넣었는데 이제 삽입과정 없어졌으니 삭제해도 무방
		 <input type='hidden' name ="buyerId" value ='eunbyul'>
		<input type='hidden' name ='lentPrice' value='10000'> -->
		<input type="submit" value="결제"  onclick="fn_callingJsp()">
		<input type="reset" value="취소">
		
		<br><br><br><br>

	</form>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>

<%@ include file= '/views/common/footer.jsp' %>