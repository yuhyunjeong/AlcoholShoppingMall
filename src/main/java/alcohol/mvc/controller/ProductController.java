package alcohol.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import alcohol.mvc.dto.ProductDTO;
import alcohol.mvc.service.ProductService;
import alcohol.mvc.service.ProductServiceImpl;

public class ProductController implements Controller {
	private ProductService proService = new ProductServiceImpl();
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ProductController 나오나?");
		return null;
	}
	
	public ModelAndView productSelectAll(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String type= request.getParameter("type");
		List<ProductDTO> proList = proService.selectAll(type);
		
		request.setAttribute("proList", proList);
		ModelAndView mv = new ModelAndView("store/product.jsp");
		
		return mv;
	}

}
