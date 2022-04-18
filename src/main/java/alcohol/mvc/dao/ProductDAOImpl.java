package alcohol.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import alcohol.mvc.dto.CategoryDTO;
import alcohol.mvc.dto.ProductDTO;
import alcohol.mvc.util.DbUtil;
import oracle.jdbc.driver.DBConversion;

public class ProductDAOImpl implements ProductDAO {

	@Override
	public int insert(ProductDTO productDTO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updatePrice(ProductDTO productDTO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateStuck(ProductDTO productDTO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String pCode) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	/**
	 * 상품 전체 검색 SELECT * FROM PRODUCT  뒤에 정렬은 나중에 정하기로함 
	 * 조건검색(검색필드와 검색단어를 전달받아 검색필드에 검색단어를포함한 레코드를 검색하기 )
	 *   SELECT * FROM PRODUCT orderby 인기순(판매량) ?
         SELECT * FROM PRODUCT  최신순?
         SELECT * FROM PRODUCT  디폴트값? 
         이런느낌
         step 14 dbcp dao처럼
	 * 
	 * */
	@Override
	public List<ProductDTO> selectAll(String type,String filter) throws SQLException {
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		
		String o = "";
		if(filter.equals("0")||filter.equals(null)){
			o="p_code";
		}else if(filter.equals("1")){
			o="p_code";
			
		}else {
			o="p_code";
		}
		String sql ="SELECT * FROM PRODUCT WHERE CATE_CODE=? ORDER BY ?";
		ProductDTO product = null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, type);
			rs = ps.executeQuery();
			while(rs.next()) {
				product = new ProductDTO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5),rs.getInt(6),rs.getString(7)
						,rs.getString(8),rs.getString(10),rs.getString(11),rs.getString(9));
				list.add(product);
			}
			
			
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override
	public ProductDTO searchBy(String pCode) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDTO> selectCategory(String type,String alcohol) throws SQLException {
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		String alNo = alcohol;
		int no = Integer.parseInt(alNo);
		int result = (no-10);
		String sql ="SELECT * FROM PRODUCT WHERE P_ALCOHOL < ? AND P_ALCOHOL >=? AND CATE_CODE=?";
		ProductDTO product = null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, alcohol);
			ps.setFloat(2, result);
			ps.setString(3, type);
			rs = ps.executeQuery();
			while(rs.next()) {
				product = new ProductDTO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5),rs.getInt(6),rs.getString(7)
						,rs.getString(8),rs.getString(10),rs.getString(11),rs.getString(9));
				list.add(product);
			}
			
			
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override
	public List<ProductDTO> selectDate(String type, String alcohol) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	public int productNo(String pCode) throws SQLException {
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		int result= 0;
		
		String sql ="select count(order_line_count) from order_line where p_code =?";

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, pCode);
			rs = ps.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
			
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		System.out.println(result);
		return result;
	}

}
