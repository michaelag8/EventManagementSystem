package user;

/**
 * This class refers to methods and data relating to the Client.
 * @author blazing squad
 */
public class ClientUser extends StaffUser {
	private int accountAge; //accountAge refers to how long a client has been with the company or website

	/**
	 * @return the accountAge
	 */
	public int getAccountAge() {
		return accountAge;
	}

	/**
	 * @param accountAge the accountAge to set
	 */
	public void setAccountAge(int accountAge) {
		this.accountAge = accountAge;
	}

	
}
