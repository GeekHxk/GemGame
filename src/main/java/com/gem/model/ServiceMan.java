package com.gem.model;

public class ServiceMan {

	public ServiceMan() {
		// TODO Auto-generated constructor stub
	}
	
	private int id;
	private String number;
	private String name;
	private String phone;
	private String area;
	private String password;
	private String type;
	//现在维修状态
	private String state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "ServiceMan [id=" + id + ", number=" + number + ", name=" + name + ", phone=" + phone + ", area=" + area
				+ ", password=" + password + ", type=" + type + ", state=" + state + "]";
	}
	
	
}
