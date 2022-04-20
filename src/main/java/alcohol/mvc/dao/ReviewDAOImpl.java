package alcohol.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import alcohol.mvc.dto.ProductDTO;
import alcohol.mvc.dto.ReviewDTO;
import alcohol.mvc.util.DbUtil;

public class ReviewDAOImpl implements ReviewDAO {

	@Override
	public int reviewInsert(ReviewDTO dto) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reviewDelete(int vNumber) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReviewDTO> reviewAll(String pCode, int paging) throws SQLException {
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<ReviewDTO> list = new ArrayList<ReviewDTO>();

		String sql ="SELECT * FROM REVIEW";
		
		ReviewDTO dto = null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
		
			rs = ps.executeQuery();

			while(rs.next()) {
				dto = new ReviewDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6));
				list.add(dto);
			}


		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		return list;
	}

	@Override
	public int reviewUpdate(ReviewDTO dto) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
