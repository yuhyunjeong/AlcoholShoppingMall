package alcohol.mvc.dto;

public class ProductDTO {
	private String pCode;
	private String cateCode;
	private String pName;
	private int pAlcohol;
	private int pPrice;
	private int pStuck;
	private String pDate;
	private String pImage;
	private String pDetail;
	
	public ProductDTO() {}

	public ProductDTO(String pCode, String cateCode, String pName, int pAlcohol, int pPrice, int pStuck, String pDate,
			String pImage, String pDetail) {
		super();
		this.pCode = pCode;
		this.cateCode = cateCode;
		this.pName = pName;
		this.pAlcohol = pAlcohol;
		this.pPrice = pPrice;
		this.pStuck = pStuck;
		this.pDate = pDate;
		this.pImage = pImage;
		this.pDetail = pDetail;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
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

	public String getpImage() {
		return pImage;
	}

	public void setpImage(String pImage) {
		this.pImage = pImage;
	}

	public String getpDetail() {
		return pDetail;
	}

	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}
	
}
