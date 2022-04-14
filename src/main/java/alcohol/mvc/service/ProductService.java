package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.CategoryDTO;
import alcohol.mvc.dto.ProductDTO;

public interface ProductService {
	/**
	 * 상품 등록
	 * */
	public void insert(ProductDTO productDTO)throws SQLException;
	
	
	/**
	 * 상품 수정 
	 * */
	public void updatePrice(ProductDTO productDTO)throws SQLException;
	
	/**
	 * 재고량 수정 
	 * */
	public void updateStuck(ProductDTO productDTO)throws SQLException;
	
	/**
	 * 상품 제거 
	 * */
	public void delete(String pCode)throws SQLException;
	
	/**
	 * 상품 전체 검색 SELECT * FROM PRODUCT  뒤에 정렬은 나중에 정하기로함 
	 * 조건검색(검색필드와 검색단어를 전달받아 검색필드에 검색단어를포함한 레코드를 검색하기 )
	 *   SELECT * FROM PRODUCT orderby 인기순(판매량) ?
         SELECT * FROM PRODUCT  최신순?
         SELECT * FROM PRODUCT  디폴트값? 
         이런느낌   
	 * 
	 * */
	public  List<ProductDTO> selectAll()throws SQLException;
	

	
	/**
	 * 상품 상세 검색
	 * */
	public ProductDTO searchBy(String pCode)throws SQLException;
	
	/**
	 * 카테고리 검색
	 * */
	public List<CategoryDTO> selectCategory()throws SQLException;
}
