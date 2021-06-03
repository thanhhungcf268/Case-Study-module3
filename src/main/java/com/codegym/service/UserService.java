package com.codegym.service;

import com.codegym.DAO.user.IUserDAO;
import com.codegym.DAO.user.UserDAO;
import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;
import java.util.regex.Pattern;

public class UserService implements IUserService {
    private IUserDAO userDAO = new UserDAO();

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public User findById(int id) {
        return null;
    }

    @Override
    public boolean create(User user) throws SQLException {
        if (checkUser(user)){
            return userDAO.insert(user);
        }else
        return false;
    }

    private boolean checkUser(User user){
        return Pattern.matches("^\\d+\\S{10}&", user.getPassWord());
    }

    @Override
    public boolean update(int id, User user) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public List<User> findAllCustomerByAddress(String address) {
        return null;
    }

    @Override
    public List<User> sortAllCustomer() {
        return null;
    }
}
