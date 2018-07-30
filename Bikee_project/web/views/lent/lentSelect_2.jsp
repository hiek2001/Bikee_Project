<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lent.model.vo.Shop, member.model.vo.*" %>
<%@ include file= '/views/common/header.jsp' %>

<%
	int methodNum = (int) request.getAttribute("methodNum");

%>
 
 <!-- 일일권 구매 페이지 -->
 
<style>
</style>

<br><br>

<h2>일일권 구매 페이지</h2>

<%-- <div class="dropdown"> 
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">지점선택
  <span class="caret"></span></button> 
  <ul class="dropdown-menu"> 
    <li><form action="<%= request.getContextPath() %>/lent/lentSelect2" method="post">
		<input type=hidden id = 'methodNum' name='methodNum' value='2'>
		<input type=submit name="shopId" value="tc_01">
		</form>
	</li>
    <li><form action="<%= request.getContextPath() %>/lent/lentSelect2" method="post">
		<input type=hidden id = 'methodNum' name='methodNum' value='2'>
		<input type=submit name="shopId" value="no_02">
		</form>
	</li>
    <li><form action="<%= request.getContextPath() %>/lent/lentSelect2" method="post">
		<input type=hidden id = 'methodNum' name='methodNum' value='2'>
		<input type=submit name="shopId" value="ic_03">
		</form>
	</li>
    <li><form action="<%= request.getContextPath() %>/lent/lentSelect2" method="post">
		<input type=hidden id = 'methodNum' name='methodNum' value='2'>
		<input type=submit name="shopId" value="yp_04">
		</form>
	</li>
    <li><form action="<%= request.getContextPath() %>/lent/lentSelect2" method="post">
		<input type=hidden id = 'methodNum' name='methodNum' value='2'>
		<input type=submit name="shopId" value="gs_05">
		</form>
	</li>
    <li><form action="<%= request.getContextPath() %>/lent/lentSelect2" method="post">
		<input type=hidden id = 'methodNum' name='methodNum' value='2'>
		<input type=submit name="shopId" value="ha_06">
		</form>
	</li>
  </ul> 
</div> --%>

	<h2>정기권 페이지</h2>             
	<form name='lentBikeeFrm' action="<%=request.getContextPath()%>/lent/lentSelect2" method='post'>

 		<table>
		<tr>
			<th>지점명</th>
			<td>
				<input type="radio" name="shopId" id="tc_01" value="tc_01" checked>
				<label for ="tc_01">성남탄천점</label> 
				<input type="radio" name="shopId" id="no_02" value="no_02" checked>
				<label for ="no_02">노량진역점</label> 
				<input type="radio" name="shopId" id="ic_03" value="ic_03" checked>
				<label for ="ic_03">인천소래포구역점</label>
				<input type="radio" name="shopId" id="yp_04" value="yp_04" checked>
				<label for ="yp_04">양평북한강점</label>
				<input type="radio" name="shopId" id="gs_05" value="gs_05" checked>
				<label for ="gs_05">잠실행복점</label>
				<input type="radio" name="shopId" id="ha_06" value="ha_06" checked>
				<label for ="ha_06">하늘공원점</label>
			</td>
		</tr>
										
	</table>
		<input type="hidden" name="methodNum" value="2">
		<input type="submit" value="선택">
		<input type="reset" value="취소">

	</form>

<div id='locker'>

	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="bmx101">
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="bmx102" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="bmx103" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="bmx104" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="bmx105" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="bmx106" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="bmx107" id=''>
	
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="mtb101" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="mtb102" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="mtb103" id=''>
	<br>		
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="mtb104" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="mtb105" id=''>
	
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="road101" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="road102" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="road103" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="road104" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="road105" id=''>
	
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="rcb101" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="rcb102" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="rcb103" id=''>
	<br>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml101" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml102" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml103" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml104" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml105" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml106" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml107" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml108" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml109" id=''>
	<input type=button style="WIDTH: 60pt; HEIGHT: 60pt" value="nml110" id=''>
	<br>
</div>
<br>
<br>


<%@ include file= '/views/common/footer.jsp' %>