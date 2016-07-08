package com.gem.dao;

import com.gem.model.User;

public interface UserDao {
	public User selectUserById(Integer userId);
}
