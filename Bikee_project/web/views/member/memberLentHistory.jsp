<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lent.model.vo.LentBike, java.util.List" %>
<%
	List<LentBike> list = (List<LentBike>) request.getAttribute("list");
%>
<%@ include file= '/views/common/header.jsp' %>
<style>
table {
	margin: 50px 0px;
}

thead {
	font-size: 1.3em;
	font-weight: 700;
	background-color: blue;
	color: white;
}
</style>


<div class="container">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>구매번호</th>
				<th>이용권 종류</th>
				<th>이용권 가격</th>
				<th>바이크 종류</th>
				<th>구매일</th>
				<th>반납일</th>
				<th>구매자</th>
				<th>대여소</th>
			</tr>
		</thead>
		<tbody>
			<% for(LentBike lb : list) { %>
			<tr>
				<td><%= lb.getMerchantUid() %></td>
				<td><%= lb.getMethodNum() %></td>
				<td><%= lb.getLentPrice() %></td>
				<td><%= lb.getBikeId() %></td>
				<td><%= lb.getBuyDate() %></td>
				<td><%= lb.getReturnDate() %></td>
				<td><%= lb.getBuyerId() %></td>
				<td><%= lb.getShopId() %></td>
			</tr>
			<% } %>
		</tbody>
	</table>
</div>
<%@ include file= '/views/common/footer.jsp' %>