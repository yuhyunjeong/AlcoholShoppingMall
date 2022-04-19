package alcohol.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import alcohol.mvc.dto.OrderLineDTO;
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
		String filter = request.getParameter("filter") + "";

		System.out.println(type);
		System.out.println(filter);
		List<ProductDTO> proList = proService.selectAll(type, filter);
		JSONArray arr = JSONArray.fromObject(proList);
		System.out.println("나오냐" + proList.size());
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
		String filter = request.getParameter("filter") + "";
		System.out.println(type);

		List<ProductDTO> proList = proService.selectCategory(type, alcohol, filter);
		JSONArray arr = JSONArray.fromObject(proList);
		System.out.println("나오냐" + proList.size());
		PrintWriter out = response.getWriter();
		out.print(arr);

	}

	/**
	 * 상세검색
	 */
	public void searchBy(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("name");
		System.out.println(name);

		ProductDTO dto = proService.searchBy(name);
		JSONArray arr = JSONArray.fromObject(dto);
		// System.out.println(dto.getpName()+"나와라");
		PrintWriter out = response.getWriter();
		out.print(arr);

	}

	// goods.jsp
	// 전체검색
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ProductController select 나오나?");
		List<ProductDTO> list = proService.selectGoods();
		request.setAttribute("list", list);

		System.out.println(list.size());
		ModelAndView mv = new ModelAndView("admin/goods.jsp");

		return mv;
	}

	public void cateSelect(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html;charset=UTF-8");

		List<OrderLineDTO> list = proService.cateSelect();

		System.out.println(list.size()+"cateSelect");
		List<ProductDTO> proList = proService.selectByCode(list);
		System.out.println(proList.get(0).getCateCode());
		
		JSONArray arr = JSONArray.fromObject(proList);

		// System.out.println(dto.getpName()+"나와라");
		PrintWriter out = response.getWriter();
		out.print(arr);

	}

	// insert into product values
	public ModelAndView insertwrite(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ProductController select 나오나?");
		
		 String pCode = request.getParameter("pCode");
		 String cateCode = request.getParameter("cateCode"); 
		 String pName = request.getParameter("pName"); 
		 String pAlcohol = request.getParameter("pAlcohol"); 
		 String pPrice = request.getParameter("pPrice"); 
		 String pStuck = request.getParameter("pStuck"); 
		 String pDate = request.getParameter("pDate");
		 String pDetail = request.getParameter("pDetail");
		 
		 
		 ProductDTO dto = new ProductDTO(); proService.insert(dto);
		 proService.insertwrite(dto);

		ModelAndView mv = new ModelAndView("admin/goods.jsp", true);

		return mv;
	}

}
