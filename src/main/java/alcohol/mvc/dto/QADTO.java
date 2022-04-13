package alcohol.mvc.dto;

public class QADTO {
	private int qaNumber;
	private String userId;
	private int qaCategory;
	private String qaTitle;
	private String qaContent;
	private String qaDate;
	private int qaSecret;
	
	public QADTO() {}

	public QADTO(int qaNumber, String userId, int qaCategory, String qaTitle, String qaContent, String qaDate,
			int qaSecret) {
		super();
		this.qaNumber = qaNumber;
		this.userId = userId;
		this.qaCategory = qaCategory;
		this.qaTitle = qaTitle;
		this.qaContent = qaContent;
		this.qaDate = qaDate;
		this.qaSecret = qaSecret;
	}

	public int getQaNumber() {
		return qaNumber;
	}

	public void setQaNumber(int qaNumber) {
		this.qaNumber = qaNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getQaCategory() {
		return qaCategory;
	}

	public void setQaCategory(int qaCategory) {
		this.qaCategory = qaCategory;
	}

	public String getQaTitle() {
		return qaTitle;
	}

	public void setQaTitle(String qaTitle) {
		this.qaTitle = qaTitle;
	}

	public String getQaContent() {
		return qaContent;
	}

	public void setQaContent(String qaContent) {
		this.qaContent = qaContent;
	}

	public String getQaDate() {
		return qaDate;
	}

	public void setQaDate(String qaDate) {
		this.qaDate = qaDate;
	}

	public int getQaSecret() {
		return qaSecret;
	}

	public void setQaSecret(int qaSecret) {
		this.qaSecret = qaSecret;
	}
	
}
