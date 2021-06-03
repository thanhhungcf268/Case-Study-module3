package com.codegym.DAO.rentalPerson;

import com.codegym.DAO.rentalPerson.IRentalPersonDAO;
import com.codegym.model.RentalPerson;

import java.sql.SQLException;
import java.util.List;

public class RentalPersonDAO implements IRentalPersonDAO {
    @Override
    public boolean insert(RentalPerson rentalPerson) throws SQLException {
        return false;
    }

    @Override
    public RentalPerson select(int id) {
        return null;
    }

    @Override
    public List<RentalPerson> selectAll() {
        return null;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean update(RentalPerson rentalPerson) throws SQLException {
        return false;
    }
}
