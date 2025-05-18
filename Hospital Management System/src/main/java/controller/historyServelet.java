package controller;

import java.io.IOException;
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
 * Servlet implementation class historyServelet
 */
@WebServlet("/historyServelet")
public class historyServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public historyServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        	String NIC = request.getParameter("doctorName");
        	
        	

            BookingDAO service = new BookingDAO();
            List<Booking> doctorList = service.getAllhistory(NIC);
            request.setAttribute("doctorList", doctorList);
            
        } catch (ClassNotFoundException e) {
            request.setAttribute("error", "Database error: " + e.getMessage());
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("Historypatient.jsp");
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
