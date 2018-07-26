<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= '/views/common/header.jsp' %>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Cute+Font|Do+Hyeon|Sunflower:300" rel="stylesheet">

<style>

	.row.content {height: 1000px}
    
    .sidenav {
      height: 100%;
    }
	
	
    /* content 영역 style */	

    table tr th{
		font-family: 'Sunflower', sans-serif;
		font-size : 28px;
	}
	table tr td{
		font-family: 'Sunflower', sans-serif;
		font-size : 20px;
		}
	.space{
		height : 10px;
		/* display : inline-block; */
		}
	
	/* 슬라이드 갤러리 스타일 */

	.course_image{
		float : right;
		width: 100%;
		position: relative;
		overflow : hidden;
		display : inline-block;
		
		
	}
	.prev,
	.next {
	  cursor: pointer;
	  position: absolute;
	  top: 40%;
	  width: auto;
	  padding: 16px;
	  margin-top: -50px;
	  color: white;
	  font-weight: bold;
	  font-size: 50px;
	  border-radius: 0 3px 3px 0;
	  user-select: none;
	  -webkit-user-select: none;
	}
	.next {
	  right: 0;
	  border-radius: 3px 0 0 3px;
	}
	.mySlides{
		display: none;
		height : 100%;
		}
	.caption-container {
	  text-align: center;
	  background-color: #222;
	  padding: 2px 16px;
	  color: white;
		}
	.row{
		margin-left : 10px;
		width: 100%;
	}
	.row:after {
	  content: "";
	  display: table;
	}
	
	/* Six columns side by side */
	.column {
	  float: left;
	  width: 24%;
	  height : 100px;
	}
	.view{
		width:100%;
		float: left;
		height : 400px;
	}
	.demo {
	  opacity: 0.6;
	}
	
	.active,
	.demo:hover {
	  opacity: 1;
	}
	
	
	/* 자전거길 정보 스타일 */
	.course_info{
		margin-top: 50px;
		display : inline-block;
		width: 100%;
		}
	.course_info table tr th{
		width: 150px;
		text-align: center;
	}
	
	/* 코스약도 스타일 */
	#map1{
		float: center;
		}
	.level{
		width: 40px;
		height : 30px;
		}
		
	.icon{
		width: 40px;
		height : 40px;
		}
	h1{
	font-family: 'Black Han Sans', sans-serif;
	
	}
	
	h2{
	font-family: 'Do Hyeon', sans-serif;
	}
	
	.point{
		width: 70px;}
	
	/* sidebar 반응형 css */
	@media screen and (max-width: 767px) {
		.sidenav {
	        height: auto;
	        padding: 15px;
	      }
		.sidenav ul li{
	     	float : left;}
	    .row.content {height: auto;
	    	} 
	    .ho:hover .course_name{
    	display : block;
    	position : absolute;
    	}
    }
    .sidenav ul{
    	list-style: none;
    	}
    .course_name {
    	display : none;
    	}
    .ho:hover .course_name{
    	display : block;
    	matgine : 0px;
    	}
    .btn-group{width:100%;
    	margin: 2px;}
    .btn-group .btn{width:100%;
   		font-size: 20px;
   		font-family: 'Sunflower', sans-serif;}
    .dropdown-menu{
    	width : 100%;
    	}
    .dropdown-menu .dropdown-item{
    	text-align : center;
    	display : block;
		color : white;
		font-family: 'Sunflower', sans-serif;
		font-size : 15px;
    	}
	  
    .shop1{
    	background-color: red;
    	color : white;
    	}
    .shop1+.dropdown-menu{
		background-color: red;
 		filter : brightness(130%);
		}
	.shop2{
    	background-color: orange;
    	color : white;
    	}
    .shop2+.dropdown-menu{
		background-color: orange;
 		filter : brightness(130%);
		}
	.shop3{
    	background-color: blue;
    	color : white;
    	}
    .shop3+.dropdown-menu{
		background-color: blue;
 		filter : brightness(120%);
		}
	.shop4{
    	background-color: green;
    	color : white;
    	}
    .shop4+.dropdown-menu{
		background-color: green;
 		filter : brightness(120%);
		}
	.shop5{
    	background-color: hotpink;
    	color : white;
    	}
    .shop5+.dropdown-menu{
		background-color: hotpink;
 		filter : brightness(120%);
		}
	.shop6{
    	background-color: silver;
    	color : white;
    	}
    .shop6+.dropdown-menu{
		background-color: silver;
 		filter : brightness(120%);
		}
</style>
<div class = "container">
	<div class = "row content">
		<div class = "col-sm-3 sidenav">
			<h2>소개</h2>
			<hr>
			<div class="btn-group">
			  <button type="button" class="btn shop1 dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    잠실행복점
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="#">코스1</a>
			    <a class="dropdown-item" href="#">코스2</a>
			    <a class="dropdown-item" href="#">코스3</a>
			  </div>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop2 dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    잠실행복점
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="#">코스1</a>
			    <a class="dropdown-item" href="#">코스2</a>
			    <a class="dropdown-item" href="#">코스3</a>
			  </div>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop3 dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    잠실행복점
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="#">코스1</a>
			    <a class="dropdown-item" href="#">코스2</a>
			    <a class="dropdown-item" href="#">코스3</a>
			  </div>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop4 dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    잠실행복점
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="#">코스1</a>
			    <a class="dropdown-item" href="#">코스2</a>
			    <a class="dropdown-item" href="#">코스3</a>
			  </div>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop5 dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    잠실행복점
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="#">코스1</a>
			    <a class="dropdown-item" href="#">코스2</a>
			    <a class="dropdown-item" href="#">코스3</a>
			  </div>
			</div>
			<div class="btn-group">
			  <button type="button" class="btn shop6 dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    잠실행복점
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="#">코스1</a>
			    <a class="dropdown-item" href="#">코스2</a>
			    <a class="dropdown-item" href="#">코스3</a>
			  </div>
			</div>

		</div>
		<div class="col-sm-9 main">
			<h1>북한강(밝은광장 - 샛터삼거리)</h1>
	<div class = "space"></div>
	<div class = "course_image">
		<div class ="view">
			<div class = "mySlides">
				<img src = "../../images/course/course1/courseImage1-1.jpg" style ="width: 100%;height:100%;">
			</div>
			<div class = "mySlides">
				<img src = "../../images/course/course1/courseImage1-2.jpg" style ="width: 100%;height:100%;">
			</div>
			<div class = "mySlides">
				<img src = "../../images/course/course1/courseImage1-3.jpg" style ="width: 100%;height:100%;">
			</div>
			<div class = "mySlides">
				<img src = "../../images/course/course1/courseImage1-4.jpg" style ="width: 100%;height:100%;">
			</div>
		</div>
		<a class="prev" onclick="plusSlides(-1)">&lt;</a>
 		<a class="next" onclick="plusSlides(1)">></a>

 		<div class="row">
		    <div class="column">
		      <img class="demo cursor" src="../../images/course/course1/courseImage1-1.jpg" style="width:100%;height:100%" onclick="currentSlide(1)" alt="북한강 벚꽃길">
		    </div>
		    <div class="column">
		      <img class="demo cursor" src="../../images/course/course1/courseImage1-2.jpg" style="width:100%;height:100%" onclick="currentSlide(2)" alt="">
		    </div>
		    <div class="column">
		      <img class="demo cursor" src="../../images/course/course1/courseImage1-3.jpg" style="width:100%;height:100%" onclick="currentSlide(3)" alt="test3">
		    </div>
		    <div class="column">
		      <img class="demo cursor" src="../../images/course/course1/courseImage1-4.jpg" style="width:100%;height:100%" onclick="currentSlide(4)" alt="test4">
		</div>
		   <script>
			var slideIndex = 1;
			showSlides(slideIndex);
			
			function plusSlides(n) {
			  showSlides(slideIndex += n);
			}
			
			function currentSlide(n) {
			  showSlides(slideIndex = n);
			}
			
			function showSlides(n) {
			  var i;
			  var slides = document.getElementsByClassName("mySlides");
			  var dots = document.getElementsByClassName("demo");
			  var captionText = document.getElementById("caption");
			  if (n > slides.length) {slideIndex = 1}
			  if (n < 1) {slideIndex = slides.length}
			  for (i = 0; i < slides.length; i++) {
			      slides[i].style.display = "none";
			  }
			  for (i = 0; i < dots.length; i++) {
			      dots[i].className = dots[i].className.replace(" active", "");
			  }
			  slides[slideIndex-1].style.display = "block";
			  dots[slideIndex-1].className += " active";
			  captionText.innerHTML = dots[slideIndex-1].alt;
			}
		</script>
		</div>
	</div>
	<div class ="space"></div>
	<div class = "course_info">
		<h2><img class="icon" src = "../../images/course/common/icon1.PNG"> 코스정보</h2>
		<hr/>
		<table>
			<tr>
				<th>코스정보 : </th>
				<td> 밝은 광장 - 샛터삼거리</td>
			</tr>
			<tr>
				<th>전체거리 : </th>
				<td> 왕복 28.6km</td>
				
			</tr>
			<tr>
				<th>예상시간 :  </th>
				<td> 2시간 </td>
			</tr>
			<tr>
				<th>난이도 : </th>
				<td><img class="level" src="../../images/course/common/star.png">
				<img class="level" src="../../images/course/common/star.png"></td>
			</tr>
		</table>
		
	</div>
	<div class ="space"></div>
	<div class = "point_div">
		<h2><img class="icon" src = "../../images/course/common/icon2.PNG"> 매력포인트</h2>
		<hr>
		<table>
			<tr>
				<th style="color:red;"><img class="point" src = "../../images/course/common/point1.PNG">
				 &nbsp; 자전거 문화의 상징, 밝은 광장</th>
			</tr>
			<tr>
				<td colspan="2">
				<br>남한강 자전거길과 북한강 자전거길이 만나는 두물머리 지역에 수변 데크 및 쉼터, 바이크 카페,
				화장실 등이 있는 밝은광장을 조성하여 자전거길의 대표 랜드마크로 재활용
				</td>
			</tr>
			<tr>
				<td> </td>
			</tr>
			<tr>
				<th style="color:orange;"><br><img class="point" src = "../../images/course/common/point2.PNG">
				&nbsp;추억과 낭만을 따라 달리는 자전거길</th>
			</tr>
		
			<tr>
				<td colspan="2">
				<br>젊은 사람들의 MT장소로 각광받는 대성리, 청평, 강촌, 춘천을 자전거로 달릴 수 있게 됨으로써
				젊은이들에게는 추억과 낭만을, 장년층에게는 추억과 향수를 떠올리게 함
				</td>
			</tr>
				<tr>
				<th style="color:blue;"><br><img class="point" src = "../../images/course/common/point3.PNG">
				&nbsp;'물과 안개의 도시' 춘천까지 자전거로..</th>
			</tr>
			<tr>
				<td colspan="2">
				<br>'물과 안개의 도시'로 유명한 춘천의 의암호반, 상중도, 하중도, 붕어섬과 애니메이션 박물관, 인형극장,
				막국수 체험박물관, 명동 닭길비 골몽 등 명소를 새롭게 체험할 수 있는 좋은 기회
				</td>
			</tr>
		</table>
	</div>
	
	<div class ="space"></div>
	<div class = "rough_map">
		<h2><img class="icon" src = "../../images/course/common/icon3.PNG"> 코스약도</h2>
		<hr>
		<img style="width:80%;margin-left:10%; " src = "../../images/course/course1/course1-5.PNG">
	</div>
	
	
	<div class ="space"></div>
	<div class = "come">
		<h2><img class="icon" src = "../../images/course/common/icon4.PNG"> 교통안내</h2>
		<hr>
	</div>
	
	<div class ="space"></div>
	<div class = "come">
		<h2><img class="icon" src = "../../images/course/common/icon5.PNG"> 체험후기</h2>
		<hr>
	</div>
		
		
		
		</div>
		
		
		
	
	
	
	</div>



</div>

<%@ include file= '/views/common/footer.jsp' %>