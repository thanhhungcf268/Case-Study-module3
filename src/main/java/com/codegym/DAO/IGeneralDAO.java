package com.codegym.DAO;

import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IGeneralDAO<T> {
    boolean insert(T t) throws SQLException;

    T select(int id);

    List<T> selectAll();

    boolean delete(int id) throws SQLException;

<<<<<<< HEAD
    boolean update(int id,T t) throws SQLException;
=======
    boolean update(int id, T t) throws SQLException;
>>>>>>> a3732bb3535155e84cbe02c2ba2cd7e6d1a16508
}
