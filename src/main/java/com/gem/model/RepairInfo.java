package com.gem.model;

public class RepairInfo {
	public RepairInfo(){
		
	}
	private int id;
	private String number;
	private String companyName;
	private String repairName;
	private String repairPhone;
	private String state;
	private String serviceName;
	
	public String getCompanyName() {
		return companyName;
	}
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
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getRepairName() {
		return repairName;
	}
	public void setRepairName(String repairName) {
		this.repairName = repairName;
	}
	public String getRepairPhone() {
		return repairPhone;
	}
	public void setRepairPhone(String repairPhone) {
		this.repairPhone = repairPhone;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Override
	public String toString() {
		return "RepairInfo [id=" + id + ", number=" + number + ", companyName=" + companyName + ", repairName="
				+ repairName + ", repairPhone=" + repairPhone + ", state=" + state + ", serviceName=" + serviceName
				+ "]";
	}
	
	
}
