package com.codegym.DAO.user;

import com.codegym.DAO.SQLConnection;
import com.codegym.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class UserDAO implements IUserDAO {

    @Override
    public boolean insert(User user) throws SQLException {
        Connection connection = SQLConnection.getConnection();
        int rowInserted = 0;
        try {
            String INSERT_USER = "insert into usermanager.user (username, password, gender, phone, level) VALUE (?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER);
            preparedStatement.setString(1,user.getUserName());
            preparedStatement.setString(2,user.getPassWord());
            preparedStatement.setString(3,user.getGender());
            preparedStatement.setString(4,user.getPhone());
            preparedStatement.setString(5,user.getRank());
            rowInserted = preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowInserted != 0;
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