package com.codegym.DAO;

import java.sql.SQLException;
import java.util.List;

public interface IGeneralDAO<T> {
    boolean create(T t) throws SQLException;

    T select(int id) throws SQLException;

    List<T> selectAll();

    boolean delete(int id) throws SQLException;

    boolean update(int id,T t) throws SQLException;
}
