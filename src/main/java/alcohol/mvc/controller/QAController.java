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

		return null;
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
