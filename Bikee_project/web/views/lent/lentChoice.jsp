<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lent.model.vo.PurchaseTicket" %>
    
<%
	PurchaseTicket pt = (PurchaseTicket) request.getAttribute("pt");
%>

<%@ include file= '/views/common/header.jsp' %>
<script>
	function fn_callingJsp() {
		location.href="<%= request.getContextPath() %>/lent/lentChoice"
	}
</script>

<form action="<%= request.getContextPath() %>/lent/lentChoice" method="post">
	<input type="text" name="bikeId" id="bikeId" value="bmx201">bikeId
	<input type="hidden" name="methodNum" id="methodNum" value="<%=pt.getMethodNum()%>">methodNum <!-- pt.getMethodNum() -->
	<input type="text" name="buyDate" id="buyDate" value="18-07-25">buyDate
	<input type="text" name="returnDate" id="returnDate" value="18-07-28">returnDate
	<input type="text" name="shopId" id="shopId" value="no_02">shopId
	<input type="submit" value="구매하기" class="btn btn-lg" onclick="fn_callingJsp()">
</form> 


<%@ include file= '/views/common/footer.jsp' %>