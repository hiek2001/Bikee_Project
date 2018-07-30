package common;

import javax.servlet.http.HttpServletRequest;

import admin.model.service.AdminService;

public class PageBar {

	public static String getPageBar(HttpServletRequest request, int cPage, int numPerPage)
	{
		int totalContent=new AdminService().selectMemberCount();
		int totalPage=(int)Math.ceil((double)totalContent/numPerPage);
		int pageBarSize=5;
		String pageBar="";
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd=pageNo+pageBarSize-1;
		
		if(pageNo==1)
		{
			pageBar+="<span>[이전]</span>";
		}
		else
		{
			pageBar+="<a href='"+request.getContextPath()+"/views/admin/memberList?cPage="+(pageNo-1)+"&numPerPage="+numPerPage+"'>[이전]</a>";
		}
		
		while(!(pageNo>pageEnd||pageNo>totalPage))
		{
			if(cPage==pageNo)
			{
				pageBar+="<span class='cPage'>"+pageNo+"</span>";
			}
			else
			{
				pageBar+="<a href='"+request.getContextPath()+"/views/admin/memberList?cPage="+pageNo+"&numPerPage="+numPerPage+"'>["+pageNo+"]</a>";
			}
			pageNo++;
				
		}
		if(pageNo>totalPage)
		{
			pageBar+="<span class='cPage'>"+pageNo+"</span>";
		}
		else
		{
			pageBar+="<a href='"+request.getContextPath()+"/admin/memberList?cPage="+pageNo+"&numPerPage="+numPerPage+"'>[다음]</a>";
		}
		return pageBar;
	}
}

