package alcohol.mvc.dto;

public class OrdersDTO {
	private int orderCode;
	private String userId;
	private int payCode;
	private String orderDate;
	private String orderStatus;
	private String deliStatus;
	private String deliAddr;
	private String deliAddr2;
	private String orderPhone;
	
	public OrdersDTO() {}

	public OrdersDTO(int orderCode, String userId, int payCode, String orderDate, String orderStatus, String deliStatus,
			String deliAddr, String deliAddr2, String orderPhone) {
		super();
		this.orderCode = orderCode;
		this.userId = userId;
		this.payCode = payCode;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.deliStatus = deliStatus;
		this.deliAddr = deliAddr;
		this.deliAddr2 = deliAddr2;
		this.orderPhone = orderPhone;
	}

	public int getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(int orderCode) {
		this.orderCode = orderCode;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getPayCode() {
		return payCode;
	}

	public void setPayCode(int payCode) {
		this.payCode = payCode;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getDeliStatus() {
		return deliStatus;
	}

	public void setDeliStatus(String deliStatus) {
		this.deliStatus = deliStatus;
	}

	public String getDeliAddr() {
		return deliAddr;
	}

	public void setDeliAddr(String deliAddr) {
		this.deliAddr = deliAddr;
	}

	public String getDeliAddr2() {
		return deliAddr2;
	}

	public void setDeliAddr2(String deliAddr2) {
		this.deliAddr2 = deliAddr2;
	}

	public String getOrderPhone() {
		return orderPhone;
	}

	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}
	
}
