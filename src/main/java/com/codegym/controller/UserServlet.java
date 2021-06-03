package com.codegym.controller;

import com.codegym.DAO.user.IUserDAO;
import com.codegym.DAO.user.UserDAO;
import com.codegym.model.User;
import com.codegym.service.IUserService;
import com.codegym.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {
    private IUserDAO userDAO = new UserDAO();
    private IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createNewForm(request, response);
                break;
            case "edit":
                showEditCustomerForm(request, response);
            default:
                showList(request, response);
                break;
        }
    }

    private void showEditCustomerForm(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {

    }

    private void createNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = userDAO.selectAll();
        request.setAttribute("user", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/registration.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                try {
                    createNewCustomer(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "edit" :
                try {
                    editCustomer(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;

        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String rank = request.getParameter("rank");
        User user = new User(userName,passWord,gender,phone,rank);
        userService.update(id, user);
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void createNewCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String rank = request.getParameter("rank");
        User user = new User(userName, passWord, gender, phone, rank);
        boolean isInserted = userService.create(user);
        if (!isInserted) {
            request.setAttribute("message", "Xảy ra lỗi khi tạo mới!");
        } else {
            request.setAttribute("message", "Tạo thành công!");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/registration.jsp");
        dispatcher.forward(request, response);
    }
}

