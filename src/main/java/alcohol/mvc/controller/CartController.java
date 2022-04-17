package alcohol.mvc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.log.UserDataHelper.Mode;

import com.oreilly.servlet.MultipartRequest;

import alcohol.mvc.dto.CartDTO;
import alcohol.mvc.service.CartService;
import alcohol.mvc.service.CartServiceImpl;

public class CartController implements Controller {
	
	private CartService cartService = new CartServiceImpl();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
		return null;
	}
	
    //select * from cart
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<CartDTO> cartList = cartService.selectAll();
		
		request.setAttribute("list", cartList);
		
		return new ModelAndView("store/cart.jsp");
	}
	
	
	//insert
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String saveDir = request.getServletContext().getRealPath("/save");
		
		MultipartRequest m = new MultipartRequest(request, saveDir);
		
		String cartNo = m.getParameter("cart_number");
		String uId = m.getParameter("u_id");
		String pCode = m.getParameter("p_code");
		String cartCount = m.getParameter("cart_count");
	
		CartDTO cart = new CartDTO(Integer.parseInt(cartNo), uId, pCode, Integer.parseInt(cartCount));
		
		cartService.cartInsert(cart);
		
		return new ModelAndView("front", true);
	}
	
	//update
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String cartNo = request.getParameter("cartNo");
		String uId = request.getParameter("uId");
		String pCode = request.getParameter("pcode");
		String cartCount = request.getParameter("cartcount");
		
		CartDTO cart = new CartDTO(Integer.parseInt(cartNo), uId, pCode, Integer.parseInt(cartCount));
		
		return new ModelAndView("store/cart.jsp");
	}
	
	//delete 
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String cartNo = request.getServletContext().getRealPath("/save");
		
		cartService.cartDelete(Integer.parseInt(cartNo));
		
		return new ModelAndView("front" , true);
	}
	
	
		
}
