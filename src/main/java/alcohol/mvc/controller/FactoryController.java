package alcohol.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import alcohol.mvc.dto.FactoryDTO;
import alcohol.mvc.service.FactoryService;
import alcohol.mvc.service.FactoryServiceImpl;



public class FactoryController implements Controller {
	private FactoryService facService = new FactoryServiceImpl();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("FactoryController 확인용");
				return null;
	}

	public ModelAndView select(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("FactoryController select 확인용");
		//서비스 호출
				List<FactoryDTO> facList = facService.factoryAll();
				request.setAttribute("facList", facList);
				
				return new ModelAndView("store/factory.jsp");
	}
	
	public ModelAndView selectByName(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("FactoryController selectByName 확인용");
		String fName = request.getParameter("fName");
		FactoryDTO factory =  facService.factorySelect(fName);
		request.setAttribute("fac", factory);
		
		return new ModelAndView("store/factory.jsp");
	}

}
