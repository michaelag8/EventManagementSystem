package event;

/**
 * This class refers to methods and data relating to Event Details.
 * @author blazing squad
 */
public class EventDetails {
	private int itemid;
	private String itemName;
	private String itemType;
	private String itemDescription;
	private String[] staffAssigned;
	/**
	 * @return the itemid
	 */
	public int getItemid() {
		return itemid;
	}
	/**
	 * @param itemid the itemid to set
	 */
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	/**
	 * @return the itemName
	 */
	public String getItemName() {
		return itemName;
	}
	/**
	 * @param itemName the itemName to set
	 */
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	/**
	 * @return the itemType
	 */
	public String getItemType() {
		return itemType;
	}
	/**
	 * @param itemType the itemType to set
	 */
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	/**
	 * @return the itemDescription
	 */
	public String getItemDescription() {
		return itemDescription;
	}
	/**
	 * @param itemDescription the itemDescription to set
	 */
	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}
	/**
	 * @return the staffAssigned
	 */
	public String[] getStaffAssigned() {
		return staffAssigned;
	}
	/**
	 * @param staffAssigned the staffAssigned to set
	 */
	public void setStaffAssigned(String[] staffAssigned) {
		this.staffAssigned = staffAssigned;
	}
	/**
	 * @param event details bean to add event details data to database
	 * @return boolean to check if insert is successful
	 */
	public boolean addEventDetails(EventDetails eventDetails) {
		return true;
	}
	/**
	 * @param event details bean to update event details data to database
	 * @return boolean to check if update is successful
	 */
	public boolean editEventDetails(EventDetails eventDetails) {
		return true;
	}
	/**
	 * @param event details id to delete or remove in database
	 */
	public void deleteEventDetails(int itemid) {
		
	}
	/**
	 * @param event details bean to view current event details
	 */
	public EventDetails viewEventDetails(int itemid) {
		EventDetails item = new EventDetails();
		return item;
	}
}
