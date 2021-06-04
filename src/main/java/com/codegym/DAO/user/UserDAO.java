package com.codegym.DAO.user;

import com.codegym.DAO.SQLConnection;
import com.codegym.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    private Connection connection = SQLConnection.getConnection();
    private int rowInserted = 0;

    @Override
    public boolean create(User user) throws SQLException {
        connection = SQLConnection.getConnection();
        try {
            String INSERT_USER = "insert into usermanager.user (username, password, gender, phone, level) VALUE (?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER);
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassWord());
            preparedStatement.setString(3, user.getGender());
            preparedStatement.setString(4, user.getPhone());
            preparedStatement.setString(5, user.getRank());
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
        List<User> list = new ArrayList<>();
         connection = SQLConnection.getConnection();
        try {
            String SELECT_ALL_USER = "select * from usermanager.user";
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int userId = resultSet.getInt("userId");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String gender = resultSet.getString("gender");
                String phone = resultSet.getString("phone");
                String level = resultSet.getString("level");
                list.add(new User(userId,username,password,gender,phone,level));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        rowInserted = 0;
        String DELETE_BY_ID = "delete from usermanager.user where userId = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BY_ID);
        preparedStatement.setInt(1,id);
        rowInserted = preparedStatement.executeUpdate();
        return rowInserted !=0;
    }

    @Override
    public boolean update(int id, User user) throws SQLException {
        rowInserted = 0;
        try {
            String UPDATE_USER = "update usermanager.user set username = ?,password = ?,gender = ?,phone = ?,level = ? where userId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER);
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassWord());
            preparedStatement.setString(3, user.getGender());
            preparedStatement.setString(4, user.getPhone());
            preparedStatement.setString(5, user.getRank());
            preparedStatement.setInt(6, id);
            rowInserted = preparedStatement.executeUpdate();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return rowInserted != 0;
    }
}