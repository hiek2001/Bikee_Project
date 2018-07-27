<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="center.model.vo.Center,java.util.*"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
	 .back {
		background-color: white;
		color: black;
		position: static;
	}
	.modal-80size {
	   height: auto;
	  min-height: 30%; 
	  width:65%
	} 
	.modal_left{
		left: 55%;
   		 transform: translateX(-55%);
	}
	.modal_line{
		border:none;
		margin-top:20px
	}

</style>
<script>
   function fn_write(login)
   {	
	   	location.href="<%=request.getContextPath()%>/centerForm";		
   }
   
   $(function (){
	   $(".checkA").click(function(){
		   var id = $('.checkId').attr('id');
		    var no = $(this).attr('id');
		    var pwd = $(this).attr('name');
		    if(id=='admin'){
		    	location.href="<%=request.getContextPath()%>/centerView?centerNo_="+no;
		    }else{
		    	$("#centerNo_").val(no);
				$("#centerPw").val(pwd);
		    }
			
	   });
   });
   
   function fn_checkPwd() {
	   var pwd = $("[name=centerPw]").val();
	   
		if($('#checkPwd').val().trim().length == 0) { // val() => 값. trim() => 공백 제거. 
			alert("비밀번호를 입력하세요");
			$('#checkPwd').focus(); 
			return false;
		}else if($('#checkPwd').val()!=pwd){
			alert("비밀번호가 틀립니다. 다시 입력해주세요.");
			return false;
		}
		return true;
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
					    	<div class="col-lg-9" style="margin-top:20px">고객센터
					    		<p style="font-style:normal; font-size:20px">1:1문의를 통해 불편사항, 개선사항 등을 남겨주시면 빠른 시일내에 답변드리겠습니다. </p>
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
							<%if(session.getAttribute("memberLoggedIn")!=null) {%>
							<input type="hidden" class="checkId"id="<%=memberLoggedIn.getMem_id()%>"/>
							<%} %>
							<%for(Center c :list) {%>
							<tr>
								<td><%=c.getCenterNo() %></td>
								<%-- <td><a href='<%=request.getContextPath()%>/centerView?no=<%=c.getCenterNo()%>'><%=c.getCenterTitle() %></a></td> --%>
								<td>
									<i class="material-icons">lock_outline</i>
									<a href='#' id="<%=c.getCenterNo() %>" name="<%=c.getCenterPwd() %>" class="checkA" data-toggle="modal" data-target="#checkPwdmodal" data-backdroup="static"><%=c.getCenterTitle() %></a>
									<div class="modal fade modal_left" id="checkPwdmodal" role="dialog" data-backdrop="false" tabindex="-1">
					                <div class="modal-dialog modal-80size">
					                  <!-- Modal 내용-->
						                  <div class="modal-content back modal-80size">
						                  
						                    <div class="modal-header modal_line">
							                      <button type="button" class="close" data-dismiss="modal">&times;</button>
							                     
						                     </div> 
						                     
						                     <form  action="<%=request.getContextPath()%>/centerView"id="loginModalFrm" method="post" onsubmit="return fn_checkPwd()">
							                      <div class="modal-body" >
							                      	 <h3 class="txtcenter text-center" style="margin-bottom:40px;margin-top:0px">비밀번호 입력</h3>
									                 <input type="password" id="checkPwd" name="checkPwd" class="form-control form-control-sm validate ml-0" placeholder="Enter password">
									                 <input type="hidden" id="centerNo_" name="centerNo_"/>
									                 <input type="hidden" id="centerPw" name="centerPw"/>
									           	  </div>
							            	
							                     <div class="modal-footer modal_line">
								                     <button type="submit" class="btn  btn-default " >확인</button>  
								                     <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
							                     </div>   
						                    </form>
						                </div>
					               </div>
							</div>
								</td>
								<td></td>
								<td><%=c.getCenterWriter() %></td>
								<td><%=c.getCenterDate() %></td>
								<td><%if(c.getOriginalFileName()!=null){%>
								<img src='<%=request.getContextPath()%>/images/file1.PNG' width='16px'/>
								<%} %>
								</td>
								<td>답변대기</td>
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