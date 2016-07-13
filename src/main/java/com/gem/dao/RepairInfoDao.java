package com.gem.dao;

import java.util.List;

import com.gem.model.RepairInfo;

public interface RepairInfoDao {
	public List<RepairInfo> selectRepairInfoByState(String state);
	public void insertRepairInfo(RepairInfo repairInfo);
	
	//第一次分配维修员工更新报修信息的的状态和维修员工
	public void updateRepairInfoInStateAndName(String servicename);
}
