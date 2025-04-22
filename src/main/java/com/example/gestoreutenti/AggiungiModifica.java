package com.example.gestoreutenti;

import java.io.*;

import com.example.gestoreutenti.dao.UtenteDao;
import com.example.gestoreutenti.entity.Utente;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "AggiungiModifica", value = "/AggiungiModifica")
public class AggiungiModifica extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        UtenteDao utenteDao = new UtenteDao();
        String idParam = request.getParameter("id");
        String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String email = request.getParameter("email");

        Utente user = new Utente(nome, cognome, email);
        if(idParam!=null && !idParam.equals("")) {
            Integer id = Integer.parseInt(idParam);
            user.setId(id);
            utenteDao.updateUser(user);
        } else
            utenteDao.saveUser(user);

        response.sendRedirect("OttieniUtenti");
    }

    public void destroy() {
    }
}