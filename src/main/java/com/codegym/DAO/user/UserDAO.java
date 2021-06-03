package com.codegym.DAO.user;

import com.codegym.DAO.user.IUserDAO;
import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;

public class UserDAO implements IUserDAO {


    @Override
    public boolean insert(User user) throws SQLException {
        return false;
    }

    @Override
    public User select(int id) {
        return null;
    }

    @Override
    public List<User> selectAll() {
        return null;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean update(User user) throws SQLException {
        return false;
    }
}