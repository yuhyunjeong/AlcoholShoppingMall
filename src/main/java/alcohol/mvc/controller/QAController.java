package alcohol.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
	public void select(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String paging = request.getParameter("paging"); // 현재 페이지 번호
		if (paging == null || paging.equals("")) {
			paging = "1";
		}

		List<QADTO> qaList = qaService.qaAll(Integer.parseInt(paging));

		//request.setAttribute("qaList", qaList);
		//request.setAttribute("paging", paging); // 뷰에서 사용 ${requestScope.paging}

		System.out.println(qaList.size());

		//return new ModelAndView("board/qa.jsp");

		
		JSONArray arr = JSONArray.fromObject(qaList);
		System.out.println("나옴?" + qaList.size());
		PrintWriter out = response.getWriter();
		out.print(arr);
	}

	/**
	 * 글 상세보기
	 */
	public ModelAndView selectByQANum(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int qaNumber = Integer.parseInt(request.getParameter("qaNubmer"));
		QADTO qa = qaService.qaSelect(qaNumber);
		request.setAttribute("qa", qa);

		return new ModelAndView("board/qaRead.jsp");
	}

	/**
	 * 등록하기
	 */
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 전송된 데이터 받기
//		int qaNumber = Integer.parseInt(request.getParameter("qaNumber"));
		String userName = request.getParameter("userName");
		String qaTitle = request.getParameter("qaTitle");
		String qaCategory = request.getParameter("qaCategory");
		String qaContent = request.getParameter("qaContent");
		String qaDate = request.getParameter("qaDate");
		int qaSecret = Integer.parseInt(request.getParameter("secret"));

		System.out.println(qaCategory);
		
		QADTO qa = new QADTO();

		return null;
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
