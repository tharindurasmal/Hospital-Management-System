package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.doctor;
import util.DBConnect;

public class doctorService {

	
	public void regDoctor(doctor dc) {
	    String query = "INSERT INTO doctor (name, hospital, speciality, experience, contact, email, country, gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	    try (Connection conn = DBConnect.getConnection();
	         PreparedStatement ps = conn.prepareStatement(query)) {
	         
	        ps.setString(1, dc.getName());
	        ps.setString(2, dc.getHospital());
	        ps.setString(3, dc.getSpeciality());
	        ps.setString(4, dc.getExperience());
	        ps.setString(5, dc.getContact());
	        ps.setString(6, dc.getEmail());
	        ps.setString(7, dc.getCountry());
	        ps.setString(8, dc.getGender());
	        
	        
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
	
}
