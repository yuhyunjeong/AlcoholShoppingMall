package alcohol.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import alcohol.mvc.dto.QADTO;
import alcohol.mvc.service.QAService;
import alcohol.mvc.service.QAServiceImpl;
import net.sf.json.JSONArray;

public class QAAjaxController implements Controller {
	private QAService qaService = new QAServiceImpl();
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	public void selectaaa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ddddD");
		String paging = request.getParameter("paging"); // 현재 페이지 번호
		if (paging == null || paging.equals("")) {
			paging = "1";
		}

		List<QADTO> qaList = qaService.qaAll(Integer.parseInt(paging));
		Map<String, Object> map = new HashMap<String, Object>();
		

		System.out.println(qaList.size()+"페이징처리 값 나옴?");


		
		map.put("qaList", qaList);
		map.put("paging", paging);
		
		JSONArray arr = JSONArray.fromObject(map);
		System.out.println("나옴?" + qaList.size());
		PrintWriter out = response.getWriter();
		out.print(arr);
	}

}
