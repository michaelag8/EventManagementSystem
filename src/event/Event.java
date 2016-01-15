package event;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import database.DBConnect;
import user.ClientUser;

/**
 * This class refers to methods and data relating to Event.
 * Also can be referred to Pre-set Events
 * @author blazing squad
 */
public class Event implements Serializable  {
	private static final long serialVersionUID = 1L;
	private int eventid;
	private String eventName;
	private String category;
	private String eventType;
	private Date startDatetime;
	private Date endDatetime;
	private String location;
	private int estGuestNumber;
	private int confGuestNumber;
	private BigDecimal eventCost;
	private String description;
	private ClientUser clientSigned;
	
	private Connection connection = null;
    private Statement statement = null;
    private ResultSet rs = null;
    private String query = "";
	
	/**
	 * @return the eventid
	 */
	public int getEventid() {
		return eventid;
	}
	/**
	 * @param eventid the eventid to set
	 */
	public void setEventid(int eventid) {
		this.eventid = eventid;
	}
	/**
	 * @return the eventName
	 */
	public String getEventName() {
		return eventName;
	}
	/**
	 * @param eventName the eventName to set
	 */
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}
	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}
	/**
	 * @return the eventType
	 */
	public String getEventType() {
		return eventType;
	}
	/**
	 * @param eventType the eventType to set
	 */
	public void setEventType(String eventType) {
		this.eventType = eventType;
	}
	/**
	 * @return the startDatetime
	 */
	public Date getStartDatetime() {
		return startDatetime;
	}
	/**
	 * @param startDatetime the startDatetime to set
	 */
	public void setStartDatetime(Date startDatetime) {
		this.startDatetime = startDatetime;
	}
	/**
	 * @return the endDatetime
	 */
	public Date getEndDatetime() {
		return endDatetime;
	}
	/**
	 * @param endDatetime the endDatetime to set
	 */
	public void setEndDatetime(Date endDatetime) {
		this.endDatetime = endDatetime;
	}
	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}
	/**
	 * @param location the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}
	/**
	 * @return the estGuestNumber
	 */
	public int getEstGuestNumber() {
		return estGuestNumber;
	}
	/**
	 * @param estGuestNumber the estGuestNumber to set
	 */
	public void setEstGuestNumber(int estGuestNumber) {
		this.estGuestNumber = estGuestNumber;
	}
	/**
	 * @return the confGuestNumber
	 */
	public int getConfGuestNumber() {
		return confGuestNumber;
	}
	/**
	 * @param confGuestNumber the confGuestNumber to set
	 */
	public void setConfGuestNumber(int confGuestNumber) {
		this.confGuestNumber = confGuestNumber;
	}
	/**
	 * @return the eventCost
	 */
	public BigDecimal getEventCost() {
		return eventCost;
	}
	/**
	 * @param eventCost the eventCost to set
	 */
	public void setEventCost(BigDecimal eventCost) {
		this.eventCost = eventCost;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the clientSigned
	 */
	public ClientUser getClientSigned() {
		return clientSigned;
	}
	/**
	 * @param clientSigned the clientSigned to set
	 */
	public void setClientSigned(ClientUser clientSigned) {
		this.clientSigned = clientSigned;
	}
	/**
	 * @param event bean to add event data to database
	 * @return boolean to check if insert is successful
	 */
	public boolean addEvent(Event event) {
		return true;
	}
	/**
	 * @return event bean to view current pre-set event
	 */
	public Event viewEvent(int eventid) throws SQLException {
		Event event = null;
		
		query = "SELECT * FROM presetevent where presetid="+eventid;
		
		try {
    		connection = DBConnect.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            
            while (rs.next()) {
                event = new Event();
            	event.setEventName(rs.getString("eventname")); 
            	event.setCategory(rs.getString("category"));
            	event.setLocation(rs.getString("location"));
            	event.setEstGuestNumber(rs.getInt("estimateguests"));
            	event.setEventCost(rs.getBigDecimal("cost"));
            	event.setDescription(rs.getString("description"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally  {
            statement.close();
            connection.close();
        }
		return event;
	}
	/**
	 * @return ArrayList of events to view all pre-set events
	 */
	public ArrayList<Event> viewAllEvents() throws SQLException {
		ArrayList<Event> events = new ArrayList<Event>();
		Event event;
		
		query = "SELECT presetid, eventname, category FROM presetevent";
    	
    	try {
    		connection = DBConnect.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            
            while (rs.next()) {
                event = new Event();
                event.setEventid(rs.getInt("presetid"));
            	event.setEventName(rs.getString("eventname")); 
            	event.setCategory(rs.getString("category"));
 
                events.add(event);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally  {
            statement.close();
            connection.close();
        }
        
		return events;
	}
	/**
	 * @param eventid to delete or remove in database
	 */
	public void deleteEvent(int eventid) {
		
	}
	/**
	 * @param eventid and client data to book event
	 */
	public void bookEvent(int eventid, ClientUser client) {

	}
}
