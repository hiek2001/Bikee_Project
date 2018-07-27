<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lent.model.vo.LentBike" %>
<% 
	LentBike lb = (LentBike) request.getAttribute("selectLb"); 
	int amount = (int) request.getAttribute("amount");
%>
    
<%@ include file= '/views/common/header.jsp' %>

<div class="text-center">
	<p>주문번호 : <%= lb.getMerchantUid() %></p>
	<p>이용권 종류 : <%= lb.getMethodNum() %></p>
	<p>자전거 이름 : <%= lb.getBikeId() %></p>
	<p>대여일 : <%= lb.getBuyDate() %></p>
	<p>반납일 : <%= lb.getReturnDate() %></p>
	<p>구매자 이름 : <%= lb.getMerchantUid() %></p>
	<p>대여소 이름 : <%= lb.getShopId() %></p>
	<p>가격 : <%= amount %></p>
</div>

<%@ include file= '/views/common/footer.jsp' %>