package com.codegym.DAO;

import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IGeneralDAO<T> {
    boolean insert(T t) throws SQLException;

    T select(int id);

    List<T> selectAll();

    boolean delete(int id) throws SQLException;

    boolean update(T t) throws SQLException;
}
