package lent.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSplitPaneUI;

import bike.model.service.BikeService;
import bike.model.vo.Bike;
import bike.model.vo.BikePrice;
import shop.model.service.ShopService;
import shop.model.vo.Shop;

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
		
		Bike bike = new BikeService().selectBike(bikeId);
		
		String bikeType = bike.getBikeType(); 
		BikePrice bp = new BikeService().selectBikePrice(bikeType);
		System.out.println(bikeType);
		System.out.println(bp);
		
		Shop shop = new ShopService().selectShop(shopId);
		
		request.setAttribute("methodNum", methodNum);
		request.setAttribute("bike", bike);
		request.setAttribute("buyDate", buyDate);
		request.setAttribute("returnDate", returnDate);
		request.setAttribute("shop", shop);
		request.setAttribute("bp", bp);
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
