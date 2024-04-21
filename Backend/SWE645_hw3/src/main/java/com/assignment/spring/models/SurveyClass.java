package com.assignment.spring.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SurveyClass {
	
	//this is a model class with all the fields we are getting in a json form
	// the json will be mapped in a SurveyClass object with corresponding fields
	
	
	@Id
	String fname;
	
	String lname;
	
	String Address;
	
	String city;
	
	String state;
	
	String zip;
	
	String tel;
	
	String email;
	
	Date date;
	
	String choose;
	
	String comments;
	
	String liked;
	
	String rating;
	
	//default constructor
	public SurveyClass() {
		
	}

	//constructor
	public SurveyClass(String fname, String lname, String address, String city, String state, String zip, String tel,
			String email, Date date, String choose, String comments, String liked, String rating) {
		super();
		this.fname = fname;
		this.lname = lname;
		Address = address;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.tel = tel;
		this.email = email;
		this.date = date;
		this.choose = choose;
		this.comments = comments;
		this.liked = liked;
		this.rating = rating;
	}

	
	//all the getter setters
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getChoose() {
		return choose;
	}

	public void setChoose(String choose) {
		this.choose = choose;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getLiked() {
		return liked;
	}

	public void setLiked(String liked) {
		this.liked = liked;
	}
	
	public String getRating() {
		return rating;
	}
	
	public void setRating(String rating) {
		this.rating = rating;
	}
	
	

}
