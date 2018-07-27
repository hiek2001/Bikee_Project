<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = 'java.util.*, notice.model.vo.*' %>


<%
  Notice notice = (Notice)request.getAttribute("notice");
  List<NoticeComment> commentList = (List<NoticeComment>)request.getAttribute("list");  /* 댓글 */
  

%>
<%@ include file= '/views/common/header.jsp' %>
<style>
	div#notice-container{width:800px; margin:0 auto; text-align:center;}
	div#notice-container h2{margin:10px 0;}
	form#tbl-notice{width:500px; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
 	div#comment-container button#btn-insert{width: 70px; height: 40px;   position: relative; top: -20px; } 
	table#tbl-comment{width:580px; margin:0 auto; border-collapse:collapse; clear:both; } 
    table#tbl-comment tr td{border-bottom:1px solid; border-top:1px solid; padding:5px; text-align:left; line-height:120%;}
    table#tbl-comment tr td:first-of-type{padding: 5px 5px 5px 20px;}
    table#tbl-comment tr td:last-of-type {text-align:right; width: 100px;}
    table#tbl-comment button.btn-reply{display:none; width: 50px;}
    table#tbl-comment tr:hover {background:lightgray;}
    table#tbl-comment tr:hover button.btn-reply{display:inline;}
    table#tbl-comment tr.level2 {color:gray; font-size: 14px;}
    table#tbl-comment sub.comment-writer {color:navy; font-size:14px}
    table#tbl-comment sub.comment-date {color:tomato; font-size:10px}
    table#tbl-comment tr.level2 td:first-of-type{padding-left:400px;}
    table#tbl-comment tr.level2 sub.comment-writer {color:#8e8eff; font-size:14px}
    table#tbl-comment tr.level2 sub.comment-date {color:#ff9c8a; font-size:10px}
    
</style>

<script>
	

	
	
	
	
 	$(function() {/* 로그인이 된사람 */
 		
//		1. 
		$('[name=noticeComment]').focus(
			function () {
				if(<%=memberLoggedIn==null%>){
					fn_loginAlert();
				}
		});
//		2.
		$('[name=noticeCommentFrm]').submit(
			function () {
				
				if(<%=memberLoggedIn==null%>){
					fn_loginAlert();
					e.preventDefault();
					return;
				}
				var len =$('textarea[name=noticeCommentContent]').val().trim().length;
				if(len ==0){
					alert('내용 없음! 내용 입력!');
					e.preventDefault();
				}
		});
//		3.
		$('.btn-reply').on('click',function() {
			if(<%=memberLoggedIn != null%>){
				/* 세션에 로그인정보 넣어놈// 로그인 성공 */
			
				var tr = $("<tr></tr>"); /* <tr>요소를 만듬  [create.element] 댓글을위한 tr 그 밑에 td*/
				var html = ""; /* colspan = 답글 , 내용 */
				
				
//				 답글에 버튼 
				html+="<td style='display: none; text-align: left;colspan:2' >";
				html+="<form action='<%=request.getContextPath()%>/notice/noticeCommentInsert' method='post'>";
				html+="<input type='hidden' name='noticeRef' value='<%=notice.getNoticeNo() %>'/>";                      /* level2 = 답글O 댓글 X */
				html+="<input type='hidden' name='noticeCommentWriter' value='<%=memberLoggedIn.getMem_id() %>'/>";
				html+="<input type='hidden' name='noticeCommentLevel' value='2' />";
				html+="<input type='hidden' name='noticeCommentRef' value='"+$(this).val()+"'/>";  /* $(this) = 이벤트가 걸린놈 = 버튼   [btn-reply의 value값]*/                    
				html+="<textarea name='noticeCommentContent' cols='40' rows='3'></textarea>";
				html+="<button type='submit' class='btn btn-default' style='top:-20px;'>등록</button>";
				html+="</form>";
				html+="</td>";
				
				
				tr.html(html);
				tr.insertAfter($(this).parent().parent()).children("td").slideDown(800);   /* $(this).parent().parent() 뒤에 tr넣는다 = insertAfter */
				$(this).off('click'); /* 한번만할때 off 안막으면 계속생김*/	/* td = html */
				tr.find("form").submit(function(e) {
					if(<%=memberLoggedIn==null%>){
						fn_loginAlert();
						e.preventDefault();
						return;
					}
					var len=$(this).children("textarea").val().trim().length;
					if(len==0){
						e.preventDefault();
					}
					
				});
				tr.find("textarea").focus();
			}else{
				/* 로그인 실패 */
				fn_loginAlert();
			}
		});
		
	});
 	function fn_loginAlert() {
 		alert('로그인 후 이용하세요!!');
		$('#userId').focus();
	}
 	
 function deleteNotice() {
 		
 		var frm = $('#noticeFrm');
		var url = '<%= request.getContextPath() %>/notice/deleteNotice';
		frm.attr("action", url);
		frm.submit();		
 }
 	
 function fn_updateNotice() {
		alert("실행?");
		var frm = $('#noticeFrm');
		var url = "<%= request.getContextPath() %>/notice/noticeUpdate";
		frm.attr("action", url);
		alert("sub");
		frm.submit();
	}
 function returnList() {
	 location.href="<%=request.getContextPath()%>/notice/noticeList";
}


</script>

<section> 
<div id="notice-container" style="width: 700px; margin-bottom: 100px;">
	<div id="tbl-notice">
		 <div id="board-container"><br>
			<div class="container" style="width: 600px;">
				
				<legend style="height: 35px;">
					<p class="pull-left" style="font-size: 25px;"><%=notice.getNoticeTitle()%></p>
					<p class="pull-right" style="font-size: 15px;"><%=notice.getNoticeDate()%></p>
				</legend>
					
			</div>
			<form id="noticeFrm"class="form-inline" action="<%=request.getContextPath()%>/notice/noticeUpdate" method="post">
				<%if(memberLoggedIn !=null && !(memberLoggedIn.getMem_id().equals("admin"))) {%>
					<textarea readonly name="updateContent" placeholder="<%=notice.getNoticeContent()%>" value="update_notice"  cols="85"   name="content" style="height:200px" onKeyup="var m=50;var s=this.scrollHeight;if(s>=m)this.style.pixelHeight=s+4"></textarea>
					<input type="hidden" name="updateNo" value="<%=notice.getNoticeNo() %>"><p></p>
				<%}else if(memberLoggedIn !=null && memberLoggedIn.getMem_id().equals("admin")){ %>
					<textarea  name="updateContent" placeholder="<%=notice.getNoticeContent()%>" value="update_notice"  cols="85"   name="content" style="height:200px" onKeyup="var m=50;var s=this.scrollHeight;if(s>=m)this.style.pixelHeight=s+4"></textarea><p></p>
					<input type="hidden" name="updateNo" value="<%=notice.getNoticeNo() %>">
			 		<input type="button" value="수정" onclick="fn_updateNotice()" class="btn btn-default"/>
			 		<input type="button" value="삭제" onclick="deleteNotice()" class="btn btn-default " >
			 		
	 			<%} %>
	 			<input type="button" value="뒤로가기" onclick="returnList()" class="btn btn-default">
	 			<hr>

	 		</form>
		</div>	 
	</div>
	<div id="comment-container">
		<div class="comment-editor">
		 <!-- 게시물 버튼 -->
			<form action="<%=request.getContextPath()%>/notice/noticeCommentInsert" method="post" name="noticeCommentFrm"/>
				<input type="hidden" name="noticeRef" value="<%=notice.getNoticeNo() %>"/>                    <!-- 실제 위 게시판의 번호 -->
				<input type="hidden" name="noticeCommentWriter" value="<%=memberLoggedIn.getMem_id() %>"/>  <!-- 작성자  = (접속한사람)userId -->
				<input type="hidden" name="noticeCommentLevel" value="1"/>  								   <!-- 깊이 ? 순서 ? -->
				<input type="hidden" name="noticeCommentRef" value="0"/> 								   <!-- 댓글의 번호?? -->
				<textarea rows="3" cols="60" name="noticeCommentContent"/></textarea>		
				<button type="submit" id="btn-insert" class="btn btn-default">등록 </button>
				
			</form>
		</div>
	</div>
	<table id="tbl-comment">
	
	<%if(commentList !=null) { /* 값이있는지여부 */
		
		for(NoticeComment bc:commentList){ /* bc에 list담아서 포문 */
			if(bc.getNoticeCommentLevel()==1){%> <!-- bc가 가져왔으면  -->
				<tr class='level1'>
					<td>
						<sub class = 'comment-writer'><%=bc.getNoticeCommentWrite()%></sub>
						<sub class = 'comment-date'><%=bc.getNoticeCommentDate() %></sub>
						<br/><br/>
						<%= bc.getNoticeCommentContent() %>
					</td>
					<%if(memberLoggedIn !=null && memberLoggedIn.getMem_id().equals("admin")) {%>
					<td>
						<button class="btn-reply" value="<%=bc.getNoticeCommentNo()%>">답글</button>
					</td>
					<% }%>
				</tr>
			<%}       /* if */ 
			else{%>
				<tr class='level2'>
					<td>
						<sub class = 'comment-writer'><%=bc.getNoticeCommentWrite()%></sub>
						<sub class = 'comment-date'><%=bc.getNoticeCommentDate() %></sub>
						<br/>
						<%= bc.getNoticeCommentContent() %>
					</td>
					<%if(memberLoggedIn !=null && memberLoggedIn.getMem_id().equals("admin")) {%>
					<td>
						<button class="btn-reply" value="<%=bc.getNoticeCommentNo()%>">답글</button>
					</td>
					<% }%>
				</tr>
		 	
			<%} /* else */
		} /* for */ 
	} %>  <!-- if -->
	
	
	
	
	
	</table>
</div>
</section>
<%@ include file= '/views/common/footer.jsp' %>     
   
   
   
   
 




















