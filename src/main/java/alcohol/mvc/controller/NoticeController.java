package alcohol.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import alcohol.mvc.dto.NoticeDTO;
import alcohol.mvc.service.NoticeService;
import alcohol.mvc.service.NoticeServiceImpl;


public class NoticeController implements Controller {
	
	private NoticeService noService = new NoticeServiceImpl();
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			return null;
	}
	
	/**
	 * 전체검색하기
	 * */
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<NoticeDTO> noticeList = noService.noticeAll();
		request.setAttribute("list", noticeList);
		
		return new ModelAndView("board/notice.jsp");
	}
	
	/**
	 * 등록하기
	 * */
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<NoticeDTO> noticeList = noService.noticeAll();
		request.setAttribute("list", noticeList);
		
		return new ModelAndView("notice.jsp");
	}

}
