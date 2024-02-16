package com.company.dao;

public interface UserDao {

	boolean isvalidUser(String username, String password);

	boolean addUser(Users users);

}
