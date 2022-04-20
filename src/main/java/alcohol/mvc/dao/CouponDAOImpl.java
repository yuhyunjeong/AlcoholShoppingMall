package alcohol.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import alcohol.mvc.dto.CouponDTO;
import alcohol.mvc.util.DbUtil;

public class CouponDAOImpl implements CouponDAO {

	@Override
	public int couponInsert(CouponDTO dto) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int couponDelete(String cNumber) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CouponDTO> couponAll(String id) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<CouponDTO> list = new ArrayList<CouponDTO>();
		CouponDTO dto = null;
		String sql = "select * from coupon where U_ID=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				dto = new CouponDTO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6));
				list.add(dto);
			}

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
				
		return list;

	}

}
