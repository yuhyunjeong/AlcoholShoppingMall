package alcohol.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import alcohol.mvc.dto.OrdersDTO;
import alcohol.mvc.dto.ProductDTO;
import alcohol.mvc.util.DbUtil;

public class OrderDAOImpl implements OrderDAO{

	@Override
	public int orderInsert(List<OrdersDTO> list) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		String sql = "INSERT INTO ORDERS(ORDER_CODE,U_ID,PAY_CODE) VALUES(orders_no_seq.nextval,?,?,SYSDATE,?,?,?,?,?)";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, sql);
			ps.setString(2, sql);
			ps.setString(3, sql);
			ps.setString(4, sql);
			ps.setString(5, sql);
			ps.setString(6, sql);
			ps.setString(7, sql);
			
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(ps, con);
		}
		
		return result;
	}

	@Override
	public int orderUpdate(OrdersDTO ordersDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		String sql = "UPDATE ORDERS SET ORDER_STATUS=? WHERE ORDER_CODE=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, ordersDTO.getOrderStatus());
			ps.setInt(2, ordersDTO.getOrderCode());
			
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(ps, con);
		}
				
		return result;
	}

	@Override
	public String orderStatus(int oCode) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String status = null;
		
		String sql = "SELECT ORDER_STATUS FROM ORDERS WHERE ORDER_CODE=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, oCode);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				status = rs.getString(1);
			}

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
				
		return status;
	}

	@Override
	public int deliUpdate(OrdersDTO ordersDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		String sql = "UPDATE ORDERS SET DELI_STATUS=? WHERE ORDER_CODE=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, ordersDTO.getDeliStatus());
			ps.setInt(2, ordersDTO.getOrderCode());
			
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(ps, con);
		}
			
		return result;
	}

	@Override
	public String deliStatus(int oCode) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String status = null;
		
		String sql = "SELECT DELI_STATUS FROM ORDERS WHERE ORDER_CODE=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, oCode);
			
            rs = ps.executeQuery();
			
			if(rs.next()) {
				status = rs.getString(1);
			}
				
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		
		return status;
	}

	@Override
	public List<OrdersDTO> orderAll() throws SQLException {
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<OrdersDTO> list = new ArrayList<OrdersDTO>();

		String sql ="SELECT * FROM PRODUCT"; //
		
		OrdersDTO orders = null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
		
			rs = ps.executeQuery();

			while(rs.next()) {
				orders = new OrdersDTO(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)
						,rs.getString(8),rs.getString(9));
				list.add(orders);
			}


		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		System.out.println(list.get(0).getOrderStatus());
		return list;
	}

}
