package event;

/**
 * This class refers to methods and data relating to Customised Events.
 * @author blazing squad
 */
public class CustomisedEvent extends Event {
	private static final long serialVersionUID = 1L;
	private boolean isCustomised;

	/**
	 * @return the isCustomised
	 */
	public boolean isCustomised() {
		return isCustomised;
	}

	/**
	 * @param isCustomised the isCustomised to set
	 */
	public void setCustomised(boolean isCustomised) {
		this.isCustomised = isCustomised;
	}
	
	/**
	 * @param name, message and contact to be sent as inquiry message
	 */
	public void inquireAboutEvent(String name, String message, String contact) {

	}
}
