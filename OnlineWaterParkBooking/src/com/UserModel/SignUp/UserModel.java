package com.UserModel.SignUp;

public class UserModel {
	private String fname;
	private String lname;
	private String email;
	private String password;
	private String uname;
	private double mobile;
	private int id;
	private String Admissioncriteria;
	private String Adult;
	private String child;
	private String srcitizen;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdmissioncriteria() {
		return Admissioncriteria;
	}
	public void setAdmissioncriteria(String admissioncriteria) {
		Admissioncriteria = admissioncriteria;
	}
	public String getAdult() {
		return Adult;
	}
	public void setAdult(String adult) {
		Adult = adult;
	}
	public String getChild() {
		return child;
	}
	public void setChild(String child) {
		this.child = child;
	}
	public String getSrcitizen() {
		return srcitizen;
	}
	public void setSrcitizen(String srcitizen) {
		this.srcitizen = srcitizen;
	}
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public double getMobile() {
		return mobile;
	}
	public void setMobile(double mobile) {
		this.mobile = mobile;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}


}
