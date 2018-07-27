<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='/views/common/header.jsp' %>
<%@ page import="java.util.*, member.model.vo.Member"%>
<%
	ArrayList<Member> list=(ArrayList)request.getAttribute("list");
	/* String searchType="";
	String searchKeyword="";
	if(request.getAttribute("searchType")!=null)
		searchType=(String)request.getAttribute("searchType");
	if(request.getAttribute("searchKeyword")!=null)
		searchKeyword=(String)request.getAttribute("searchKeyword");
	
	//페이징처리 변수들
	int cPage=(int)request.getAttribute("cPage");
	int numPerPage=(int)request.getAttribute("numPerPage"); */
%>
<style>
	section#memberList-container {margin-left:260px;width:70%;}
</style>
<section id="memberList-container">
		<h2>회원관리</h2>
		<!-- 검색창 만들기 -->
		<%-- <div id="search-container">
		검색 타입 : 
			<select id="searchType">
				<option value="mem_id">아이디</option>
				<option value="mem_name">회원명</option>
			</select>
			<div id="search-userId">
				<form action="<%=request.getContextPath()%>/memberFinder">
					<input type="hidden" name="searchType" value="userId">
					<input type="text" name="searchKeyword" size='25' placeholder="검색할 아이디 입력"/>
					<input type="hidden" name="cPage" value="<%=cPage %>"/> 
					<input type="hidden" name="numPerPage" value="<%=numPerPage %>"/>
					<button type="submit">검색</button>
				</form>
			</div>
			<div id="search-userName">
				<form action="<%=request.getContextPath()%>/memberFinder">
					<input type="hidden" name="searchType" value="userName">
					<input type="text" name="searchKeyword" size='25' placeholder="검색할 회원명 입력"/>
					<input type="hidden" name="cPage" value="<%=cPage %>"/>
					<input type="hidden" name="numPerPage" value="<%=numPerPage %>"/>
					<button type="submit">검색</button>
				</form>
			</div>
			<div id="search-gender">
				<form action="<%=request.getContextPath()%>/memberFinder">
					<input type="hidden" name="searchType" value="gender">
					<input type="radio" name="searchKeyword" value="M" checked>남
					<input type="radio" name="searchKeyword" value="F">여
					<input type="hidden" name="cPage" value="<%=cPage %>"/>
					<input type="hidden" name="numPerPage" value="<%=numPerPage %>"/>
					<button type="submit">검색</button>
				</form>
			</div>
		</div>
		<div id='numPerPage-container'>
         페이지당 회원수:
         <form name="numPerPageFrm" id="numPerPageFrm" action="<%=request.getContextPath()%>/admin/memberList">
            <input type="hidden" name="cPage" value="<%=cPage %>"/>
            <select name="numPerPage" id="numPerPage">
               <option value="10" <%=numPerPage==10?"selected":"" %>>10</option>
               <option value="5" <%=numPerPage==5?"selected":"" %>>5</option>
               <option value="3"  <%=numPerPage==3?"selected":"" %>>3</option>
            </select>
         </form>
      </div>  --%>
     <table id="admin-table" class="table" width="80%">
         <tr>
            <th scope="col">아이디</th>
            <th scope="col">이름</th>
            <th scope="col">생년월일</th>
            <th scope="col">전화번호</th>
            <th scope="col">이메일</th>
            <th scope="col">주소</th>
         </tr>
      <!-- 보내준 데이터를 출력하는 로직 -->
      <%if(list==null){ %>
      <tr>
         <td colspan=6>검색결과가 없습니다.</td>
      </tr>
      <%}
      else
      {
         for(Member m:list)
         {
      %>   <tr>
            <td scope="row"><a href="<%=request.getContextPath()%>/memberView?userId=<%=m.getMem_id()%>">
            <%=m.getMem_id()%>
            </a>
            </td>
            <td><%=m.getMem_name() %></td>
            <td><%=m.getMem_birthdate()%></td>
            <td><%=m.getMem_email()%></td>
            <td><%=m.getMem_phone()%></td>
            <td><%=m.getMem_addr()%></td>
         </tr>
         <%}
      }%>
      </table>
      <%-- <div id='pageBar'>
      	<%=request.getAttribute("pageBar") %>
      </div>--%>
   </session> 
<%@ include file='/views/common/footer.jsp' %>