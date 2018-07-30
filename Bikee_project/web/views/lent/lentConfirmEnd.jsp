<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lent.model.vo.LentBike" %>
<% 
	LentBike selectLb = (LentBike) request.getAttribute("selectLb"); 
%>
    
<%@ include file= '/views/common/header.jsp' %>

<style>
h1 {
	margin: 30px 0 0 0;
	font-weight: 700;
}
.table {
	margin: 50px 0 50px 0;
}

td {
	font-size: 1.2em;
}

.row {
	font-weight: 700;
	font-size: 1.5em;
}
</style>
<script>
	$("#btnOK").click(function() {
		location.href="<%= request.getContextPath() %>";
	})
</script>

<div class="container text-center">
	<h1>이용권 구매가 완료되었습니다.</h1>
	<table class="table table-hover table-responsive">
		<tr>
			<td class="row">구매 번호</td>
			<td><%= selectLb.getMerchantUid() %></td>
		</tr>
		<tr>
			<td class="row">이용권 종류</td>
			<td><%= selectLb.getMethodNum() %></td>
		</tr>
		<tr>
			<td class="row">이용권 가격</td>
			<td><%= selectLb.getLentPrice() %></td>
		</tr>
		<tr>
			<td class="row">바이크 종류</td>
			<td><%= selectLb.getBikeId() %></td>
		</tr>
		<tr class="success">
			<td class="row">구매일</td>
			<td><%= selectLb.getBuyDate() %></td>
		</tr>
		<tr class="danger">
			<td class="row">반납일</td>
			<td><%= selectLb.getReturnDate() %></td>
		</tr>
		<tr>
			<td class="row">구매자</td>
			<td><%= selectLb.getBuyerId() %></td>
		</tr>
		<tr>
			<td class="row">대여소</td>
			<td><%= selectLb.getShopId() %></td>
		</tr>
		<tr>
			<td colspan="2"><button type="button" class="btn btn-primary btn-lg" onclick="location.href='<%= request.getContextPath() %>';">확인</button></td>
		</tr>
	</table>
</div>

<%@ include file= '/views/common/footer.jsp' %>