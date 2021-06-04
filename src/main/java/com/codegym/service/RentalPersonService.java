package com.codegym.service;

import com.codegym.DAO.rentalPerson.IRentalPersonDAO;
import com.codegym.DAO.rentalPerson.RentalPersonDAO;
import com.codegym.model.RentalPerson;

import java.sql.SQLException;
import java.util.List;

public class RentalPersonService implements IRentalPersonService{

    private IRentalPersonDAO rentalDAO = new RentalPersonDAO();

    @Override
    public List<RentalPerson> selectAll() {
        return rentalDAO.selectAll();
    }


    @Override
    public RentalPerson select(int id) {

        try {
            return rentalDAO.select(id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean create(RentalPerson rental) {
        try {
            return rentalDAO.create(rental);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(int id, RentalPerson rental) {
        try {
            return rentalDAO.update(id, rental);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        try {
            return rentalDAO.delete(id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
