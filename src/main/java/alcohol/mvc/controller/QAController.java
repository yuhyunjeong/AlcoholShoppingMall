package alcohol.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import alcohol.mvc.dto.QADTO;
import alcohol.mvc.service.QAService;
import alcohol.mvc.service.QAServiceImpl;

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

		String paging = request.getParameter("paging"); // 현재 페이지 번호 
		if(paging==null || paging.equals("")) {
			paging = "1";
		}
		
		List<QADTO> qaList = qaService.qaAll(Integer.parseInt(paging));
		
		request.setAttribute("qaList", qaList);
		request.setAttribute("paging", paging); // 뷰에서 사용 ${request.paging}

		System.out.println(qaList.size());

		return new ModelAndView("board/qa.jsp");
		
	}

	/**
	 * 글 상세보기
	 */
	public ModelAndView selectByQANum(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return null;
	}

	/**
	 * 등록하기
	 */
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 전송된 데이터 받기
		int qaNumber = Integer.parseInt(request.getParameter("qaNumber"));
		String userName = request.getParameter("userName");
		String qaTitle = request.getParameter("qaTitle");
		String qaDate = request.getParameter("qaDate");

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

}
