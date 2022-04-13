package alcohol.mvc.dao;

import java.sql.SQLException;

import alcohol.mvc.dto.OrdersDTO;

public interface OrderDAO {
	/**
	 * 주문하기(등록) INSERT INTO ORDERS(ORDER_CODE,U_ID,PAY_CODE) VALUES(orders_no_seq.nextval,?,?,SYSDATE,?,?,?,?,?) 보류 들어봐야알듯
	 * */
	public int orderInsert(OrdersDTO ordersDTO)throws SQLException;
	
	
	/**
	 * 주문 상태수정 UPDATE ORDERS SET ORDER_STATUS=? WHERE ORDER_CODE=?
	 * */
	public int orderUpdate(OrdersDTO ordersDTO)throws SQLException;
	
	/**
	 * 주문 상태출력 SELECT ORDER_STATUS FROM ORDERS WHERE ORDER_CODE=?
	 * */
	public String orderStatus(String oCode)throws SQLException;
	
	/**
	 * 배송 상태 수정 UPDATE ORDERS SET DELI_STATUS=? WHERE ORDER_CODE=?
	 * */
	public int deliUpdate(OrdersDTO ordersDTO)throws SQLException;
	
	/**
	 * 배송 상태 출력 SELECT DELI_STATUS FROM ORDERS WHERE ORDER_CODE=?
	 * */
	public String deliStatus(String oCode)throws SQLException;
}
