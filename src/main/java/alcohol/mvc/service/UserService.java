package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.UserDTO;

public interface UserService {
	/**
	 * 로그인 체크
	 * */
	public UserDTO loginCheck(UserDTO userDto)throws SQLException;
	
	/**
	 * 회원가입(등록)
	 * */
	public void insert(UserDTO userDto)throws SQLException;
	
	/**
	 * 회원정보검색
	 * */
	public List<UserDTO> usersAll(int paging)throws SQLException;
	
	
	/**
	 * 아이디 중복여부 체크
	 * */
	public void idCheck(String id)throws SQLException;
	
	/**
	 * 개인정보수정
	 * */
	public void update(UserDTO userDto)throws SQLException;
	
	
	/**
	 * 회원 탈퇴
	 * */
	public void delete(String id)throws SQLException;
	
	
	/**
	 * 아이디 찾기 
	 * */
	public String idFind(String jumin, String phone)throws SQLException;
	
	/**
	 * 비밀번호 찾기 
	 * */
	public String pwdFind(String id ,String jumin, String phone)throws SQLException;
}
