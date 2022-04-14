package alcohol.mvc.dao;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.ReviewDTO;

public interface ReviewDAO {

	/**
	 * 등록하기 INSERT INTO REVIEW VALUES(review_no_seq.nextval,?,?,?,?,?)
	 * */
	public int reviewInsert(ReviewDTO dto)throws SQLException;
	/**
	 * 삭제하기 DELETE FROM REVIEW WHERE VIEW_NUMBDER=?
	 * */
	public int reviewDelete(String vNumber)throws SQLException;
	
	/**
	 * 전체검색 SELECT * FROM REVIEW WHERE P_CODE=?
	 **/
	public List<ReviewDTO> reviewAll(String pCode)throws SQLException;
	
	/**
	 * 수정하기 UPDATE REVIEW SET VIEW_CONTENT=? WHERE VIEW_NUMBER=?
	 * */
	public int reviewUpdate(ReviewDTO dto)throws SQLException;
}
