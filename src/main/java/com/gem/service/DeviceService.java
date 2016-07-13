package com.gem.service;

import java.util.List;

import com.gem.model.Device;

public interface DeviceService {  
	public List<Device> getAllDevice();
	public void addDeviceInfo(Device device);
}  
