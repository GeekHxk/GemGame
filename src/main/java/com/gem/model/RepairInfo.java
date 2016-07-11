package com.gem.model;

public class RepairInfo {
	public RepairInfo(){
		
	}
	
	private String companyName;
	private String repairName;
	private String repairPhone;
	private String state;
	
	public String getCompanyName() {
		return companyName;
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
		return "RepairInfo [companyName=" + companyName + ", repairName=" + repairName + ", repairPhone=" + repairPhone
				+ "]";
	}
	
	
}
