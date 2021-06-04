package com.codegym.DAO.typeService;

import java.sql.SQLException;
import java.util.List;

public class TypeService implements ITypeService{
    @Override
    public boolean create(TypeService typeService) throws SQLException {
        return false;
    }

    @Override
    public TypeService select(int id) throws SQLException {
        return null;
    }

    @Override
    public List<TypeService> selectAll() {
        return null;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean update(int id, TypeService typeService) throws SQLException {
        return false;
    }
}
