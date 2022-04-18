package alcohol.mvc.dto;

public class GoodsDTO {

	String cateCode;
	String pCode;
	String pName;
	int pAlcohol;
	int pPrice;
	int pStuck;
	String pDate;
	
	public GoodsDTO() {}

	public GoodsDTO(String cateCode, String pCode, String pName, int pAlcohol, int pPrice, int pStuck, String pDate) {
		super();
		this.cateCode = cateCode;
		this.pCode = pCode;
		this.pName = pName;
		this.pAlcohol = pAlcohol;
		this.pPrice = pPrice;
		this.pStuck = pStuck;
		this.pDate = pDate;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpAlcohol() {
		return pAlcohol;
	}

	public void setpAlcohol(int pAlcohol) {
		this.pAlcohol = pAlcohol;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public int getpStuck() {
		return pStuck;
	}

	public void setpStuck(int pStuck) {
		this.pStuck = pStuck;
	}

	public String getpDate() {
		return pDate;
	}

	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
		
}
