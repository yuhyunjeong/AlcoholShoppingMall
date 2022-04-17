package alcohol.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import alcohol.mvc.dto.ProductDTO;
import alcohol.mvc.service.ProductService;
import alcohol.mvc.service.ProductServiceImpl;
import net.sf.json.JSONArray;

public class ProductController implements Controller {
	private ProductService proService = new ProductServiceImpl();
	private int alcoholtype = 0;
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ProductController 나오나?");
		return null;
	}

	public ModelAndView productSelectAll(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/*
		 * String type= request.getParameter("type"); List<ProductDTO> proList =
		 * proService.selectAll(type); JSONArray arr = JSONArray.fromObject(proList);
		 * 
		 * 
		 * 
		 * PrintWriter out = response.getWriter(); out.print(arr);
		 */
		 alcoholtype =0;
		 String type= request.getParameter("type");
		 List<ProductDTO> proList = proService.selectAll(type);
		 
		  
		 request.setAttribute("proList", proList);
		 request.setAttribute("alcohotype", alcoholtype);
		 ModelAndView mv = new ModelAndView("store/product.jsp");
		  
		 
		 return mv;
		

	}
	
	
	public ModelAndView alcoFilter(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 String type = request.getParameter("type");
		 String alcohol= request.getParameter("alcohol");
		 alcoholtype=1;
		 List<ProductDTO> proList = proService.selectCategory(type,alcohol);
		 
		  
		 request.setAttribute("proList", proList); 
		 request.setAttribute("alcohotype", alcoholtype);
		 ModelAndView mv = new ModelAndView("store/product.jsp");
		  
		 
		 return mv;
		

	}

}
