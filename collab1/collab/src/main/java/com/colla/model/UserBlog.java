package com.colla.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UserBlog {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int userid;
	private String username;
	private String email;
	private String password;
	private int dateofbirth;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public int getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(int dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
}
