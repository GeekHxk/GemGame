package com.gem.dao;

import com.gem.model.RepairInfo;

public interface RepairInfoDao {
	public RepairInfo selectRepairInfoByState(String state);
	public void insertRepairInfo(RepairInfo repairInfo);
}
