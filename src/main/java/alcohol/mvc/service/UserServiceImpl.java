package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dao.UserDAO;
import alcohol.mvc.dao.UserDAOImpl;
import alcohol.mvc.dto.UserDTO;


public class UserServiceImpl implements UserService {
	private UserDAO dao= new UserDAOImpl();
	@Override
	public UserDTO loginCheck(UserDTO userDto) throws SQLException {
		UserDTO dbDTO = dao.loginCheck(userDto);
		if(dbDTO ==null) {
			throw new SQLException("정보틀림");
		}
		
		return dbDTO;

	}

	@Override
	public void insert(UserDTO userDto) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<UserDTO> usersAll(int paging) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void idCheck(String id) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(UserDTO userDto) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String id) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public String idFind(String jumin, String phone) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String pwdFind(String id, String jumin, String phone) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
