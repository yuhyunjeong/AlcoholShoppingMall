package alcohol.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.UserDTO;
import alcohol.mvc.util.DbUtil;


public class UserDAOImpl implements UserDAO {

	@Override
	public UserDTO loginCheck(UserDTO userDto) throws SQLException {
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		
		String sql ="select u_id , u_pwd, u_name from users where u_id=? and u_pwd=?";
		UserDTO dbDTO = null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, userDto.getUserId());
			ps.setString(2, userDto.getUserPwd());
			
			rs = ps.executeQuery();
			if(rs.next()) {
				dbDTO = new UserDTO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getInt(10),rs.getString(11));
			}
			
			
		} catch (Exception e) {
			DbUtil.dbClose(rs, ps, con);
		}
		return dbDTO;
	}

	@Override
	public int insert(UserDTO userDto) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<UserDTO> usersAll(int paging) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean idCheck(String id) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int update(UserDTO userDto) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
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
