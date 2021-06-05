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
    private final IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                String a = "registration.jsp";
                createNewForm(request, response, a);
                break;
            case "edit":
                try {
                    showEditUserForm(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "list":
                String b = "list.jsp";
                createNewForm(request, response, b);
                break;
            case "delete":
                try {
                    deleteNewFrom(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            default:
                b = "list.jsp";
                createNewForm(request, response, b);
                break;
        }
    }

    private void deleteNewFrom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("userId"));
        userService.delete(id);
        response.sendRedirect("/users");
    }

    private void showEditUserForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("userId"));
        User user = userService.findById(id);
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        request.setAttribute("userName", userName);
        request.setAttribute("passWord", passWord);
        request.setAttribute("user",user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void createNewForm(HttpServletRequest request, HttpServletResponse response, String a) throws ServletException, IOException {
        List<User> users = userService.findAll();
        request.setAttribute("user", users);
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        request.setAttribute("userName", userName);
        request.setAttribute("passWord", passWord);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/accountManagement/" + a);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                try {
                    createNewCustomer(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "edit":
                try {
                    editUser(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
//            default:
//                showlistAccount(request,response);
//                break;
        }
    }

    private void showlistAccount(HttpServletRequest request, HttpServletResponse response) {

    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {

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
        String userName1 = request.getParameter("userName");
        String passWord1 = request.getParameter("passWord");
        request.setAttribute("userName", userName1);
        request.setAttribute("passWord", passWord1);
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

