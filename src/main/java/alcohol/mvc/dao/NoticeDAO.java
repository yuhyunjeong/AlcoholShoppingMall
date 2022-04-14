package alcohol.mvc.dao;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.NoticeDTO;

public interface NoticeDAO {

	/**
	 * 등록하기 INSERT INTO NOTICE VALUES(notice_no_seq.nextval,?,?,?,SYSDATE,?)
	 * */
	public int noticeInsert(NoticeDTO dto)throws SQLException;
	
	/**
	 * 삭제하기 DELECT FROM NOTICE WHERE NO_NUMBER=?
	 * */
	public int noticeDelete(String noNumber)throws SQLException;
	
	/**
	 * 수정하기 UPDATE NOTICE SET NO_TITLE=? ,NO_CONTENT=? WHERE NO_NUMBER=?
	 * */
	public int noticeUpdate(NoticeDTO dto)throws SQLException;
	
	/**
	 * 전체검색 SELECT * FROM NOTICE
	 * */
	public List<NoticeDTO> noticeAll()throws SQLException;
	
	/**
	 * 상세검색 SELECT * FROM NOTICE WHERE NO_NUMBER=?
	 * */
	public NoticeDTO noticeSelect(String noNumber)throws SQLException;
}
