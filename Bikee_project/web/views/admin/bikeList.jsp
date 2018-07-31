<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*,notice.model.vo.Notice,bike.model.vo.Bike" %>
<%@ include file= '/views/common/header.jsp' %>
<%
   List<Bike> list = (List<Bike>) request.getAttribute("list");  
   int cPage = (int) request.getAttribute("cPage");
   String pageBar = (String) request.getAttribute("pageBar");
   int totalContent =(int)request.getAttribute("totalContent");
   
%>

<style>
/*총 자전거 수  */

 #pp{ text-align: right; width: 1000px;margin: 0px;}
/* 상태 호버 */
	#status:hover{display:inline;width :70px;color:#F15F5F;font-size:14px;
	text-shadow:1px 1px 1px  #DB0000,10px 10px 20px  palegoldenrod;
	}


</style>


<script>
$(function() {
	$.ajax({
		url:"<%=request.getContextPath()%>/bikeListAjax",
		type:"get",	
		dataType:"html",    /*리턴받는 형식 */
		success:function(data){
			$('#noticeListAjaxTable').html(data);
		}

	});
});
</script>









	
<div class="container" >
  <h2>자전거 현황</h2>
  <hr>
  
<!-- 대여소 선택 --> 



  <div class="container" >
	 
	  <div class="dropdown" style="text-align: right;">
		    <button  class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">대여소 선택
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu dropdown-menu-right"  >
		      <li><a href="#">성남탄천점[tc_01]</a></li>
		      <li><a href="#">노량진역점[no_02]</a></li>
		      <li><a href="#">인천소래포구역점[ic_03]</a></li>
		      <li><a href="#">양평북한강점[yp_04]</a></li>
		      <li><a href="#">잠실행복점[gs_05]</a></li>
		      <li><a href="#">하늘공원점[ha_06]</a></li>
	    	</ul>
	  </div>
	</div>
  
	
	
<!-- 자전거 리스트 --> 

	      
  <table class="table table-hover">
    <thead>
      <tr>
        <th>자전거 코드</th>
        <th>대여소 이름</th>
        <th>자전거 종류</th>
        <th>자전거 상태</th>
      </tr>
    </thead>
   <% for(Bike b : list)  { %>
      <tbody id="myTable">
	      <tr>																																
	         <th><%= b.getBikeId()%></th>

	         <%if(b.getShopId().equals("ha_06")){%>   
	         	<td >하늘공원점</td>
	         <%}else if(b.getShopId().equals("gs_05")){%>
	         	<td >잠실행복점</td>
	         <%}else if(b.getShopId().equals("yp_04")){%>
	         	<td >양평북한강점</td>
	         <%}else if(b.getShopId().equals("ic_03")){%>
	         	<td >인천소래포구역점</td>
	         <%}else if(b.getShopId().equals("no_02")){%>
	         	<td >노량진역점</td>
	         <%}else { %>
	         	<td >노량진역점</td>
	         <% }%>
	         
		     <td ><%= b.getBikeType() %></td>
	         <td ><span id="status"><%= b.getBikeStatus() %><span></td>
	      </tr>
      </tbody>
      <% } %>
  </table>
  
  
  
  <!-- 총자전거수 -->
  
   <div>
   		<p id="pp"><%= "보유 자전거수 : " + request.getAttribute("totalContent")+" 대" %></p>
   </div>
   
   <!-- 페이지 -->
   
   
   <div style="height: 130px; width: 300px; margin-bottom: 20px;">
 			<div id="pageBar" style="width: 300px;display: inline;">
	     		<%=request.getAttribute("pageBar") %>   
	   		</div>
	</div>
	
	
	
  </div>
	







<%@ include file= '/views/common/footer.jsp' %>
