package com.bp.service;

import org.springframework.stereotype.Service;

import com.bp.bean.UserBean;

@Service
public class LoginService {

	public void service1() {
		System.out.println("---------service1-----------");
	}
	
	public void servier2(UserBean user){
		System.out.println("name="+user.getName()+",password="+user.getPassword());
	}
}
