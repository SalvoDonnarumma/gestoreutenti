package com.example.gestoreutenti;

import java.io.*;
import java.util.List;

import com.example.gestoreutenti.dao.UtenteDao;
import com.example.gestoreutenti.entity.Utente;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "AggiungiUtente ", value = "/AggiungiUtente")
public class AggiungiUtente extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UtenteDao utenteDao = new UtenteDao();
        //Ottieni parametri utente
        String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String email = request.getParameter("email");

        Utente utente = new Utente(nome, cognome, email);
        utenteDao.saveUser(utente);

        response.sendRedirect("OttieniUtenti");
    }

    public void destroy() {
    }
}