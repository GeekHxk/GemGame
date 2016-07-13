package com.gem.service;

import java.util.List;

import com.gem.model.ServiceMan;

public interface ServiceManService {  
    List<ServiceMan> getServiceManByAreaAndState(String area,String state);  
  
}  
