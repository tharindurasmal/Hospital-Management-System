package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.admin;
import util.DBConnect;

public class adminService {

	public void regAdmin(admin ad) {
	    String query = "INSERT INTO admin (name, password, email, role) VALUES (?, ?, ?, ?)";
	    try (Connection conn = DBConnect.getConnection();
	         PreparedStatement ps = conn.prepareStatement(query)) {
	         
	        ps.setString(1, ad.getName());
	        ps.setString(2, ad.getPassword());
	        ps.setString(3, ad.getEmail());
	        ps.setString(4, ad.getRole());
	        
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
	
	public boolean validate(admin ad) {
		
		
		 String query = "SELECT * FROM admin WHERE email = ? AND password = ?";
		    try (Connection conn = DBConnect.getConnection();
		         PreparedStatement ps = conn.prepareStatement(query)) {
		         
		        ps.setString(1, ad.getEmail());
		        ps.setString(2, ad.getPassword());
		        
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
	
	
	// Method to get admin details by email
    public admin getAdminByEmail(String email) throws ClassNotFoundException {
        String query = "SELECT * FROM admin WHERE email = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    admin ad = new admin();
                    ad.setName(rs.getString("name"));
                    ad.setEmail(rs.getString("email"));
                    ad.setPassword(rs.getString("password"));
                    ad.setRole(rs.getString("role"));
                    return ad;
                }
            }

        } catch (SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());
            e.printStackTrace();
        }
        return null;  // Return null if admin not found
    }

    // Method to delete admin by email
    public boolean deleteAdminByEmail(String email) throws ClassNotFoundException {
        String query = "DELETE FROM admin WHERE email = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, email);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0; // Return true if deletion was successful

        } catch (SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());
            e.printStackTrace();
        }
        return false;  // Return false if deletion failed
    }
}
