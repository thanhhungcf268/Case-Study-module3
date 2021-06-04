package com.codegym.DAO.login;

import com.codegym.DAO.SQLConnection;
import com.codegym.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    public boolean checkLogin(String userName1,String passWord1) throws SQLException {
        Connection connection = SQLConnection.getConnection();
        boolean isCheck = false;
        String SELECT_BY_USERNAME = "select * from usermanager.user where username = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_USERNAME);
        preparedStatement.setString(1, userName1);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            String password = resultSet.getString("password");
            if (password.equals(passWord1)){
                isCheck = true;
            }
        }
        return isCheck;
    }
}
