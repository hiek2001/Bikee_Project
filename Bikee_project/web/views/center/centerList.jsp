<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="center.model.vo.Center,java.util.*"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<%@ include file='/views/common/header.jsp' %>
<%
	List<Center> list = (List<Center>)request.getAttribute("list");
	String pageBar =(String)request.getAttribute("pageBar");
%>
<style>
	div.container-fluid{padding-top:10px; padding-bottom:10px}
	div.col-lg-2 {background-color:white;height:600px}
	div.main_title{font:italic normal normal 50px/1.4em dinneuzeitgroteskltw01-_812426 sans-serif;background-color:#1E68CB;color:white;height:200px;
	    padding-top:10px}
	span.font{font:italic normal normal 200px}
	table{margin-top:15px}
	.gi-2x{font-size: 2.5em;margin-top:20px}
</style>
<script>
	function fn_check(){
		var title="openPwdChk";
		
		var status="left=500px, top=100px, width=300px, height=200px, menubar=no, status=no, scrollbars=yes";
		var popup=window.open('',title,status);
	}
   function fn_write()
   {	
	   	location.href="<%=request.getContextPath()%>/centerForm";		
   }
</script>
<section>

<div class="container-fluid">    
	  <div class="row content">
		    <div class="col-lg-2 sidenav">
		    </div>
		    <div class="row" >
		    	
				    <div class="col-lg-8 main_title">
				    	<div class="row">
					    	<div class="col-lg-3" style="width:180px;margin-left:30px">
					    		<span class="glyphicon glyphicon-headphones gi-2x"></span>
					    	</div>
					    	<div class="col-lg-5" style="margin-top:20px">고객센터
					    		<div style="font-size:20px;font-style:normal">1:1 문의를 통해 불편사항을 해결해드려요.</div>
					    	</div>
					    	
				    	</div>
				    	
				    </div>
				
			    <div class="col-lg-8"> 
				     <table class="table table-striped">
					   <thead>
							<tr>
								<th>NO</th>
								<th>TITLE</th>
								<th>WRITER</th>
								<th>DATE</th>
								<th>FILE</th>
								<th>STATE</th>
								<!-- <th>STATE</th> -->
							</tr>
					   </thead>
						<tbody>
							<%for(Center c :list) {%>
							<tr>
								<td><%=c.getCenterNo() %></td>
								<td><a href='<%=request.getContextPath()%>/centerView?no=<%=c.getCenterNo()%>'><%=c.getCenterTitle() %></a></td>
								<td><%=c.getCenterWriter() %></td>
								<td><%=c.getCenterWriter() %></td>
								<td><%if(c.getOriginalFileName()!=null){%>
								<img src='<%=request.getContextPath()%>/images/file1.PNG' width='16px'/>
								<%} %>
								</td>
								<td>답변대기</td>
								<!-- <td>답변대기</td> -->
							</tr>
							<%} %>
						</tbody>
					 </table>
					<div class="text-center" style="margin-left:110px">
					    <ul class="pagination pagination-lg">
					    	<%=pageBar %>
					     </ul> 
					 	<%if(memberLoggedIn!=null){%>
				       		<button type="button" class="btn btn-primary btn pull-right" onclick='fn_write()' style="background-color:#1E68CB;width:110px; height:40px; font-size:16px">WRITE</button>
						<%} %>
					</div>
			    </div>
		    </div>
			   <!--  <div class="col-lg-2 sidenav">
			    </div> -->
	  </div>
</div>

</section>
<%@ include file='/views/common/footer.jsp' %>