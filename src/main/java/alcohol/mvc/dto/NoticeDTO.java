package alcohol.mvc.dto;

public class NoticeDTO {
	private int noNumber;
	private String noTitle;
	private String noContent;
	private String noDate;
	private String userId;
	private int viewCount;
	
	public NoticeDTO() {}

	public NoticeDTO(int noNumber, String noTitle, String noContent, String noDate, String userId, int viewCount) {
		super();
		this.noNumber = noNumber;
		this.noTitle = noTitle;
		this.noContent = noContent;
		this.noDate = noDate;
		this.userId = userId;
		this.viewCount = viewCount;
	}

	public int getNoNumber() {
		return noNumber;
	}

	public void setNoNumber(int noNumber) {
		this.noNumber = noNumber;
	}

	public String getNoTitle() {
		return noTitle;
	}

	public void setNoTitle(String noTitle) {
		this.noTitle = noTitle;
	}

	public String getNoContent() {
		return noContent;
	}

	public void setNoContent(String noContent) {
		this.noContent = noContent;
	}

	public String getNoDate() {
		return noDate;
	}

	public void setNoDate(String noDate) {
		this.noDate = noDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	
	
	
}
