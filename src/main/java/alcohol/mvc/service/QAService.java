package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.QADTO;

public interface QAService {
	/**
	 * 등록하기 
	 * */
	public void qaInsert(QADTO dto)throws SQLException;
	
	/**
	 * 삭제하기
	 * */
	public void qaDelete(String qaNumber)throws SQLException;
	
	/**
	 * 수정하기
	 * */
	public void qaUpdate(QADTO dto)throws SQLException;
	
	/**
	 * 전체검색
	 * */
	public List<QADTO> qaAll(int paging)throws SQLException;
	
	/**
	 * 상세검색
	 * */
	public QADTO qaSelect(String qaNumber)throws SQLException;
}
