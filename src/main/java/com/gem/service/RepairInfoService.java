package com.gem.service;

import java.util.List;

import com.gem.model.RepairInfo;

public interface RepairInfoService {  
    List<RepairInfo> getRepairByState(String state);
    void addRepairInfo(RepairInfo repairInfo);
}  
