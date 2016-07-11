package com.gem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gem.dao.RepairInfoDao;
import com.gem.model.RepairInfo;
import com.gem.service.RepairInfoService;


@Service
public class RepairInfoServiceImpl implements RepairInfoService{
	
	@Autowired
	private RepairInfoDao rid;
	
	@Override
	public List<RepairInfo> getRepairByState(String state) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addRepairInfo(RepairInfo repairInfo) {
		rid.insertRepairInfo(repairInfo);
	}

}
