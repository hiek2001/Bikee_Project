<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='/views/common/header.jsp' %>
<%@ page import="java.util.*, lent.model.vo.LentBike"%>
<%
	ArrayList<LentBike> list=(ArrayList)request.getAttribute("list");
	 String pageBar=(String)request.getAttribute("pageBar"); 
%>


<style>
	table#admin-table {margin-left:260px;width:70%;}
	div.main_title{font:italic normal normal 50px/1.4em dinneuzeitgroteskltw01-_812426 sans-serif;background-color:#2478FF;color:white;height:100px;
	    padding-top:10px;margin-left:230px;margin-top:5px;width:75%;}
</style>
<div class="col-lg-8 main_title text-center">
	MEMBER PAY LIST
</div>
	
<div id="memberList-container">	
	
	<!-- <h4>회원 관리</h4> -->
     <table id="admin-table" class="table table-condensed" cellspacing="0" width="80%">
       <thead>
         <tr>
            <th class="th-sm">구매번호</th>
            <th class="th-sm">이용권 가격</th>
            <th class="th-sm">바이크 종류</th>
            <th class="th-sm">구매자</th>
         </tr>
       </thead>
     	<tbody>
			<% for(LentBike lb : list) { %>
			<tr>
				<td><a href="<%= request.getContextPath() %>/lent/lentConfirm?merchantUid=<%= lb.getMerchantUid() %>&methodNum=<%=lb.getMethodNum()%>&bikeId=<%=lb.getBikeId()%>&buyDate=<%=lb.getBuyDate()%>&returnDate=<%=lb.getReturnDate()%>&buyerId=<%=lb.getBuyerId()%>&shopId=<%=lb.getShopId()%>&lentPrice=<%=lb.getLentPrice()%>"><%= lb.getMerchantUid() %></a></td>
				<td><%= lb.getLentPrice() %></td>
				<td><%= lb.getBikeId() %></td>
				<td><%= lb.getBuyerId() %></td>
			</tr>
			<% } %>
		</tbody>
      </table>
     </div>
     <div class="pagebar text-center">
	    <ul class="pagination pagination-member">
	    	<%=pageBar %>
	     </ul>  
	 

	 <div style="margin-bottom:50px;">
	 <div class="col-lg-4"></div>
	 	 <form id="search" action="<%=request.getContextPath()%>/admin/memberFinder" method="post">
		    <select class="col-lg-2 form-control" style="width:100px;" id="searchKey" name="searchKey"> 
		      <option value="memName">이름</option> 
		      <option value="memId">아이디</option> 
		    </select>
		  <div class="col-lg-2">
		    <input type="text" name="searchValue" style="width:300px; height:30px;"/>
		  </div>
		  <div class="col-lg-2">
		    <button type="submit" class="btn btn-default" value="search" onclick="return fn_search();" style="height:35px;width:90px;margin-right:200px;" >search</button>
		  </div>
		<div class="col-lg-2"></div>
	  </form>
	 </div>
	</div> 
  

<%@ include file='/views/common/footer.jsp' %>