package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dao.ReviewDAO;
import alcohol.mvc.dao.ReviewDAOImpl;
import alcohol.mvc.dto.ReviewDTO;

public class ReviewServiceImpl implements ReviewService {
	ReviewDAO dao = new ReviewDAOImpl();
	@Override
	public void reviewInsert(ReviewDTO dto) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void reviewDelete(int vNumber) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ReviewDTO> reviewAll(String pCode, int paging) throws SQLException {
		List<ReviewDTO> list = dao.reviewAll(pCode, paging);
		return list;
	}

	@Override
	public void reviewUpdate(ReviewDTO dto) throws SQLException {
		// TODO Auto-generated method stub

	}

}
