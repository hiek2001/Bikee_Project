<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lent.model.vo.LentBike" %>
    
<%
	int methodNum = (int) request.getAttribute("methodNum");
%>

<%@ include file= '/views/common/header.jsp' %>
<script>
	function fn_callingJsp() {
		location.href="<%= request.getContextPath() %>/lent/lentChoice"
	}
</script>

<h1>lentChoice</h1>
<h1><%= methodNum %></h1>
<form action="<%= request.getContextPath() %>/lent/lentChoice" method="post">
	<input type="text" name="bikeId" id="bikeId" value="1">bikeId
	<input type="hidden" name="methodNum" id="methodNum" value="<%=methodNum%>">methodNum
	<input type="text" name="buyDate" id="buyDate" value="18-07-25">buyDate
	<input type="text" name="returnDate" id="returnDate" value="18-07-28">returnDate
	<input type="text" name="shopId" id="shopId" value="11">shopId
	<input type="submit" value="구매하기" class="btn btn-lg" onclick="fn_callingJsp()">
</form> 


<%@ include file= '/views/common/footer.jsp' %>