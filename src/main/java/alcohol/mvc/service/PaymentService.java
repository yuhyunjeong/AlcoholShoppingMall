package alcohol.mvc.service;

import java.sql.SQLException;

public interface PaymentService {
	/**
	 * 결재하기
	 * */
	public void selectPay(int paytype)throws SQLException;
	
	
}
