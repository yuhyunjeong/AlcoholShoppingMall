package alcohol.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import alcohol.mvc.dto.CartDTO;
import alcohol.mvc.util.DbUtil;

	public class CartDAOImpl implements CartDAO {

		@Override
		public List<CartDTO> selectAll(String id) throws SQLException {
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			List<CartDTO> cartList = new ArrayList<CartDTO>();
			CartDTO cartDTO = null;
			
			String sql = "SELECT * FROM CART WHERE U_ID=?";
			
			try {
				con = DbUtil.getConnection();
				ps = con.prepareStatement(sql);
				ps.setString(1, id);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					cartDTO = new CartDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
					
					cartList.add(cartDTO);
					
				}
				
			} finally {
				DbUtil.dbClose(rs, ps, con);
			}
			
			
			return cartList;
		}

		@Override
		public int cartInsert(CartDTO dto) throws SQLException {
			Connection con = null;
			PreparedStatement ps = null;
		    int result = 0;
			
			String sql = "INSERT INTO CART VALUES(cart_no_seq.nextval,?,?,?)";
			
			try {
				con = DbUtil.getConnection();
				ps = con.prepareStatement(sql);
				
				ps.setString(1, dto.getuId());
				ps.setString(2, dto.getpCode());
				ps.setInt(3, dto.getCartCount());
				
				result = ps.executeUpdate();
				
			} finally {
				DbUtil.dbClose(ps, con);
			}
			
			return result;
		}

		@Override
		public int cartUpdate(CartDTO dto) throws SQLException {
			Connection con = null;
			PreparedStatement ps = null;
			int result = 0;
			
			String sql = "UPDATE CART SET CART_COUNT =? WHERE CART_NUMBER=?";
			
			try {
				con = DbUtil.getConnection();
				ps = con.prepareStatement(sql);
				
				ps.setInt(1, dto.getCartCount());
				ps.setInt(2, dto.getCartNumber());
				
				result = ps.executeUpdate();
				
			} finally {
				DbUtil.dbClose(ps, con);
			}
			
			return result;
		}

		@Override
		public int cartDelete(int cartNo) throws SQLException {
			Connection con = null;
			PreparedStatement ps = null;
			int result = 0;
			String sql = "DELETE FROM CART WHERE CART_NUMBER=?";
			
			try {
				con = DbUtil.getConnection();
				ps = con.prepareStatement(sql);
				ps.setInt(1, cartNo);
				
				result = ps.executeUpdate();
			} finally {
				DbUtil.dbClose(ps, con);
			}
					
			return result;
		}
			
	}



