package alcohol.mvc.service;

import java.sql.SQLException;
import java.util.List;

import alcohol.mvc.dto.NoticeDTO;

public interface NoticeService {
	/**
	 * 등록하기
	 * */
	public void noticeInsert(NoticeDTO dto)throws SQLException;
	
	/**
	 * 조회수 증가 기능
	 * */
	public NoticeDTO increamentByNoticeNum(int noNumber,boolean flag)throws SQLException;
	
	
	/**
	 * 삭제하기
	 * */
	public void noticeDelete(int noNumber)throws SQLException;
	
	/**
	 * 수정하기
	 * */
	public void noticeUpdate(NoticeDTO dto)throws SQLException;
	
	/**
	 * 전체검색
	 * */
	public List<NoticeDTO> noticeAll(int paging)throws SQLException;
	
	/**
	 * 상세검색
	 * */
	public NoticeDTO noticeSelect(int noNumber)throws SQLException;
}
