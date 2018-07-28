<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="notice.model.vo.*,java.util.List;"%>
    
<% List<Notice> list = (List)request.getAttribute("list"); %>
<script>

$(function () {
	alert("들어옴");
})

</script>
<fieldset>
	        
<legend class="glyphicon glyphicon-flash">공지사항</legend>	           
	<div class="notice-container"  >
		   <table id="tickets" class="table table-hover">
		   <thead>
			      <tr>
			         <th style="width: 130px;">번호</th>
			         <td style="text-align: left;">제목</td>
			         </tr>
			</thead>
		 
			<%for(Notice n :list){%>
			 <tbody id="myTable">
				<tr>	
					<td><%=n.getNoticeNo() %></td>
					<a href='<%= request.getContextPath() %>/notice/noticeView?no=<%= n.getNoticeNo() %>'>
				</tr>
			</tbody>
		<%}%>
		  </table>
	</div>
             
</fieldset>