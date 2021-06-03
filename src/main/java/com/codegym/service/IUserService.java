package com.codegym.service;

import com.codegym.model.User;

import java.util.List;

public interface IUserService extends IGeneralService<User> {
    List<User> findAllCustomerByAddress(String address);

    List<User> sortAllCustomer();
}
