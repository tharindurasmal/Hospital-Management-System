package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookingDAO;
import model.Booking;

/**
 * Servlet implementation class bookingViewServelet
 */
@WebServlet("/bookingViewServelet")
public class bookingViewServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookingViewServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        	String doctorName = request.getParameter("doctorName");
        	
        	

            BookingDAO service = new BookingDAO();
            List<Booking> doctorList = service.getAllBooking(doctorName);
            request.setAttribute("doctorList", doctorList);
            
        } catch (ClassNotFoundException e) {
            request.setAttribute("error", "Database error: " + e.getMessage());
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("bookingmanagement.jsp");
        dispatcher.forward(request, response);
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
