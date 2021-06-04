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
                String a = "registration.jsp";
                createNewForm(request, response,a);
                break;
            case "edit":
                try {
                    showEditUserForm(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "list" :
                String b = "list.jsp";
                createNewForm(request,response,b);
                break;
        }
    }

    private void showEditUserForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("userId"));
        User user = userService.findById(id);
        request.setAttribute("user",user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/edit.jsp");
        dispatcher.forward(request, response);
    }

//    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<User> users = userDAO.selectAll();
//        request.setAttribute("user", users);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/");
//        dispatcher.forward(request, response);
//    }

    private void createNewForm(HttpServletRequest request, HttpServletResponse response,String a) throws ServletException, IOException {
        List<User> users = userDAO.selectAll();
        request.setAttribute("user", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/"+a);
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
                    editUser(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;

        }
    }

    private void editUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("userId"));
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        int rank = Integer.parseInt(request.getParameter("level"));
        User user = new User(userName,passWord,gender,phone,rank);
        boolean  isUpdate =userService.update(id, user);
        if (!isUpdate) {
            request.setAttribute("message", "Error!");
        } else {
            request.setAttribute("message", "Success!");
        }
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void createNewCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        int rank = Integer.parseInt(request.getParameter("rank"));
        User user = new User(userName, passWord, gender, phone, rank);
        boolean isUpdate = userService.create(user);
        if (!isUpdate) {
            request.setAttribute("message", "Error!");
        } else {
            request.setAttribute("message", "Success!");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/registration.jsp");
        dispatcher.forward(request, response);
    }
}

