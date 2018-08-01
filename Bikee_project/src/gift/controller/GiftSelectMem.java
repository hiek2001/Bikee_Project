package gift.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gift.model.service.GiftService;
import member.model.vo.Member;

/**
 * Servlet implementation class PresentSelectMem
 */
@WebServlet("/gift/giftSelectMemPhone")
public class GiftSelectMem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GiftSelectMem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String giftSelectPhone = (String)request.getParameter("giftSelectPhone");
		System.out.println(giftSelectPhone);
		
		//휴대폰번호를 받아서 입력한 휴대폰번호와 일치하는 회원의 이름, ID를 찾아옴 = bikeId의 가격
		Member m = new GiftService().selectMemPhone(giftSelectPhone);
		System.out.println(m);
		
		System.out.println(m.getMem_id());
		System.out.println(m.getMem_name());
		System.out.println(m.getMem_email());
		
		request.setAttribute("m.getMem_name()",m.getMem_name());
		System.out.println("테스트용. 지워주세요");

		request.getRequestDispatcher("/views/gift/giftPage.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
