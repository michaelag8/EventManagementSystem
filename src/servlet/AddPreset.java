package servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import event.Event;

/**
 * Servlet implementation class AddPreset
 * This servlet is utilised for getting the data from add preset event
 * @author blazing squad
 */
public class AddPreset extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Event event = new Event();
		event.setEventName(request.getParameter("eventname")); 
		event.setCategory(request.getParameter("category"));
		event.setLocation(request.getParameter("location"));
		event.setEstGuestNumber(Integer.parseInt(request.getParameter("estnumguests")));
		event.setDescription(request.getParameter("description"));
		BigDecimal cost = new BigDecimal(request.getParameter("cost"));
		event.setEventCost(cost);
		
		try {
			event.addEvent(event);
			response.sendRedirect("presetevents.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
	}

}
