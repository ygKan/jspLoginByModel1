package com.dao;

import com.po.Users;

//用户的业务逻辑类
public class UsersDao {
  
	public boolean userLogin(Users u){
		//判断用户名及密码都为admin
		if("admin".equals(u.getUsername())&&"admin".equals(u.getPassword())){
			return true;
		}else{
			return false;
		}
	}
}
