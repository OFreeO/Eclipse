package Member;

public class MemberDto {
	private String userID;
	private String userPWD;
	private String userName;
	private String userGender;
	private String userEmail;
	
	public MemberDto(){}
	
	public MemberDto(String userID, String userPWD, String userName, String userGender, String userEmail) {
		super();
		this.userID = userID;
		this.userPWD = userPWD;
		this.userName = userName;
		this.userGender = userGender;
		this.userEmail = userEmail;
	}
	
	
	@Override
	public String toString() {
		return "MemberDto [userID=" + userID + ", userPWD=" + userPWD + ", userName=" + userName + ", userGender="
				+ userGender + ", userEmail=" + userEmail + "]";
	}

	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPWD() {
		return userPWD;
	}
	public void setUserPWD(String userPWD) {
		this.userPWD = userPWD;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
}
