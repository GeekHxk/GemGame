package com.gem.dao;

import java.util.List;

import com.gem.model.ServiceMan;

public interface ServiceManDao {
	public List<ServiceMan> selectServiceManByAreaAndState(String area,String state);
}
