package com.gem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gem.dao.DeviceDao;
import com.gem.model.Device;
import com.gem.service.DeviceService;


@Service
public class DeviceServiceImpl implements DeviceService{

	@Autowired
	private DeviceDao deviceDao;
	
	@Override
	public List<Device> getAllDevice() {
		return null;
	}

	@Override
	public void addDeviceInfo(Device device) {
		deviceDao.insertDeviceInfo(device);
	}

}
