package com.example.gestoreutenti;

import java.io.*;
import java.util.List;

import com.example.gestoreutenti.dao.UtenteDao;
import com.example.gestoreutenti.entity.Utente;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "OttieniUtenti", value = "/OttieniUtenti")
public class OttieniUtenti extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UtenteDao utenteDao = new UtenteDao();
        List<Utente> users = utenteDao.getUsers();
        request.setAttribute("users_list", users);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view_users.jsp");
        dispatcher.forward(request, response);
    }

    public void destroy() {
    }
}