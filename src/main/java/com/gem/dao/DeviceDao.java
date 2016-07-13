package com.gem.dao;

import java.util.List;

import com.gem.model.Device;

public interface DeviceDao {
	public List<Device> selectAllDevice();
	public int insertDeviceInfo(Device device);
}
