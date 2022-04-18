package alcohol.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import alcohol.mvc.dto.ProductDTO;
import alcohol.mvc.service.ProductService;
import alcohol.mvc.service.ProductServiceImpl;

public class GoodsController implements Controller {

	private ProductService proService = new ProductServiceImpl();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		return null;
	}

	//전체검색
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String type = request.getParameter("cate");
		
		List<ProductDTO> list = proService.selectAll(type);
		request.setAttribute("list", list);

		for(ProductDTO p : list) {
			System.out.println(p.getCateCode());
		}
		System.out.println(list.size());

		return new ModelAndView("admin/goods.jsp");
	}

	//등록하기
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		return null;
	}

	//삭제하기 
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		return null;
	}

}
