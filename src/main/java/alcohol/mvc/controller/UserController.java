package alcohol.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import alcohol.mvc.dto.UserDTO;
import alcohol.mvc.service.UserService;
import alcohol.mvc.service.UserServiceImpl;


public class UserController implements Controller {
	private UserService userService = new UserServiceImpl();
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("UserController 제대로 오나?");
		return null;
	}
	
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("UserController login도 제대로 오나?");
		//넘어오는 userID,pwd 받기
		String userId= request.getParameter("id");
		String pwd = request.getParameter("pwd");
		//서비스 호출
		UserDTO dbDTO=userService.loginCheck(new UserDTO(userId,pwd));
		//그결과를 받아서 성공했으면 
		
		//sessionScope에 loginUser loginName 저장
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", dbDTO); // ${loginUser.userId}
		session.setAttribute("loginName", dbDTO.getUserName());
		
		
		//index.jsp -> redirect 
		ModelAndView mv = new ModelAndView("index.jsp",true);
		
		return mv;		

	}
	

}
