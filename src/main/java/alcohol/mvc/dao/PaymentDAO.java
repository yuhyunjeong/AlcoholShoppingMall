package alcohol.mvc.dao;

import java.sql.SQLException;

public interface PaymentDAO {
	/**
	 * 결재하기 select * from payment where pay_type=?
	 * */
	public int selectPay(int paytype)throws SQLException;
}
