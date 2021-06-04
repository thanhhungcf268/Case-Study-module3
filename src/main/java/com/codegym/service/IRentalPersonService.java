package com.codegym.service;

import com.codegym.model.RentalPerson;

import java.util.List;

public interface IRentalPersonService {

    List<RentalPerson> selectAll();

    RentalPerson select(int id);

    boolean insert(RentalPerson rental);

    boolean update(int id, RentalPerson rental);

    boolean delete(int id);
}
