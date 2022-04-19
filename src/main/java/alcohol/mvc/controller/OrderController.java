package alcohol.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import alcohol.mvc.dto.OrdersDTO;
import alcohol.mvc.service.OrderService;
import alcohol.mvc.service.OrderServiceImpl;

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
	public ModelAndView selectorder(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String orderStatus = request.getParameter("orderstatus");
		
		request.setAttribute("orderStatus", orderStatus);
		
		return new ModelAndView("store/order.jsp");
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
	
	

}
