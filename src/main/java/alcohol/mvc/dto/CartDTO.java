package alcohol.mvc.dto;

public class CartDTO {
	private int cartNo;
	private String userId;
	private String pCode;
	private int cartCount;
	
	public CartDTO() {}

	public CartDTO(int cartNo, String userId, String pCode, int cartCount) {
		super();
		this.cartNo = cartNo;
		this.userId = userId;
		this.pCode = pCode;
		this.cartCount = cartCount;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public int getCartCount() {
		return cartCount;
	}

	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}
	
	
}
