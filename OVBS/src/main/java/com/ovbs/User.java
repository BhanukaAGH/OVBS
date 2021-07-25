package com.ovbs;

public class User {
	private int id;
	private String username;
	private String email;
	private String password;
	private String type;

	public User(int id, String username, String email, String password, String type) {
		this.id = id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.type = type;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getType() {
		return type;
	}

}
