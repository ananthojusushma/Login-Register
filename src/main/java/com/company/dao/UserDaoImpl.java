package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DBUtil;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean isvalidUser(String username, String password) {

		String query="select * from users where username=? AND password=?";
		try(Connection connection=DBUtil.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement(query)){
			preparedStatement.setString(1,username);
			preparedStatement.setString(2,password);
			ResultSet resultset=preparedStatement.executeQuery();
			
			System.out.println("query run successfully");
			return resultset.next();
		
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
				
	}

	@Override
	public boolean addUser(Users users) {
		String query="insert into users(username,email,password) values(?,?,?)";
	try(Connection connection=DBUtil.getConnection();
			PreparedStatement preparedstatement=connection.prepareStatement(query)){
		preparedstatement.setString(1,users.getUsername());
		preparedstatement.setString(2,users.getEmail());
		preparedstatement.setString(3,users.getPassword());
		
		int rows=preparedstatement.executeUpdate();
		System.out.println("user apna holiya");
		return  rows>0;
	}
	
	catch(SQLException e) {
		e.printStackTrace();
		return false;
		
	}
	}

}
