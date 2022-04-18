package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dao.ProductDAO;
import alcohol.mvc.dao.ProductDAOImpl;
import alcohol.mvc.dto.CategoryDTO;
import alcohol.mvc.dto.ProductDTO;

public class ProductServiceImpl implements ProductService {
	private ProductDAO dao = new ProductDAOImpl(); 
	@Override
	public void insert(ProductDTO productDTO) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updatePrice(ProductDTO productDTO) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateStuck(ProductDTO productDTO) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String pCode) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ProductDTO> selectAll(String type,String filter) throws SQLException {
		List<ProductDTO> list =dao.selectAll(type,filter);
		return list;
	}

	@Override
	public ProductDTO searchBy(String name) throws SQLException {
		ProductDTO dto = dao.searchBy(name);
		return dto;
	}

	@Override
	public List<ProductDTO> selectCategory(String type, String alcohol,String filter) throws SQLException {
		List<ProductDTO> list = dao.selectCategory(type, alcohol,filter);
		return list;
	}

	@Override
	public List<ProductDTO> selectDate(String type, String alcohol) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	//goods.jsp
	@Override
	public List<ProductDTO> selectGoods() throws SQLException {
		
		List<ProductDTO> list = dao.selectGoods();
		
		return list;
	}
	
	

}
