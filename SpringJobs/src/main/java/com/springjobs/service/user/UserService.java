package com.springjobs.service.user;

import com.springjobs.domain.Users;

public interface UserService {
	public Users addUser(Users user);
	
	public Users login(Users user);
	
	public int idDuplicateCheck(Users user);
	
	public int userEmailConfirm(int uno);
}
