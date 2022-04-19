package alcohol.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import alcohol.mvc.dto.NoticeDTO;
import alcohol.mvc.dto.QADTO;
import alcohol.mvc.paging.PageCnt;
import alcohol.mvc.util.DbUtil;

public class QADAOImpl implements QADAO {

	@Override
	public int qaInsert(QADTO qaDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = "INSERT INTO NOTICE VALUES(qa_no_seq.nextval,?,?,?,?,sysdate,?)";

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, qaDTO.getUserId());
			ps.setInt(2, qaDTO.getQaCategory());
			ps.setString(3, qaDTO.getQaTitle());
			ps.setString(4, qaDTO.getQaContent());
			ps.setInt(5, qaDTO.getQaSecret());

			result = ps.executeUpdate();

		} finally {
			DbUtil.dbClose(ps, con);
		}

		return result;
	}

	@Override
	public int qaDelete(int qaNumber) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = "DELECT FROM QA WHERE QA_NUMBER=?";

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, qaNumber);

			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}

	@Override
	public int qaUpdate(QADTO qaDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		String sql = "UPDATE QA SET QA_CONTENT=? WHERE QA_NUMBER=?";
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, qaDTO.getQaContent());
			ps.setInt(2, qaDTO.getQaNumber());

			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}

	@Override
	public List<QADTO> qaAll(int paging) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<QADTO> qaList = new ArrayList<QADTO>();
		String sql = "select * from (SELECT a.*, ROWNUM rnum FROM (SELECT * FROM QA ORDER BY QA_DATE desc) a) where  rnum>=? and rnum <=?";

		try {

			// 전체 레코드 수를 구해서 총 페이지 수를 구하고 DB에서 꺼내올 게시물의 개수를 pagesize만큼 가져온다.
			int totalCount = this.getTotalCount();
			int totalPage = totalCount % PageCnt.getPagesize() == 0 ? totalCount / PageCnt.getPagesize():(totalCount / PageCnt.getPagesize()) + 1;

			PageCnt pageCnt = new PageCnt();
			pageCnt.setPageCnt(totalPage); // 전체 페이지 수를 저장해준다.
			pageCnt.setPageNo(paging); // 사용자가 클릭한 page의 번호를 설정

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, (paging-1)*PageCnt.pagesize+1); // 시작점 번호
			ps.setInt(2, paging*pageCnt.pagesize); // 끝점 번호

			rs = ps.executeQuery();

			while (rs.next()) {
				QADTO qaDTO = new QADTO(rs.getInt(1), rs.getString(2), rs.getString(4), rs.getString(5),
						rs.getString(6));

				qaList.add(qaDTO);
			}

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return qaList;
	}

	/**
	 * 전체 레코드 수 가져오기
	 */
	private int getTotalCount() throws SQLException {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int totalCount = 0;
		String sql = "select count(*) from users";

		try {

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();

			if (rs.next()) {
				totalCount = rs.getInt(1);
			}

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		return totalCount;
	}

	@Override
	public QADTO qaSelect(int qaNumber) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		QADTO qa = null;
		String sql = "SELECT * FROM QA WHERE QA_NUMBER=?";
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, qaNumber);

			rs = ps.executeQuery();
			if (rs.next()) {
				qa = new QADTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7));

			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return qa;
	}

	@Override
	public List<QADTO> qaSelectAll(int categoryNum) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<QADTO> list = new ArrayList<QADTO>();
		
		String sql = "SELECT * FROM QA WHERE QA_CATEGORY=?";

		
		try {
			
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, categoryNum);

			rs = ps.executeQuery();
			if (rs.next()) {
				QADTO qa = new QADTO(rs.getInt(1), rs.getString(2), rs.getString(4), rs.getString(5), rs.getString(6));
						
				list.add(qa);

			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}

}
