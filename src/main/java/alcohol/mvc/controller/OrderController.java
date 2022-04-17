package alcohol.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		
		
		return null;
	}
	
	//주문수정 update orders
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	//주문상태출력 select ORDER_STATUS
	public ModelAndView selectorder(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	//배송상태수정 update orders
	public ModelAndView updateorder(HttpServletRequest request, HttpServletResponse response) throws Exception{
		// TODO Auto-generated method stub
		return null;
	}
	
	//배송상태출력 select DELI_STATUS
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
