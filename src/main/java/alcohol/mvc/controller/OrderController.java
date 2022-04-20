package alcohol.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import alcohol.mvc.dto.CouponDTO;
import alcohol.mvc.dto.OrdersDTO;
import alcohol.mvc.dto.ProductDTO;
import alcohol.mvc.dto.UserDTO;
import alcohol.mvc.service.CouponService;
import alcohol.mvc.service.CouponServiceImpl;
import alcohol.mvc.service.OrderService;
import alcohol.mvc.service.OrderServiceImpl;
import alcohol.mvc.service.ProductService;
import alcohol.mvc.service.ProductServiceImpl;
import alcohol.mvc.service.UserService;
import alcohol.mvc.service.UserServiceImpl;
import net.sf.json.JSONArray;

public class OrderController implements Controller{
	
	private OrderService orderService = new OrderServiceImpl();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		return null;
	}
	
	//주문하기 (여러개) insert 
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String saveDir = request.getServletContext().getRealPath("/save");
		
		MultipartRequest m = new MultipartRequest(request, saveDir);
		
		String orderCode = m.getParameter("order_code");
		String uId = m.getParameter("u_id");
		String payCode = m.getParameter("pay_code");
		String orderDate = m.getParameter("order_date");
		String orderStatus = m.getParameter("order_status");
		String deliStatus = m.getParameter("deli_status");
		String deliAddr = m.getParameter("deli_addr");
		String deliAddr2 = m.getParameter("deli_addr2");
		String orderphone = m.getParameter("order_phone");
		
		
		
		OrdersDTO orDto = 
				new OrdersDTO(Integer.parseInt(orderCode), uId, Integer.parseInt(payCode), orderDate, orderStatus, deliStatus, deliAddr, deliAddr2, orderphone);
		
		orderService.orderInsert((List<OrdersDTO>) orDto);
		
		return new ModelAndView("front" , true);
	}
	
	//주문수정 update orders
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String orderCode = request.getParameter("ordercode");
		String uId = request.getParameter("uid");
		String payCode = request.getParameter("paycode");
		String orderDate = request.getParameter("orderdate");
		String orderStatus = request.getParameter("orderstatus");
		String deliStatus = request.getParameter("delistatus");
		String deliAddr = request.getParameter("deliaddr");
		String deliAddr2 = request.getParameter("deliaddr2");
		String orderphone = request.getParameter("orderphone");
		
		OrdersDTO orDto = new OrdersDTO(Integer.parseInt(orderCode), uId, Integer.parseInt(payCode), orderDate, orderStatus, deliStatus, deliAddr, deliAddr2, orderphone);
		
		return new ModelAndView("store/order.jsp");
	}
	
	//주문상태출력 select ORDER_STATUS
	public void selectorder(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String pName = request.getParameter("pName");
		
		HttpSession session = request.getSession();
		UserDTO uId = (UserDTO)session.getAttribute("userId");
		
		
		
		//String Name = uId.getUserName();
		//String Addr = uId.getUserAddr();
		//String Addr2 = uId.getUserAddr2();
		//String Phone = uId.getUserPhone();
		//int Point = uId.getUserPoint();		
		

		
		 //DTO dto = proService.searchBy(name); 
		// JSONArray arr = JSONArray.fromObject(dto); //System.out.println(dto.getpName()+"나와라");
		// PrintWriter out = response.getWriter(); out.print(arr);
		 
		
		//return new ModelAndView("store/order.jsp");
	}
	
	//배송상태수정 update orders
	public ModelAndView updateorder(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String deliStatus = request.getParameter("delistatus");
		
		//OrdersDTO orDto = new OrdersDTO(deliStatus);
		
		return new ModelAndView("store/order.jsp");
	}
	
	//배송상태출력 SELECT DELI_STATUS FROM ORDERS WHERE ORDER_CODE=?
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String deliStatus = request.getParameter("delistatus");
		
		request.setAttribute("deliStatus", deliStatus);
		
		return new ModelAndView("store/order.jsp");
	}

	
	/**
	 * 주문결재창 출력
	 * */
	public void orderSelect(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		String pName = request.getParameter("pName");//사진이랑 
		System.out.println(pName+" 이름출력");
		String uId = request.getParameter("id");//쿠폰이랑 적립금 때문에 불러옴
		int count =Integer.parseInt(request.getParameter("count"));
		
		
		UserService userService = new UserServiceImpl();
		
		UserDTO uDTO = userService.selectByUserId(uId);
		
		CouponService couService = new CouponServiceImpl();
		List<CouponDTO> couList=couService.couponAll(pName);
		
		ProductService pservice = new ProductServiceImpl();
		ProductDTO dto =pservice.searchBy(pName);
		int toPrice = (dto.getpPrice()*count);
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("uDTO", uDTO);//적립금
		map.put("couList", couList); //쿠폰내역
		map.put("pDTO", dto);//사진 가격 등등
		map.put("toPrice",toPrice);//토탈가격
		

		JSONArray arr = JSONArray.fromObject(map); //System.out.println(dto.getpName()+"나와라");
		PrintWriter out = response.getWriter();
		out.print(arr);
		 

	}
	
}
