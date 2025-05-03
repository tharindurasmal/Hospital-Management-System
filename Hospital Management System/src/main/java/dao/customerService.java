package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.customer;
import util.DBConnect;

public class customerService {

	public void regCustomer(customer cus) {
	    String query = "INSERT INTO customer (email, password, address1, address2, city, state, zip) VALUES (?, ?, ?, ?, ?, ?, ?)";
	    try (Connection conn = DBConnect.getConnection();
	         PreparedStatement ps = conn.prepareStatement(query)) {
	         
	        ps.setString(1, cus.getEmail());
	        ps.setString(2, cus.getPassword());
	        ps.setString(3, cus.getAddress1());
	        ps.setString(4, cus.getAddress2());
	        ps.setString(5, cus.getCity());
	        ps.setString(6, cus.getState());
	        ps.setString(7, cus.getZip());
	        ps.executeUpdate();
	        System.out.println("Customer inserted successfully!");

	    } catch (SQLException e) {
	        System.out.println("SQL Error: " + e.getMessage());
	        e.printStackTrace();
	    } catch (Exception e) {
	        System.out.println("Error: " + e.getMessage());
	        e.printStackTrace();
	    }
	}
	
	
	public boolean validate(customer cus) {
		
		
		 String query = "SELECT * FROM customer WHERE email = ? AND password = ?";
		    try (Connection conn = DBConnect.getConnection();
		         PreparedStatement ps = conn.prepareStatement(query)) {
		         
		        ps.setString(1, cus.getEmail());
		        ps.setString(2, cus.getPassword());
		        
		        try (ResultSet rs = ps.executeQuery()) {
		            return rs.next(); // returns true if a match is found
		        }

		    } catch (SQLException e) {
		        System.out.println("SQL Error: " + e.getMessage());
		        e.printStackTrace();
		        return false;
		    } catch (Exception e) {
		        System.out.println("Error: " + e.getMessage());
		        e.printStackTrace();
		        return false;
		    }
		
		
	}
}
