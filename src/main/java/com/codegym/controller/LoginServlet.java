package com.codegym.controller;

import com.codegym.model.User;
import com.codegym.service.IUserService;
import com.codegym.service.LoginService;
import com.codegym.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private final LoginService loginService1 = new LoginService();
    private final IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String action = req.getParameter("action");
//        if (action == null) {
//            action = "";
//        }
//        switch (action) {
//            case "login":
//                try {
//
//                } catch (SQLException throwables) {
//                    throwables.printStackTrace();
//                }
//                break;
//
//        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "login":
                    login(req, resp);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String userName = req.getParameter("userName");
        String passWord = req.getParameter("passWord");
        int checkUser = loginService1.loginService(userName, passWord);
        RequestDispatcher dispatcher;
        if (checkUser != -1) {
            User user = userService.findById(checkUser);
            if (userName.equals("admin")) {
                dispatcher = req.getRequestDispatcher("/accountManagement/homePageAdmin.jsp");
                dispatcher.forward(req, resp);
            }else {
                req.setAttribute("user",user);
                dispatcher = req.getRequestDispatcher("/accountManagement/homePageUser.jsp");
                dispatcher.forward(req, resp);
            }
        } else {
            dispatcher = req.getRequestDispatcher("/error-404.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
