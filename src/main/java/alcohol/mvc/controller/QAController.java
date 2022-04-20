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

public class QAController implements Controller {

	private QAService qaService = new QAServiceImpl();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		return null;
	}

	/**
	 * 전체검색하기
	 */
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ddddD");
		String paging = request.getParameter("paging"); // 현재 페이지 번호
		if (paging == null || paging.equals("")) {
			paging = "1";
		}

		List<QADTO> qaList = qaService.qaAll(Integer.parseInt(paging));
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		request.setAttribute("qaList", qaList);
		request.setAttribute("paging", paging); // 뷰에서 사용 ${requestScope.paging}

		System.out.println(qaList.size()+"페이징처리 값 나옴?");

		return new ModelAndView("board/qa.jsp");
		
		//map.put("qaList", qaList);
		//map.put("paging", paging);
		/*
		JSONArray arr = JSONArray.fromObject(map);
		System.out.println("나옴?" + qaList.size());
		PrintWriter out = response.getWriter();
		out.print(arr);*/
	}

	/**
	 * 글 상세보기
	 */
	public ModelAndView selectByQANum(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int qaNumber = Integer.parseInt(request.getParameter("qaNumber"));
		QADTO qa = qaService.qaSelect(qaNumber);
		request.setAttribute("qa", qa);

		System.out.println("상세보기 나오냐아아아아아아ㅏ아ㅓㄱ악" + qaNumber );
		
		return new ModelAndView("board/qaRead.jsp");
	}

	/**
	 * 등록하기
	 */
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 전송된 데이터 받기
//		int qaNumber = Integer.parseInt(request.getParameter("qaNumber"));
		String userId = request.getParameter("userId");
		String qaTitle = request.getParameter("qaTitle");
		String qaContent = request.getParameter("qaContent");

		System.out.println("QA등록하기 잘 나오니잉");
		
		QADTO qa = new QADTO(userId, qaTitle, qaContent);
		
		qaService.qaInsert(qa);
		
		request.setAttribute("", qaContent);
		
		ModelAndView mv = this.select(request, response);

		return mv;
	}

	/**
	 * 수정하기
	 */
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return null;
	}

	/**
	 * 삭제하기
	 */
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return null;
	}
	
	
	public void selectFilter(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		
		int categoryNum = Integer.parseInt(request.getParameter("cate"));
		
		List<QADTO> qaList = qaService.qaSelectAll(categoryNum);
		JSONArray arr = JSONArray.fromObject(qaList);
		System.out.println("나옴?" + qaList.size());
		PrintWriter out = response.getWriter();
		out.print(arr);
		
	}

}
