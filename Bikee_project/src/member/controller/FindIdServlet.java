package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class FindIdServlet
 */
@WebServlet("/findId")
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String findName=(String)request.getParameter("findName");
		String findEmail=(String)request.getParameter("findEmail");
		
		Member m=new MemberService().findId(findEmail);
		
		String msg="";
		String loc="/";
		String view="/views/common/memberListMsg.jsp";
		if(m == null) 
		{
			//폰번호 확인하라는 알람 뜨기
			msg="이메일을 다시 확인해주세요"; 
			loc="/views/member/findId.jsp";
			
			
		}
		else if (m.getMem_email().equals(findEmail))
		{
			//아이디 보여주기
			String showId=m.getMem_id();
			loc="/views/member/showId.jsp?showId="+showId;
		}
		request.setAttribute("msg",msg);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher(loc).forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
