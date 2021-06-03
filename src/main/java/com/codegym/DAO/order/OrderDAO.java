package com.codegym.DAO.order;

import com.codegym.DAO.SQLConnection;
import com.codegym.DAO.order.IOrderDAO;
import com.codegym.model.OrderDetail;
import com.mysql.cj.CacheAdapter;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO implements IOrderDAO {

    public static final String SELECT_ALL_ORDER_DETAILS = "select * from orderdetails";
    public static final String SELECT_CUSTOMER_BY_ID = "select * from orderdetails where id = ?";
    public static final String INSERT_ORDER_DETAILS = "insert into orderdetails (userId, rentalPersonId, price, hours, startHour) VALUE (?, ?, ?, ?, ?)";
    public static final String UPDATE_ORDER_DETAILS = "update orderdetail set userId = ?,rentalPersonId = ?, price =?, hours=?, startHour =? where orderId = ?;";


    @Override
    public boolean insert(OrderDetail orderDetail) throws SQLException {
        Connection connection = SQLConnection.getConnection();
        int rowInsert = 0;
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDER_DETAILS);
        preparedStatement.setInt(1, orderDetail.getUserId());
        preparedStatement.setInt(2, orderDetail.getRentalPersonId());
        preparedStatement.setDouble(3, orderDetail.getPrice());
        preparedStatement.setFloat(4, orderDetail.getHours());
        preparedStatement.setString(5, orderDetail.getStartHour());
        rowInsert = preparedStatement.executeUpdate();
        return rowInsert != 0;
    }

    @Override
    public OrderDetail select(int id) {
        OrderDetail orderDetail = new OrderDetail();
        Connection connection = SQLConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int userId = rs.getInt("userId");
                int rentalPersonId = rs.getInt("rentalPersonId");
                double price = rs.getDouble("price");
                float hours = rs.getFloat("hours");
                String startHour = rs.getString("startHour");
                orderDetail = new OrderDetail(id, userId, rentalPersonId,price,hours,startHour);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderDetail;
    }

    @Override
    public List<OrderDetail> selectAll() {
        List<OrderDetail> orderDetails = new ArrayList<>();
        Connection connection = SQLConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ORDER_DETAILS);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int orderId = rs.getInt("orderId");
                int userId = rs.getInt("userId");
                int rentalPersonId = rs.getInt("rentalPersonId");
                double price = rs.getDouble("price");
                float hours = rs.getFloat("hours");
                String startHour = rs.getString("startHour");
                orderDetails.add(new OrderDetail(orderId, userId, rentalPersonId, price, hours, startHour));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderDetails;
    }


    @Override
    public boolean delete(int id) throws SQLException {
        int rowDelete = 0;
        Connection connection = SQLConnection.getConnection();
        CallableStatement callableStatement = connection.prepareCall("{CALL deleteOrderDetail(?)}");
        callableStatement.setInt(1, id);
        rowDelete = callableStatement.executeUpdate();
        return rowDelete !=0;
    }

    @Override
    public boolean update(OrderDetail orderDetail) throws SQLException {
        int rowUpdate = 0;
        Connection connection = SQLConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_ORDER_DETAILS);
        preparedStatement.setInt(1, orderDetail.getUserId());
        preparedStatement.setInt(2, orderDetail.getRentalPersonId());
        preparedStatement.setDouble(3, orderDetail.getPrice());
        preparedStatement.setFloat(4, orderDetail.getHours());
        preparedStatement.setString(5, orderDetail.getStartHour());
        preparedStatement.setInt(6, orderDetail.getOrderId());

        rowUpdate = preparedStatement.executeUpdate();
        return rowUpdate !=0;
    }
}
