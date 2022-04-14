package alcohol.mvc.dao;

import java.sql.SQLException;

import alcohol.mvc.dto.UserDTO;

public interface UserDAO {

	/**
	 * 로그인 체크 select u_id , u_pwd, u_name from users where u_id=? and u_pwd=?
	 * */
	public UserDTO loginCheck(UserDTO userDto)throws SQLException;
	
	/**
	 * 회원가입(등록) INSERT INTO USERS (U_ID, U_PWD,U_NAME,U_JUMIN,U_PHONE,U_EMAIL,U_ADDR
	 * U_ADDR2,U_GRADE,U_POINT,JOIN_DATE) VALUES(?,?,?,?,?,?,?,?,0,0,SYSDATE)
	 * */
	public int insert(UserDTO userDto)throws SQLException;
	
	/**
	 * 아이디 중복여부 체크 SELECT U_ID FROM USERS WHERE U_ID=?
	 * */
	public boolean idCheck(String id)throws SQLException;
	
	/**
	 * 개인정보수정 UPDATE USERS SET U_PWD =? , U_PHONE =? ,U_ADDR=?,U_ADDR2=? WHERE U_ID=?
	 * */
	public int update(UserDTO userDto)throws SQLException;
	
	
	/**
	 * 회원 탈퇴 DELETE FROM USERS WHERE U_ID=?\
	 * */
	public int delete(String id)throws SQLException;
}
