package com.codegym.DAO.order;

import com.codegym.DAO.order.IOrderDAO;
import com.codegym.model.OrderDetail;

import java.sql.SQLException;
import java.util.List;

public class OrderDAO implements IOrderDAO {
    @Override
    public boolean insert(OrderDetail orderDetail) throws SQLException {
        return false;
    }

    @Override
    public OrderDetail select(int id) {
        return null;
    }

    @Override
    public List<OrderDetail> selectAll() {
        return null;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean update(OrderDetail orderDetail) throws SQLException {
        return false;
    }
}
