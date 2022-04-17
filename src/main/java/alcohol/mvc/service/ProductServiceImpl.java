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
	public List<ProductDTO> selectAll() throws SQLException {
		List<ProductDTO> list =dao.selectAll();
		return list;
	}

	@Override
	public ProductDTO searchBy(String pCode) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CategoryDTO> selectCategory() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
