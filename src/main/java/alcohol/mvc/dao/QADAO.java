package alcohol.mvc.dao;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.NoticeDTO;
import alcohol.mvc.dto.QADTO;

public interface QADAO {
	/**
	 * 등록하기 INSERT INTO NOTICE VALUES(qa_no_seq.nextval,?,?,?,?,sysdate,?)
	 * */
	public int qaInsert(QADTO qaDTO)throws SQLException;
	
	/**
	 * 삭제하기 DELECT FROM QA WHERE QA_NUMBER=?
	 * */
	public int qaDelete(String qaNumber)throws SQLException;
	
	/**
	 * 수정하기 UPDATE QA SET QA_CONTENT=? WHERE QA_NUMBER=?
	 * */
	public int qaUpdate(QADTO qaDTO)throws SQLException;
	
	/**
	 * 전체검색 SELECT * FROM QA
	 * */
	public List<QADTO> qaAll(int paging)throws SQLException;
	
	/**
	 * 상세검색 SELECT * FROM QA WHERE QA_NUMBER=?
	 * */
	public QADTO qaSelect(String qaNumber)throws SQLException;
}
