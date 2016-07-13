package com.gem.model;


public class Device {
	public Device() {
	}
	private int id;
	private String deviceName;
	private String producer;
	private String producerPhone;
	private String buyDate;
	private String company;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeviceName() {
		return deviceName;
	}
	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public String getProducerPhone() {
		return producerPhone;
	}
	public void setProducerPhone(String producerPhone) {
		this.producerPhone = producerPhone;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	@Override
	public String toString() {
		return "Device [id=" + id + ", deviceName=" + deviceName + ", producer=" + producer + ", producerPhone="
				+ producerPhone + ", buyDate=" + buyDate + ", company=" + company + "]";
	}
	
}
