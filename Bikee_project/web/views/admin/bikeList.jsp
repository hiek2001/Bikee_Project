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
	
/* 상태 설정 드롭다운 */
	.status-update .dropdown span{background-color: red;border: 1px solid white;}
	ul button {display:inline;width :70px;color:gray;font-size:14px;;background-color: white;}
/* 상태스타일 */
	.Using{display:inline;width :70px;color:#ED0000;font-size:14px;
	text-shadow:1px 1px 1px  #FF6C6C ,10px 10px 20px  palegoldenrod;background-color: white;}
	.Using:hover{color:#ED0000}
	
	.Available{display:inline;width :70px;color:#6799FF;font-size:14px;
	text-shadow:1px 1px 1px  #9EBEC4 ,10px 10px 20px  palegoldenrod;background-color: white;}
	.Available:hover{color:#6799FF}
	
	.Repair{display:inline;width :70px;color:#DB9700;font-size:14px;
	text-shadow:1px 1px 1px  #FFDF24 ,10px 10px 20px  palegoldenrod; background-color: white;}
	.Repair:hover{color:#DB9700}
	

</style>

<!-- --------------------------------------------------------------------------------------------------- -->

<script>


$(function () {
	$('#statusAvailable').on('click',function(){
		alert('사용가능');
		var form1 = $('#statusAvailableFrm');
		var url = "<%= request.getContextPath() %>/bikeStatusUpdate";
		form1.attr("action", url);
		form1.submit();
		
	});
	$('#statusUsing').on('click',function(){
		alert("사용중");
		var form1 = $('#statusUsingFrm');
		
		var url = "<%= request.getContextPath() %>/bikeStatusUpdate";
		form1.attr("action", url);
		form1.submit();
		
	});
	$('#statusRepair').on('click',function(){
		alert("수리중");
		var form1 = $('#statusRepairFrm');
		var url = "<%= request.getContextPath() %>/bikeStatusUpdate";
		form1.attr("action", url);
		form1.submit();
	});
});


</script>

<!-- --------------------------------------------------------------------------------------------------- -->
	
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
 <%--   <%String status =""; %>
   <%status= b.getBikeStatus(); %> --%>
      <tbody id="myTable">
<!-- 자전거 별 폼 -->
     
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
	         	<td >성남탄천점</td>
	         <% }%>
	         
		     <td><%= b.getBikeType() %></td>
		      
		  
	         <td>
	         
	         
	         	<div class="dropdown"  >
	         		<%if(b.getBikeStatus().equals("사용가능")){ %>
				    	<span class="Available btn btn-default dropdown-toggle abc" data-toggle="dropdown" id="caret"   ><%=b.getBikeStatus()%>  </span>
				    <%}else if(b.getBikeStatus().equals("사용중")){ %>
				    	<span class="Using btn btn-default dropdown-toggle abc" data-toggle="dropdown" id="caret"   ><%=b.getBikeStatus()%>  </span>
				    <%}else{ %>
				    	<span class="Repair btn btn-default dropdown-toggle abc" data-toggle="dropdown" id="caret"   ><%=b.getBikeStatus()%>  </span>
				    <%} %>
				    <ul class="dropdown-menu dropdown-menu-bottom"  >
				     <form id='statusAvailableFrm' action="<%= request.getContextPath() %>/bikeStatusUpdate"> 	
					      
					      <li>
					      <button type="submit()" id='statusAvailable' name='statusAvailable' value='사용가능'><a>사용가능</a></button>
					      <input type="hidden" name='bikeId' value="<%=b.getBikeId()%>">
					      <input type="hidden" id='statusAvailable' name='input_statusAvailable' value='사용가능'>
					      </li>
				      </form>
				      <form id='statusUsingFrm' action="<%= request.getContextPath() %>/bikeStatusUpdate"> 
					      
					      <li>
					      <button type="submit()" id='statusUsing' name='statusUsing' value='사용중'>사용중</button>
					      <input type="hidden" name='bikeId' value="<%=b.getBikeId()%>">	
					      <input type="hidden" id='statusUsing' name='input_statusUsing' value='사용중'>
					      </li>
				      </form>
				      <form id='statusRepairFrm' action="<%= request.getContextPath() %>/bikeStatusUpdate"> 	
					      <li>
						      <button type="submit()" id='statusRepair' name='statusRepair' value='수리중'>수리중</button>
						      <input type="hidden" name='bikeId' value="<%=b.getBikeId()%>">
						      <input type="hidden" id='statusRepair' name='input_statusRepair' value='수리중'>
					      </li>
				      </form>
				      
				    </ul>
				</div>
	         </td>
	
	         
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
