package com.codegym.DAO.rentalPerson;

import com.codegym.DAO.SQLConnection;
import com.codegym.DAO.rentalPerson.IRentalPersonDAO;
import com.codegym.model.RentalPerson;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RentalPersonDAO implements IRentalPersonDAO {


    public static final String SELECT_ALL_RENTAL_PEOPLE = "select * from usermanager.personrental";
    public static final String SELECT_RENTAL_PERSON_BY_ID = "select * from usermanager.personrental where personId = ?";
    public static final String INSERT_RENTAL_PERSON = "insert into usermanager.personrental(name, age, gender, status, phone, urlImg) values (?,?,?,?,?,?)";
    public static final String UPDATE_RENTAL_PERSON_BY_ID = "update usermanager.personrental t set t.name = ?, t.age = ?, t.gender = ?, t.status = ?, t.phone = ?, t.urlImg = ? where t.personId = ?";

    @Override
    public List<RentalPerson> selectAll() {
        List<RentalPerson> rentals = new ArrayList<>();
        Connection connection = SQLConnection.getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_RENTAL_PEOPLE);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                int id = rs.getInt("personId");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String gender = rs.getString("gender");
                boolean status = rs.getBoolean("status");
                String phone = rs.getString("phone");
                String urlImage = rs.getString("urlImg");

                rentals.add(new RentalPerson(id, name, age, gender, status, phone, urlImage));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rentals;
    }

    @Override
    public RentalPerson select(int selectedId) {
        RentalPerson rental = null;
        Connection connection = SQLConnection.getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_RENTAL_PERSON_BY_ID);
            preparedStatement.setInt(1, selectedId);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                int id = rs.getInt("personId");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String gender = rs.getString("gender");
                boolean status = rs.getBoolean("status");
                String phone = rs.getString("phone");
                String urlImage = rs.getString("urlImg");
                rental = new RentalPerson(id, name, age, gender, status, phone, urlImage);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rental;
    }

    @Override
    public boolean create(RentalPerson rentalPerson) throws SQLException {
        int insertedRow = 0;
        Connection connection = SQLConnection.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_RENTAL_PERSON);
        preparedStatement.setString(1, rentalPerson.getName());
        preparedStatement.setInt(2, rentalPerson.getAge());
        preparedStatement.setString(3, rentalPerson.getGender());
        preparedStatement.setBoolean(4, rentalPerson.isStatus());
        preparedStatement.setString(5, rentalPerson.getPhone());
        preparedStatement.setString(6, rentalPerson.getUrlImage());

        insertedRow = preparedStatement.executeUpdate();
        return insertedRow != 0;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        int deletedRow = 0;
        Connection connection = SQLConnection.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement("delete from personrental where personId = ?");
        preparedStatement.setInt(1, id);

        deletedRow = preparedStatement.executeUpdate();

        return deletedRow != 0;
    }

    @Override
    public boolean update(int id, RentalPerson rentalPerson) throws SQLException {
        int updatedRow = 0;
        Connection connection = SQLConnection.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_RENTAL_PERSON_BY_ID);
        preparedStatement.setString(1, rentalPerson.getName());
        preparedStatement.setInt(2, rentalPerson.getAge());
        preparedStatement.setString(3, rentalPerson.getGender());
        preparedStatement.setBoolean(4, rentalPerson.isStatus());
        preparedStatement.setString(5, rentalPerson.getPhone());
        preparedStatement.setString(6, rentalPerson.getUrlImage());
        preparedStatement.setInt(7, rentalPerson.getId());

        updatedRow = preparedStatement.executeUpdate();

        return updatedRow != 0;
    }
}
