package alcohol.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.log.UserDataHelper.Mode;

import com.oreilly.servlet.MultipartRequest;

import alcohol.mvc.dto.CartDTO;
import alcohol.mvc.dto.ProductDTO;
import alcohol.mvc.service.CartService;
import alcohol.mvc.service.CartServiceImpl;
import alcohol.mvc.service.ProductService;
import alcohol.mvc.service.ProductServiceImpl;
import net.sf.json.JSONArray;

public class CartController implements Controller {
	
	private CartService cartService = new CartServiceImpl();
	private ProductService proService = new ProductServiceImpl();
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
		return null;
	}
	
    //select * from cart
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("userId");
		System.out.println(id+"나와줘");
		
		List<CartDTO> cartList = cartService.selectAll(id);
		System.out.println(cartList.size()+"cartlist");
		
		List<ProductDTO> proList =proService.cartSelect(cartList);
		
		System.out.println(proList.size()+"proList");

		
		 request.setAttribute("cartList", cartList); 
		 request.setAttribute("proList",proList); 
		 return new ModelAndView("store/cart.jsp");


	}
	
	
	//insert
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		/*
		  String saveDir = request.getServletContext().getRealPath("/save");
		  
		  MultipartRequest m = new MultipartRequest(request, saveDir);
		  
		  String cartNo = m.getParameter("cart_number"); 
		  String uId = m.getParameter("u_id"); 
		  String pCode = m.getParameter("p_code"); 
		  String cartCount = m.getParameter("cart_count");
		  
	  
		  CartDTO cart = new CartDTO(Integer.parseInt(cartNo), uId, pCode,
		  Integer.parseInt(cartCount));
		  
		  cartService.cartInsert(cart);
		  
		  return new ModelAndView("front", true);
*/

			 int count = Integer.parseInt( request.getParameter("count")); 
			 String pCode = request.getParameter("pCode");
			 //String totalPrice = request.getParameter("totalPrice"); 
			 String id = request.getParameter("id");
			 System.out.println(count+"이번엔 진짜 나와야한다");
			 System.out.println(pCode+"이번엔 진짜 나와야한다");	
			 System.out.println(id+"이번엔 진짜 나와야한다");

			 CartDTO dto = new CartDTO(0, id, pCode, count);
			 cartService.cartInsert(dto);
			 
			 ModelAndView mv = new ModelAndView("store/cart.jsp",true);
			 return mv;
	}
	
	//update
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String cartNo = request.getParameter("cartNo");
		String uId = request.getParameter("uId");
		String pCode = request.getParameter("pcode");
		String cartCount = request.getParameter("cartcount");
		
		CartDTO cart = new CartDTO(Integer.parseInt(cartNo), uId, pCode, Integer.parseInt(cartCount));
		
		return new ModelAndView("store/cart.jsp",true);
	}
	
	//delete 
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int cartNo = Integer.parseInt(request.getParameter("cartNo"));/*getServletContext().getRealPath("/save")*/;
		
		cartService.cartDelete(cartNo);
		
		return new ModelAndView("store/cart.jsp", true);
	}
	
	
		
}
