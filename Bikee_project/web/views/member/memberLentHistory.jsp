<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lent.model.vo.LentBike, java.util.List" %>
<%
	List<LentBike> list = (List<LentBike>) request.getAttribute("list");
%>
<%@ include file= '/views/common/header.jsp' %>
<style>
p {
	margin-top: 100px;
	float: right;
}

table {
	margin: 0px 0px 50px 0px;
}

thead {
	font-size: 1.3em;
	font-weight: 700;
	background-color: blue;
	color: white;
}
</style>
<script>
</script>

<div class="container">
	<p>구매번호를 클릭하면 상세 정보가 나옵니다.</p>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>구매번호</th>
				<th>이용권 가격</th>
				<th>바이크 종류</th>
				<th>구매자</th>
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
<%@ include file= '/views/common/footer.jsp' %>