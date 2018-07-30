package lent.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lent.model.service.LentService;
import lent.model.vo.LentBike;

/**
 * Servlet implementation class LentConfirm
 */
@WebServlet("/lent/lentConfirm")
public class LentConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LentConfirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//은별추가
		String merchantUid = request.getParameter("merchantUid");
		int methodNum = Integer.parseInt(request.getParameter("methodNum"));
		String bikeId = request.getParameter("bikeId");		
		String buyDate = request.getParameter("buyDate");
		String returnDate = request.getParameter("returnDate");
		String buyerId = request.getParameter("buyerId");
		String shopId = request.getParameter("shopId");
		int lentPrice = Integer.parseInt(request.getParameter("lentPrice"));
		
		LentBike lb = new LentBike(merchantUid,methodNum,bikeId,buyDate,returnDate,buyerId,shopId,lentPrice);
		
		// DB저장
		new LentService().insertLent(lb);
		
		LentBike selectLb = new LentService().selectLentBike(merchantUid);
		
		System.out.println("confirm.jsp selectLb = " + selectLb);
		
		request.setAttribute("selectLb", selectLb);
		request.getRequestDispatcher("/views/lent/lentConfirmEnd.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
