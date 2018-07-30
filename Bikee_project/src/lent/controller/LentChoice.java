package lent.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LentChoice
 */
@WebServlet("/lent/lentChoice")
public class LentChoice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LentChoice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int methodNum = Integer.parseInt(request.getParameter("methodNum"));		
		String bikeId = request.getParameter("bikeId");
		String buyDate =  request.getParameter("buyDate");
		String returnDate = request.getParameter("returnDate");
		String shopId = request.getParameter("shopId");
		String date = request.getParameter("date");
		
		request.setAttribute("methodNum", methodNum);
		request.setAttribute("bikeId", bikeId);
		request.setAttribute("buyDate", buyDate);
		request.setAttribute("returnDate", returnDate);
		request.setAttribute("shopId", shopId);
		
		request.getRequestDispatcher("/views/lent/lentConfirm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
