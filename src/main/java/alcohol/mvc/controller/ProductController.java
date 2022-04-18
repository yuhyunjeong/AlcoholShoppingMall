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

	public void productSelectAll(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		String type = request.getParameter("cate");
		String filter = request.getParameter("filter");
		System.out.println(type);
		System.out.println(filter);
		List<ProductDTO> proList = proService.selectAll(type,filter);
		JSONArray arr = JSONArray.fromObject(proList);
		System.out.println("나오냐"+proList.size());
		PrintWriter out = response.getWriter();
		out.print(arr);

		/*
		 * alcoholtype =0; String type= request.getParameter("type"); List<ProductDTO>
		 * proList = proService.selectAll(type);
		 * 
		 * 
		 * request.setAttribute("proList", proList);
		 * request.setAttribute("alcohotype",alcoholtype); ModelAndView mv = new
		 * ModelAndView("store/product.jsp");
		 * 
		 * 
		 * return mv;
		 */

	}

	public void alcoFilter(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		String type = request.getParameter("cate");
		String alcohol = request.getParameter("alcohol");
		String filter = request.getParameter("filter");
		System.out.println(type);
		
		List<ProductDTO> proList = proService.selectCategory(type,alcohol);
		JSONArray arr = JSONArray.fromObject(proList);
		System.out.println("나오냐"+proList.size());
		PrintWriter out = response.getWriter();
		out.print(arr);

	}
	
	
	//goods.jsp
	//전체검색
		public ModelAndView select(HttpServletRequest request, HttpServletResponse response)
				throws Exception {

			List<ProductDTO> list = proService.selectAll();
			request.setAttribute("list", list);

			for(ProductDTO p : list) {
				System.out.println(p.getCateCode());
			}
			System.out.println(list.size());

			return new ModelAndView("admin/goods.jsp");
		}

}
