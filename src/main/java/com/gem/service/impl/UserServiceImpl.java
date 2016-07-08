package com.gem.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gem.dao.UserDao;
import com.gem.model.User;
import com.gem.service.UserService;

@Service
public class UserServiceImpl implements UserService{


	@Autowired  
    private UserDao userDao;  
  
    public User selectUserById(Integer userId) {  
        return userDao.selectUserById(userId);    
    }

}
