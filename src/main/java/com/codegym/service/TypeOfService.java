package com.codegym.service;

import com.codegym.DAO.typeService.type.ITypeServiceDAO;
import com.codegym.DAO.typeService.type.TypeServiceDAO;
import com.codegym.model.TypeService;

import java.sql.SQLException;
import java.util.List;

public class TypeOfService implements ITypeOfService {
    ITypeServiceDAO serviceDAO = new TypeServiceDAO();
    @Override
    public List findAll() {
        return serviceDAO.selectAll();
    }

    @Override
    public TypeService findById(int id) throws SQLException {
        return serviceDAO.select(id);
    }

    @Override
    public boolean create(TypeService typeService) throws SQLException {
        return serviceDAO.create(typeService);
    }

    @Override
    public boolean update(int id, TypeService typeService) throws SQLException {
        return serviceDAO.update(id,typeService);
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return serviceDAO.delete(id);
    }

}
