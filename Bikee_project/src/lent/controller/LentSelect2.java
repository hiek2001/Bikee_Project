package lent.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bike.model.vo.BikePrice;
import lent.model.service.LentService;
import lent.model.vo.LentBike;

/**
 * Servlet implementation class LentSelect2
 */
@WebServlet("/lent/lentSelect2")
public class LentSelect2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LentSelect2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		//일일권 구매(2번) 페이지		
				
		//데이터 받아오기
		String merchantUid = (String)request.getParameter("merchantUid");
		int methodNum = Integer.parseInt(request.getParameter("methodNum"));
		String bikeId = (String) request.getParameter("bikeId");		
		String buyerId = (String)request.getParameter("buyerId");
		String shopId = (String) request.getParameter("shopId");
		//String lentPrice = (String)request.getParameter("lentPrice");		
		String buyDate = request.getParameter("buyDate");
		String returnDate = request.getParameter("returnDate");

		
		//고유 ID를 받아서 sql join 이용 하여 자전거 가격을 찾아옴 b = bikeId의 가격
		BikePrice b = new LentService().selectBikePrice(bikeId);
		System.out.println(b.getPrice());
				
		/*//jdbc 작업 : 결제완료되면  할 부분, 시험용으로 DB삽입되는지 넣어봄
		LentBike lb = new LentBike(merchantUid,methodNum,bikeId,buyDate,returnDate,buyerId,shopId,lentPrice);
		System.out.println(lb);*/
		
		
		
		
		
		//DB입력  -->결제완료되면  할 부분, 시험용으로 DB삽입되는지 넣어봄
		/*int result = new LentService().insertLent(lb);*/
		
		
/*		//값 잘 들어왔낭? 사용자가 선택한 지점이 DB에 있는 지점과 같으면 지점명을 콘솔에 출력해보자
		if(s!=null)
		{
			if(s.getShop_id().equals(shopId)) {
				System.out.println(s.getShop_name());
			}
		}*/
		
		
		//반납/대여시간으로 넘어온 value(String값)
		String date2 = request.getParameter("buyDate");
		String date1 = request.getParameter("returnDate");
		 
		    try{ // String Type을 Date Type으로 캐스팅하면서 생기는 예외로 인해 여기서 예외처리 해주지 않으면 컴파일러에서 에러가 발생해서 컴파일을 할 수 없다.
		        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		        // date1, date2 두 날짜를 parse()를 통해 Date형으로 변환.
		        Date FirstDate = format.parse(date1);
		        Date SecondDate = format.parse(date2);
		        
		        // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
		        // 연산결과 -950400000. long type 으로 return 된다.
		        long calDate = FirstDate.getTime() - SecondDate.getTime(); 
		        
		        // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다. 
		        // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
		        long calDateDays = calDate / ( 24*60*60*1000); 
		 
		        calDateDays = Math.abs(calDateDays);
		        
		        System.out.println("대여일: "+calDateDays);
		        
		        System.out.println((int)(calDateDays*b.getPrice()));
		        
		        //서블릿에서 계산 후 최종 결제값이 옮겨짐
		        int lentPrice = (int)(calDateDays*b.getPrice());
		        
		        request.setAttribute("lentPrice", lentPrice);
		    	}
		        catch(ParseException e)
		        {
		            // 예외 처리
		        }


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
