<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 응답한것을 받아서 처리 */
	//isAble=false 중복이다. isAble=true 사용가능하다.
	boolean isAble=(boolean)request.getAttribute("isAble");
	String memId1=(String)request.getAttribute("memId1");
%>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>아이디 중복검사</title>
	<style>
		div#checkid-container
		{
			text-align: center;
			padding-top:50px;
		}
		span#duplicated
		{
			color:red;
			font-weight:bold;
		}
		
		
	</style>
	<script>
	//자식창에서도 계속 사용가능한 아이디를 찾을 수 있게 구현한 것
	function openIdChk()
	{
		var memId1=document.getElementById("memId1").value.trim();
		if(!memId1||memId1.length<4)
		{
		 	alert("아이디는 4글자 이상 가능합니다.");
		 	return;
		}
		//새로 입력한 아이디 값을 저장해주고 부모창으로 보내주는 것
		openIdChkFrm.memId1.value=memId1;
		openIdChkFrm.submit();
	}
	
	//아이디 사용 가능하면 부모창(회원가입하는 홈페이지)에 해당 id를 입력해주는 함수. 그리고 자식창은 닫아줌
	function setmemId(memId1)
	{
		var frm=opener.document.memberEnroll;
		frm.memId1.value=memId1;
		frm.memPw1.focus(); 
		self.close();
		
		
	}
	
	</script>

</head>
<body>
	<div id="checkid-container">
		<% if(isAble==true) {%>
		[<span><%= memId1%></span>]는 사용가능합니다.
		<br><br>
		<button type="button" onclick="setmemId('<%=memId1%>');">닫기</button>
		<%}
		else {%>
		[<span><%= memId1%></span>]는 이미 사용중입니다.
		<br><br>
		<form action="<%=request.getContextPath() %>/openIdChk" name="openIdChkFrm" method="post">
			<input type='text' name='memId1' id='memId1' placeholder='아이디를 입력하세요'/>&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="openIdChk();">아이디중복검사</button>
		</form>
		<%} %>
	</div>
</body>
</html>