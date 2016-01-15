package user;
import java.util.ArrayList;

/**
 * This class refers to methods and data relating to the User.
 * @author blazing squad
 */
public class StaffUser {
	private int userid;
	private String userName;
	private String password;
	private String emailAddress;
	private String firstName;
	private String lastName;
	private int userRole;
	
	/**
	 * @return the userid
	 */
	public int getUserid() {
		return userid;
	}
	/**
	 * @param userid the userid to set
	 */
	public void setUserid(int userid) {
		this.userid = userid;
	}
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the emailAddress
	 */
	public String getEmailAddress() {
		return emailAddress;
	}
	/**
	 * @param emailAddress the emailAddress to set
	 */
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the userRole
	 */
	public int getUserRole() {
		return userRole;
	}
	/**
	 * @param userRole the userRole to set
	 */
	public void setUserRole(int userRole) {
		this.userRole = userRole;
	}
	/**
	 * @param userName and password to validate user login
	 * @return boolean to check if login is successful
	 */
	public boolean login(String userName, String password) {
		return true;
	}
	/**
	 * method to logout
	 */
	public void logout() {
		
	}
	/**
	 * @param user bean to add user data to database
	 * @return boolean to check if insert is successful
	 */
	public boolean addUser(StaffUser user) {
		return true;
	}
	/**
	 * @param userName to reset user credentials
	 * @return boolean to check if update is successful
	 */
	public boolean resetUserCredentials(String userName) {
		return true;
	}
	/**
	 * @return ArrayList of users to view all current users
	 */
	public ArrayList<StaffUser> viewUsers() {
		ArrayList<StaffUser> users = new ArrayList<StaffUser>();
		return users;
	}
	/**
	 * @param user bean to update user data in database
	 * @return ArrayList of users to view all current users
	 */
	public boolean editUserDetails(StaffUser user) {
		return true;
	}
	/**
	 * @param userid to delete or remove in database
	 * @return boolean to check if delete is successful
	 */
	public boolean deleteUser(int userid) {
		return true;
	}
}
