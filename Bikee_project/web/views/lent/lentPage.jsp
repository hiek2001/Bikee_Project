<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file= '/views/common/header.jsp' %>
 
 <%
	int methodNum = (int) request.getAttribute("methodNum");

 %>
<!doctype html>
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>lentPage</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/jquery-radiocharm.css?ver=4" type="text/css">
<!-- <link href="0css/jquery-radiocharm.css" rel="stylesheet" type="text/css"> -->
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

<style>
body {font-family:'Roboto';}
td{ width:110px;
	height:110px}
</style>

<script>
	function fn_callingJsp() {
		location.href="<%= request.getContextPath() %>/lent/lentSelect2"
	}
</script>

</head>

<body>

<form name='lentBikeeFrm' action="<%=request.getContextPath()%>/lent/lentSelect2" method='post'>
    <div class="container-fluid">
	<div class="1">
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
			<div class="1">
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
								<input data-radiocharm-label="" type="radio" name="shopId" id="shopId" value="tc_01" checked/>
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
							<input data-radiocharm-label="" type="radio" name="shopId" id="shopId" value="no_02" checked/>
								<a href="#nono" >click</a>
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
							<input data-radiocharm-label="" type="radio" name="shopId" id="shopId" value="ic_03" checked/>
								<a href="#inin" >click</a>
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
							<input data-radiocharm-label="" type="radio" name="shopId" id="shopId" value="yp_04" checked/>
								<a href="#yang" >click</a>
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
								<input data-radiocharm-label="" type="radio" name="shopId" id="shopId" value="gs_05" checked/>
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
								<input data-radiocharm-label="" type="radio" name="shopId" id="shopId" value="ha_06" checked/>
								<a href="#mapo" >click</a>
							</p>
						</div>
					</div>
				</div>
			</div>						
	</div>
</div>			

			<h3></h3>>
			<!--성남탄천점 자전거 섹터 -->
			<h3>자전거 선택</h3>
			<hr>


				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script></div>
				<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
				<script src="js/jquery-radiocharm.js"></script>
				<script>
				$(document).ready(function(){
				$('input:radio').radiocharm();
				});
				</script>
				<script>
				  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
				
				  ga('create', 'UA-46156385-1', 'cssscript.com');
				  ga('send', 'pageview');
				
				</script>
				
				<table class="tc" id = 'sungnam'>
				<tr>
				<td><input data-radiocharm-label="bmx101" type="radio" name="bikeId" id="bikeId" value="bmx101"/></td>
				<td><input data-radiocharm-label="bmx102" type="radio" name="bikeId" id="bikeId" value="bmx102"/></td>
				<td><input data-radiocharm-label="bmx103" type="radio" name="bikeId" id="bikeId" value="bmx103"/></td>
				<td><input data-radiocharm-label="bmx104" type="radio" name="bikeId" id="bikeId" value="bmx104"/></td>
				<td><input data-radiocharm-label="bmx105" type="radio" name="bikeId" id="bikeId" value="bmx105"/></td>
				<td><input data-radiocharm-label="bmx106" type="radio" name="bikeId" id="bikeId" value="bmx106"/></td>
				<td><input data-radiocharm-label="bmx107" type="radio" name="bikeId" id="bikeId" value="bmx107"/></td>
				<td><input data-radiocharm-label="mtb101" type="radio" name="bikeId" id="bikeId" value="mtb101"/></td>
				<td><input data-radiocharm-label="mtb102" type="radio" name="bikeId" id="bikeId" value="mtb102"/></td>
				<td><input data-radiocharm-label="mtb103" type="radio" name="bikeId" id="bikeId" value="mtb103"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="mtb104" type="radio" name="bikeId" id="bikeId" value="mtb104"/></td>
				<td><input data-radiocharm-label="mtb105" type="radio" name="bikeId" id="bikeId" value="mtb105"/></td>
				<td><input data-radiocharm-label="rod101" type="radio" name="bikeId" id="bikeId" value="road101"/></td>
				<td><input data-radiocharm-label="rod102" type="radio" name="bikeId" id="bikeId" value="road102"/></td>
				<td><input data-radiocharm-label="rod103" type="radio" name="bikeId" id="bikeId" value="road103"/></td>
				<td><input data-radiocharm-label="rod104" type="radio" name="bikeId" id="bikeId" value="road104"/></td>
				<td><input data-radiocharm-label="rod105" type="radio" name="bikeId" id="bikeId" value="road105"/></td>
				<td><input data-radiocharm-label="rcb101" type="radio" name="bikeId" id="bikeId" value="rcb101"/></td>
				<td><input data-radiocharm-label="rcb102" type="radio" name="bikeId" id="bikeId" value="rcb102"/></td>
				<td><input data-radiocharm-label="rcb103" type="radio" name="bikeId" id="bikeId" value="rcb103"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="nml101" type="radio" name="bikeId" id="bikeId" value="nm101"/></td>
				<td><input data-radiocharm-label="nml102" type="radio" name="bikeId" id="bikeId" value="nm102"/></td>
				<td><input data-radiocharm-label="nml103" type="radio" name="bikeId" id="bikeId" value="nm103"/></td>
				<td><input data-radiocharm-label="nml104" type="radio" name="bikeId" id="bikeId" value="nm104"/></td>
				<td><input data-radiocharm-label="nml105" type="radio" name="bikeId" id="bikeId" value="nm105"/></td>
				<td><input data-radiocharm-label="nml106" type="radio" name="bikeId" id="bikeId" value="nm106"/></td>
				<td><input data-radiocharm-label="nml107" type="radio" name="bikeId" id="bikeId" value="nm107"/></td>
				<td><input data-radiocharm-label="nml108" type="radio" name="bikeId" id="bikeId" value="nm108"/></td>
				<td><input data-radiocharm-label="nml109" type="radio" name="bikeId" id="bikeId" value="nm109"/></td>
				<td><input data-radiocharm-label="nml110" type="radio" name="bikeId" id="bikeId" value="nm110"/></td>
				</tr>
				
				</table>

<!--노량진역점 자전거 섹터 no_02-->
			<br>
			<h3>자전거 선택</h3>
			<hr>				
				<table class="no" id = 'nono'>
				<tr>
				<td><input data-radiocharm-label="bmx201" type="radio" name="bikeId" id="bikeId" value="bmx201"/></td>
				<td><input data-radiocharm-label="bmx202" type="radio" name="bikeId" id="bikeId" value="bmx202"/></td>
				<td><input data-radiocharm-label="bmx203" type="radio" name="bikeId" id="bikeId" value="bmx203"/></td>
				<td><input data-radiocharm-label="bmx204" type="radio" name="bikeId" id="bikeId" value="bmx204"/></td>
				<td><input data-radiocharm-label="bmx205" type="radio" name="bikeId" id="bikeId" value="bmx205"/></td>
				<td><input data-radiocharm-label="bmx206" type="radio" name="bikeId" id="bikeId" value="bmx206"/></td>
				<td><input data-radiocharm-label="bmx207" type="radio" name="bikeId" id="bikeId" value="bmx207"/></td>
				<td><input data-radiocharm-label="mtb201" type="radio" name="bikeId" id="bikeId" value="mtb201"/></td>
				<td><input data-radiocharm-label="mtb202" type="radio" name="bikeId" id="bikeId" value="mtb202"/></td>
				<td><input data-radiocharm-label="mtb203" type="radio" name="bikeId" id="bikeId" value="mtb203"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="mtb204" type="radio" name="bikeId" id="bikeId" value="mtb204"/></td>
				<td><input data-radiocharm-label="mtb205" type="radio" name="bikeId" id="bikeId" value="mtb205"/></td>
				<td><input data-radiocharm-label="rod201" type="radio" name="bikeId" id="bikeId" value="road201"/></td>
				<td><input data-radiocharm-label="rod202" type="radio" name="bikeId" id="bikeId" value="road202"/></td>
				<td><input data-radiocharm-label="rod203" type="radio" name="bikeId" id="bikeId" value="road203"/></td>
				<td><input data-radiocharm-label="rod204" type="radio" name="bikeId" id="bikeId" value="road204"/></td>
				<td><input data-radiocharm-label="rod205" type="radio" name="bikeId" id="bikeId" value="road205"/></td>
				<td><input data-radiocharm-label="rcb201" type="radio" name="bikeId" id="bikeId" value="rcb201"/></td>
				<td><input data-radiocharm-label="rcb202" type="radio" name="bikeId" id="bikeId" value="rcb202"/></td>
				<td><input data-radiocharm-label="rcb203" type="radio" name="bikeId" id="bikeId" value="rcb203"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="nml201" type="radio" name="bikeId" id="bikeId" value="nm201"/></td>
				<td><input data-radiocharm-label="nml202" type="radio" name="bikeId" id="bikeId" value="nm202"/></td>
				<td><input data-radiocharm-label="nml203" type="radio" name="bikeId" id="bikeId" value="nm203"/></td>
				<td><input data-radiocharm-label="nml204" type="radio" name="bikeId" id="bikeId" value="nm204"/></td>
				<td><input data-radiocharm-label="nml205" type="radio" name="bikeId" id="bikeId" value="nm205"/></td>
				<td><input data-radiocharm-label="nml206" type="radio" name="bikeId" id="bikeId" value="nm206"/></td>
				<td><input data-radiocharm-label="nml207" type="radio" name="bikeId" id="bikeId" value="nm207"/></td>
				<td><input data-radiocharm-label="nml208" type="radio" name="bikeId" id="bikeId" value="nm208"/></td>
				<td><input data-radiocharm-label="nml209" type="radio" name="bikeId" id="bikeId" value="nm209"/></td>
				<td><input data-radiocharm-label="nml210" type="radio" name="bikeId" id="bikeId" value="nm210"/></td>
				</tr>
				
				</table>
				

<!--인천소래포구점 자전거 섹터 -->
			<h3>자전거 선택</h3>
			<hr>				
				<table class="ic_03" id = 'inin'>
				<tr>
				<td><input data-radiocharm-label="bmx301" type="radio" name="bikeId" id="bikeId" value="bmx301"/></td>
				<td><input data-radiocharm-label="bmx302" type="radio" name="bikeId" id="bikeId" value="bmx302"/></td>
				<td><input data-radiocharm-label="bmx303" type="radio" name="bikeId" id="bikeId" value="bmx303"/></td>
				<td><input data-radiocharm-label="bmx304" type="radio" name="bikeId" id="bikeId" value="bmx304"/></td>
				<td><input data-radiocharm-label="bmx305" type="radio" name="bikeId" id="bikeId" value="bmx305"/></td>
				<td><input data-radiocharm-label="bmx306" type="radio" name="bikeId" id="bikeId" value="bmx306"/></td>
				<td><input data-radiocharm-label="bmx307" type="radio" name="bikeId" id="bikeId" value="bmx307"/></td>
				<td><input data-radiocharm-label="mtb301" type="radio" name="bikeId" id="bikeId" value="mtb301"/></td>
				<td><input data-radiocharm-label="mtb302" type="radio" name="bikeId" id="bikeId" value="mtb302"/></td>
				<td><input data-radiocharm-label="mtb303" type="radio" name="bikeId" id="bikeId" value="mtb303"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="mtb304" type="radio" name="bikeId" id="bikeId" value="mtb304"/></td>
				<td><input data-radiocharm-label="mtb305" type="radio" name="bikeId" id="bikeId" value="mtb305"/></td>
				<td><input data-radiocharm-label="rod301" type="radio" name="bikeId" id="bikeId" value="road301"/></td>
				<td><input data-radiocharm-label="rod302" type="radio" name="bikeId" id="bikeId" value="road302"/></td>
				<td><input data-radiocharm-label="rod303" type="radio" name="bikeId" id="bikeId" value="road303"/></td>
				<td><input data-radiocharm-label="rod304" type="radio" name="bikeId" id="bikeId" value="road304"/></td>
				<td><input data-radiocharm-label="rod305" type="radio" name="bikeId" id="bikeId" value="road305"/></td>
				<td><input data-radiocharm-label="rcb301" type="radio" name="bikeId" id="bikeId" value="rcb301"/></td>
				<td><input data-radiocharm-label="rcb302" type="radio" name="bikeId" id="bikeId" value="rcb302"/></td>
				<td><input data-radiocharm-label="rcb303" type="radio" name="bikeId" id="bikeId" value="rcb303"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="nml301" type="radio" name="bikeId" id="bikeId" value="nm301"/></td>
				<td><input data-radiocharm-label="nml302" type="radio" name="bikeId" id="bikeId" value="nm302"/></td>
				<td><input data-radiocharm-label="nml303" type="radio" name="bikeId" id="bikeId" value="nm303"/></td>
				<td><input data-radiocharm-label="nml304" type="radio" name="bikeId" id="bikeId" value="nm304"/></td>
				<td><input data-radiocharm-label="nml305" type="radio" name="bikeId" id="bikeId" value="nm305"/></td>
				<td><input data-radiocharm-label="nml306" type="radio" name="bikeId" id="bikeId" value="nm306"/></td>
				<td><input data-radiocharm-label="nml307" type="radio" name="bikeId" id="bikeId" value="nm307"/></td>
				<td><input data-radiocharm-label="nml308" type="radio" name="bikeId" id="bikeId" value="nm308"/></td>
				<td><input data-radiocharm-label="nml309" type="radio" name="bikeId" id="bikeId" value="nm309"/></td>
				<td><input data-radiocharm-label="nml310" type="radio" name="bikeId" id="bikeId" value="nm310"/></td>
				</tr>
				
				</table>
				

<!--양평북한강점 자전거 섹터 yp_04-->				
				<h3>자전거 선택</h3>
				<hr>				
				
				<table class="yp" id = 'yang'>
				<tr>
				<td><input data-radiocharm-label="bmx401" type="radio" name="bikeId" id="bikeId" value="bmx401"/></td>
				<td><input data-radiocharm-label="bmx402" type="radio" name="bikeId" id="bikeId" value="bmx402"/></td>
				<td><input data-radiocharm-label="bmx403" type="radio" name="bikeId" id="bikeId" value="bmx403"/></td>
				<td><input data-radiocharm-label="bmx404" type="radio" name="bikeId" id="bikeId" value="bmx404"/></td>
				<td><input data-radiocharm-label="bmx405" type="radio" name="bikeId" id="bikeId" value="bmx405"/></td>
				<td><input data-radiocharm-label="bmx406" type="radio" name="bikeId" id="bikeId" value="bmx406"/></td>
				<td><input data-radiocharm-label="bmx407" type="radio" name="bikeId" id="bikeId" value="bmx407"/></td>
				<td><input data-radiocharm-label="mtb401" type="radio" name="bikeId" id="bikeId" value="mtb401"/></td>
				<td><input data-radiocharm-label="mtb402" type="radio" name="bikeId" id="bikeId" value="mtb402"/></td>
				<td><input data-radiocharm-label="mtb403" type="radio" name="bikeId" id="bikeId" value="mtb403"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="mtb404" type="radio" name="bikeId" id="bikeId" value="mtb404"/></td>
				<td><input data-radiocharm-label="mtb405" type="radio" name="bikeId" id="bikeId" value="mtb405"/></td>
				<td><input data-radiocharm-label="rod401" type="radio" name="bikeId" id="bikeId" value="road401"/></td>
				<td><input data-radiocharm-label="rod402" type="radio" name="bikeId" id="bikeId" value="road402"/></td>
				<td><input data-radiocharm-label="rod403" type="radio" name="bikeId" id="bikeId" value="road403"/></td>
				<td><input data-radiocharm-label="rod404" type="radio" name="bikeId" id="bikeId" value="road404"/></td>
				<td><input data-radiocharm-label="rod405" type="radio" name="bikeId" id="bikeId" value="road405"/></td>
				<td><input data-radiocharm-label="rcb401" type="radio" name="bikeId" id="bikeId" value="rcb401"/></td>
				<td><input data-radiocharm-label="rcb402" type="radio" name="bikeId" id="bikeId" value="rcb402"/></td>
				<td><input data-radiocharm-label="rcb403" type="radio" name="bikeId" id="bikeId" value="rcb403"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="nml401" type="radio" name="bikeId" id="bikeId" value="nm401"/></td>
				<td><input data-radiocharm-label="nml402" type="radio" name="bikeId" id="bikeId" value="nm402"/></td>
				<td><input data-radiocharm-label="nml403" type="radio" name="bikeId" id="bikeId" value="nm403"/></td>
				<td><input data-radiocharm-label="nml404" type="radio" name="bikeId" id="bikeId" value="nm404"/></td>
				<td><input data-radiocharm-label="nml405" type="radio" name="bikeId" id="bikeId" value="nm405"/></td>
				<td><input data-radiocharm-label="nml406" type="radio" name="bikeId" id="bikeId" value="nm406"/></td>
				<td><input data-radiocharm-label="nml407" type="radio" name="bikeId" id="bikeId" value="nm407"/></td>
				<td><input data-radiocharm-label="nml408" type="radio" name="bikeId" id="bikeId" value="nm408"/></td>
				<td><input data-radiocharm-label="nml409" type="radio" name="bikeId" id="bikeId" value="nm409"/></td>
				<td><input data-radiocharm-label="nml410" type="radio" name="bikeId" id="bikeId" value="nm410"/></td>
				</tr>
				
				</table>
				
				
<!--잠실행복점 자전거 섹터 gs_05-->				
				<h3>자전거 선택</h3>
				<hr>																	
				<table class="js" id = 'jamsil'>
				<tr>
				<td><input data-radiocharm-label="bmx501" type="radio" name="bikeId" id="bikeId" value="bmx501"/></td>
				<td><input data-radiocharm-label="bmx502" type="radio" name="bikeId" id="bikeId" value="bmx502"/></td>
				<td><input data-radiocharm-label="bmx503" type="radio" name="bikeId" id="bikeId" value="bmx503"/></td>
				<td><input data-radiocharm-label="bmx504" type="radio" name="bikeId" id="bikeId" value="bmx504"/></td>
				<td><input data-radiocharm-label="bmx505" type="radio" name="bikeId" id="bikeId" value="bmx505"/></td>
				<td><input data-radiocharm-label="bmx506" type="radio" name="bikeId" id="bikeId" value="bmx506"/></td>
				<td><input data-radiocharm-label="bmx507" type="radio" name="bikeId" id="bikeId" value="bmx507"/></td>
				<td><input data-radiocharm-label="mtb501" type="radio" name="bikeId" id="bikeId" value="mtb501"/></td>
				<td><input data-radiocharm-label="mtb502" type="radio" name="bikeId" id="bikeId" value="mtb502"/></td>
				<td><input data-radiocharm-label="mtb503" type="radio" name="bikeId" id="bikeId" value="mtb503"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="mtb504" type="radio" name="bikeId" id="bikeId" value="mtb504"/></td>
				<td><input data-radiocharm-label="mtb505" type="radio" name="bikeId" id="bikeId" value="mtb505"/></td>
				<td><input data-radiocharm-label="rod501" type="radio" name="bikeId" id="bikeId" value="road501"/></td>
				<td><input data-radiocharm-label="rod502" type="radio" name="bikeId" id="bikeId" value="road502"/></td>
				<td><input data-radiocharm-label="rod503" type="radio" name="bikeId" id="bikeId" value="road503"/></td>
				<td><input data-radiocharm-label="rod504" type="radio" name="bikeId" id="bikeId" value="road504"/></td>
				<td><input data-radiocharm-label="rod505" type="radio" name="bikeId" id="bikeId" value="road505"/></td>
				<td><input data-radiocharm-label="rcb501" type="radio" name="bikeId" id="bikeId" value="rcb501"/></td>
				<td><input data-radiocharm-label="rcb502" type="radio" name="bikeId" id="bikeId" value="rcb502"/></td>
				<td><input data-radiocharm-label="rcb503" type="radio" name="bikeId" id="bikeId" value="rcb503"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="nml501" type="radio" name="bikeId" id="bikeId" value="nm501"/></td>
				<td><input data-radiocharm-label="nml502" type="radio" name="bikeId" id="bikeId" value="nm502"/></td>
				<td><input data-radiocharm-label="nml503" type="radio" name="bikeId" id="bikeId" value="nm503"/></td>
				<td><input data-radiocharm-label="nml504" type="radio" name="bikeId" id="bikeId" value="nm504"/></td>
				<td><input data-radiocharm-label="nml505" type="radio" name="bikeId" id="bikeId" value="nm505"/></td>
				<td><input data-radiocharm-label="nml506" type="radio" name="bikeId" id="bikeId" value="nm506"/></td>
				<td><input data-radiocharm-label="nml507" type="radio" name="bikeId" id="bikeId" value="nm507"/></td>
				<td><input data-radiocharm-label="nml508" type="radio" name="bikeId" id="bikeId" value="nm508"/></td>
				<td><input data-radiocharm-label="nml509" type="radio" name="bikeId" id="bikeId" value="nm509"/></td>
				<td><input data-radiocharm-label="nml510" type="radio" name="bikeId" id="bikeId" value="nm510"/></td>
				</tr>
				
				</table>
				
<!--하늘공원점 자전거 섹터 ha_06-->				
				<h3>자전거 선택</h3>
				<hr>				
								
				<table class="ha" id = 'mapo'>
				<tr>
				<td><input data-radiocharm-label="bmx601" type="radio" name="bikeId" id="bikeId" value="bmx601"/></td>
				<td><input data-radiocharm-label="bmx602" type="radio" name="bikeId" id="bikeId" value="bmx602"/></td>
				<td><input data-radiocharm-label="bmx603" type="radio" name="bikeId" id="bikeId" value="bmx603"/></td>
				<td><input data-radiocharm-label="bmx604" type="radio" name="bikeId" id="bikeId" value="bmx604"/></td>
				<td><input data-radiocharm-label="bmx605" type="radio" name="bikeId" id="bikeId" value="bmx605"/></td>
				<td><input data-radiocharm-label="bmx606" type="radio" name="bikeId" id="bikeId" value="bmx606"/></td>
				<td><input data-radiocharm-label="bmx607" type="radio" name="bikeId" id="bikeId" value="bmx607"/></td>
				<td><input data-radiocharm-label="mtb601" type="radio" name="bikeId" id="bikeId" value="mtb601"/></td>
				<td><input data-radiocharm-label="mtb602" type="radio" name="bikeId" id="bikeId" value="mtb602"/></td>
				<td><input data-radiocharm-label="mtb603" type="radio" name="bikeId" id="bikeId" value="mtb603"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="mtb604" type="radio" name="bikeId" id="bikeId" value="mtb604"/></td>
				<td><input data-radiocharm-label="mtb605" type="radio" name="bikeId" id="bikeId" value="mtb605"/></td>
				<td><input data-radiocharm-label="rod601" type="radio" name="bikeId" id="bikeId" value="road601"/></td>
				<td><input data-radiocharm-label="rod602" type="radio" name="bikeId" id="bikeId" value="road602"/></td>
				<td><input data-radiocharm-label="rod603" type="radio" name="bikeId" id="bikeId" value="road603"/></td>
				<td><input data-radiocharm-label="rod604" type="radio" name="bikeId" id="bikeId" value="road604"/></td>
				<td><input data-radiocharm-label="rod605" type="radio" name="bikeId" id="bikeId" value="road605"/></td>
				<td><input data-radiocharm-label="rcb601" type="radio" name="bikeId" id="bikeId" value="rcb601"/></td>
				<td><input data-radiocharm-label="rcb602" type="radio" name="bikeId" id="bikeId" value="rcb602"/></td>
				<td><input data-radiocharm-label="rcb603" type="radio" name="bikeId" id="bikeId" value="rcb603"/></td>
				</tr>
				<tr>
				<td><input data-radiocharm-label="nml601" type="radio" name="bikeId" id="bikeId" value="nm601"/></td>
				<td><input data-radiocharm-label="nml602" type="radio" name="bikeId" id="bikeId" value="nm602"/></td>
				<td><input data-radiocharm-label="nml603" type="radio" name="bikeId" id="bikeId" value="nm603"/></td>
				<td><input data-radiocharm-label="nml604" type="radio" name="bikeId" id="bikeId" value="nm604"/></td>
				<td><input data-radiocharm-label="nml605" type="radio" name="bikeId" id="bikeId" value="nm605"/></td>
				<td><input data-radiocharm-label="nml606" type="radio" name="bikeId" id="bikeId" value="nm606"/></td>
				<td><input data-radiocharm-label="nml607" type="radio" name="bikeId" id="bikeId" value="nm607"/></td>
				<td><input data-radiocharm-label="nml608" type="radio" name="bikeId" id="bikeId" value="nm608"/></td>
				<td><input data-radiocharm-label="nml609" type="radio" name="bikeId" id="bikeId" value="nm609"/></td>
				<td><input data-radiocharm-label="nml610" type="radio" name="bikeId" id="bikeId" value="nm610"/></td>
				</tr>
				
				</table>
				
				
				
				<div id='time'>
				<h3>대여시간/반납시간</h3>
		 		  <input type="date" name="buyDate">		
		 		  <input type="date" name="returnDate">
		 		<hr>								
								

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
