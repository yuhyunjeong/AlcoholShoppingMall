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
	private String pImage2;
	private String pImage3;
	private String pDetail;
	
	public ProductDTO() {}

	public ProductDTO(String pCode, String cateCode, String pName, int pAlcohol, int pPrice, int pStuck, String pDate,
			String pImage, String pImage2, String pImage3, String pDetail) {
		super();
		this.pCode = pCode;
		this.cateCode = cateCode;
		this.pName = pName;
		this.pAlcohol = pAlcohol;
		this.pPrice = pPrice;
		this.pStuck = pStuck;
		this.pDate = pDate;
		this.pImage = pImage;
		this.pImage2 = pImage2;
		this.pImage3 = pImage3;
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

	public String getpImage2() {
		return pImage2;
	}

	public void setpImage2(String pImage2) {
		this.pImage2 = pImage2;
	}

	public String getpImage3() {
		return pImage3;
	}

	public void setpImage3(String pImage3) {
		this.pImage3 = pImage3;
	}

	public String getpDetail() {
		return pDetail;
	}

	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}

	
	
}
