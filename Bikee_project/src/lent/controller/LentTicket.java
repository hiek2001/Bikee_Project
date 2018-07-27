package lent.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lent.model.service.LentService;
import lent.model.vo.PurchaseTicket;

/**
 * Servlet implementation class PurchaseTest
 */
@WebServlet("/lent/lentTicket")
public class LentTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LentTicket() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// /views/lent/lentChoice.jsp로 전송.
		int methodNum = Integer.parseInt(request.getParameter("methodNum"));
		
		// lentTicket에서 선택한 이용권에 맞는 purchase_ticket 객체 생성.
		PurchaseTicket pt = new LentService().selectPurchaseTicket(methodNum); 
		
		
		request.setAttribute("pt", pt);
		request.getRequestDispatcher("/views/lent/lentChoice.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
