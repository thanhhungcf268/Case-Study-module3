package com.codegym.controller;

import com.codegym.model.RentalPerson;
import com.codegym.service.IRentalPersonService;
import com.codegym.service.RentalPersonService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "RentalPersonServlet", value = "/employee")
public class RentalPersonServlet extends HttpServlet {
    private IRentalPersonService rentalPersonService = new RentalPersonService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {action = "";}

        switch (action){
            case "viewEmployee":
                viewRental(request, response);
                break;
            case "createEmployee":
                showCreateRentalForm(request, response);
                break;
            case "editEmployee":
                showEditRentalForm(request, response);
                break;
            case "deleteEmployee":
                showDeleteRentalForm(request, response);
                break;
            case "showListRental" :
                showListRentals(request, response);
                break;
            case "viewEmployees":
                viewRentals(request,response);
                break;

        }
    }

    private void showListRental(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<RentalPerson> rentals = this.rentalPersonService.selectAll();
        request.setAttribute("rentals", rentals);
        request.setAttribute("userName", UserServlet.checkUser);
        request.setAttribute("passWord", UserServlet.checkUserPassWord);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/rentalPerson/list.jsp");
        dispatcher.forward(request, response);
    }
    private void showListRentals(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<RentalPerson> rentals = this.rentalPersonService.selectAll();
        request.setAttribute("rentals", rentals);
        request.setAttribute("userName", UserServlet.checkUser);
        request.setAttribute("passWord", UserServlet.checkUserPassWord);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/rentalPerson/list.jsp");
        dispatcher.forward(request, response);
    }


    private void viewRental(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeId"));
        RentalPerson rental = this.rentalPersonService.select(id);

        RequestDispatcher dispatcher;
        String a =  UserServlet.checkUser;
        request.setAttribute("userName", UserServlet.checkUser);
        request.setAttribute("passWord", UserServlet.checkUserPassWord);
        if (rental == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("rental", rental);
            dispatcher = request.getRequestDispatcher("/rentalPerson/view.jsp");
        }
        dispatcher.forward(request, response);
    }
    private void viewRentals(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeId"));
        RentalPerson rental = this.rentalPersonService.select(id);
        RequestDispatcher dispatcher;

        if (rental == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("rental", rental);
            dispatcher = request.getRequestDispatcher("/orderUser/view.jsp");
        }
        dispatcher.forward(request, response);
    }


    private void showCreateRentalForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/rentalPerson/create.jsp");
        dispatcher.forward(request, response);
    }


    private void showEditRentalForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeId"));
        RentalPerson rental = this.rentalPersonService.select(id);

        RequestDispatcher dispatcher;
        if (rental == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("rental", rental);
            dispatcher = request.getRequestDispatcher("/rentalPerson/edit.jsp");
        }
        dispatcher.forward(request, response);
    }


    private void showDeleteRentalForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeId"));
        RentalPerson rental = this.rentalPersonService.select(id);

        RequestDispatcher dispatcher;
        if (rental == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("rental", rental);
            dispatcher = request.getRequestDispatcher("/rentalPerson/delete.jsp");
        }

        dispatcher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){ action = "";}

        switch (action){
            case "createEmployee":
                createNewRental(request, response);
                break;
            case "editEmployee":
                editRental(request, response);
                break;
            case "deleteEmployee":
                deleteRental(request, response);
                break;
            default:
                showListRental(request, response);
                break;
        }
    }




    private void createNewRental(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        boolean status = Boolean.parseBoolean(request.getParameter("status"));
        String phone = request.getParameter("phone");
        String urlImage = request.getParameter("urlImage");

        boolean isInserted = this.rentalPersonService.create(new RentalPerson(name, age, gender, status, phone, urlImage));
        if (!isInserted){
            request.setAttribute("message", "Error occurs when adding new employee!");
        } else {
            request.setAttribute("message", "Added new employee!");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/rentalPerson/create.jsp");
        dispatcher.forward(request, response);

    }


    private void editRental(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeId"));

        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        boolean status = Boolean.parseBoolean(request.getParameter("status"));
        String phone = request.getParameter("phone");
        String urlImage = request.getParameter("urlImage");
        RentalPerson rental = this.rentalPersonService.select(id);
        RequestDispatcher dispatcher;

        if (rental == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            rental.setName(name);
            rental.setAge(age);
            rental.setGender(gender);
            rental.setStatus(status);
            rental.setPhone(phone);
            rental.setUrlImage(urlImage);
            boolean isUpdated = this.rentalPersonService.update(id, rental);

            request.setAttribute("rental", rental);
            if (isUpdated == false){
                request.setAttribute("message", "Errors occurs when editing this employee!");
            } else {
                request.setAttribute("message", "Updated successfully!");
            }
            dispatcher = request.getRequestDispatcher("/rentalPerson/edit.jsp");
        }
        dispatcher.forward(request, response);

    }


    private void deleteRental(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("employeeId"));
        RentalPerson rental = this.rentalPersonService.select(id);

        RequestDispatcher dispatcher;
        if (rental == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            this.rentalPersonService.delete(id);
            response.sendRedirect("/employee");
        }
    }
}
