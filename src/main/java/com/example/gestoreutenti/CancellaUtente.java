package com.example.gestoreutenti;

import java.io.*;
import java.util.List;

import com.example.gestoreutenti.dao.UtenteDao;
import com.example.gestoreutenti.entity.Utente;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "CancellaUtente", value = "/CancellaUtente")
public class CancellaUtente extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UtenteDao utenteDao = new UtenteDao();
        Integer id = Integer.parseInt(request.getParameter("id"));

        Utente daCancellare = new Utente("","","");
            daCancellare.setId(id);
        utenteDao.deleteUser(daCancellare);

        response.sendRedirect("OttieniUtenti");
    }

    public void destroy() {
    }
}