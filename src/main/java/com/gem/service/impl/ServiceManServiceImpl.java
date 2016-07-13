package com.gem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gem.dao.ServiceManDao;
import com.gem.model.ServiceMan;
import com.gem.service.ServiceManService;

@Service
public class ServiceManServiceImpl implements ServiceManService{


	@Autowired  
	private ServiceManDao smd;

	@Override
	public List<ServiceMan> getServiceManByAreaAndState(String area, String state) {
		List<ServiceMan> list = smd.selectServiceManByAreaAndState(area, state);
		return list;
	}  
  

}
