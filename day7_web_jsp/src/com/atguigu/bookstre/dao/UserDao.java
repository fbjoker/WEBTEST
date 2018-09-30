package com.atguigu.bookstre.dao;

import java.util.List;

import com.atguigu.bookstore.bean.User;

/**
 * 约束bs_user表的操作方法
 * @author Administrator
 *
 */
public interface UserDao {
	
	User getUserByUsernameAndPassword(User user);
	
	 int saveUser(User user);
	 List<User> getAllList();

}
