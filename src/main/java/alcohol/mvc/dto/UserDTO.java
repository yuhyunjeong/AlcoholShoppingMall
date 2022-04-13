package alcohol.mvc.dto;

public class UserDTO {
	private String userId;
	private String userPwd;
	private String userName;
	private String userJumin;
	private String userEmail;
	private String userAddr;
	private String userAddr2;
	private int userGrade;
	private int userPoint;
	private String joinDate;
	
	public UserDTO() {}

	public UserDTO(String userId, String userPwd, String userName, String userJumin, String userEmail, String userAddr,
			String userAddr2, int userGrade, int userPoint, String joinDate) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userJumin = userJumin;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userAddr2 = userAddr2;
		this.userGrade = userGrade;
		this.userPoint = userPoint;
		this.joinDate = joinDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserJumin() {
		return userJumin;
	}

	public void setUserJumin(String userJumin) {
		this.userJumin = userJumin;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getUserAddr2() {
		return userAddr2;
	}

	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}

	public int getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(int userGrade) {
		this.userGrade = userGrade;
	}

	public int getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
	
}
