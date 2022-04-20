package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dao.CartDAO;
import alcohol.mvc.dao.CartDAOImpl;
import alcohol.mvc.dto.CartDTO;

public class CartServiceImpl implements CartService {
	
	private CartDAO cartdao = new CartDAOImpl();
	
	@Override
	public void cartInsert(CartDTO dto) throws SQLException {
		int result = cartdao.cartInsert(dto);
		if(result ==0) throw new SQLException("등록되지 않았습니다.");
	
	}

	@Override
	public void cartUpdate(CartDTO dto) throws SQLException {
		int result = cartdao.cartUpdate(dto);
		if(result ==0) throw new SQLException("수정되지 않았습니다");
		
	}

	@Override
	public void cartDelete(int cartNo) throws SQLException {
		int result = cartdao.cartDelete(cartNo);
		
		if(cartdao.cartDelete(cartNo) ==0) {
			throw new SQLException(cartNo + "게시물을 삭제할 수 없습니다.");
		}
		
	}

	@Override
	public List<CartDTO> selectAll(String id) throws SQLException {
		
		List<CartDTO> list = cartdao.selectAll(id);
		
		return list;
	}
 

}
