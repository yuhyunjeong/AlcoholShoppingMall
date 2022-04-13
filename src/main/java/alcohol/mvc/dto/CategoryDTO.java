package alcohol.mvc.dto;

public class CategoryDTO {
	private String cartCode;
	private String cartName;
	public CategoryDTO() {}
	public CategoryDTO(String cartCode, String cartName) {
		super();
		this.cartCode = cartCode;
		this.cartName = cartName;
	}
	public String getCartCode() {
		return cartCode;
	}
	public void setCartCode(String cartCode) {
		this.cartCode = cartCode;
	}
	public String getCartName() {
		return cartName;
	}
	public void setCartName(String cartName) {
		this.cartName = cartName;
	}
	
	
}
