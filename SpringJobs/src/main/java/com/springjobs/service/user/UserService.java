package com.springjobs.service.user;

import com.springjobs.domain.Users;

public interface UserService {
	public void addUser(Users user);
	
	public Users login(Users user);
	
	public int idDuplicateCheck(Users user);
}