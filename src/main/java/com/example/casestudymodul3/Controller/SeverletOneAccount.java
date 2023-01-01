package com.example.casestudymodul3.Controller;

import com.example.casestudymodul3.Service.ServiceAccount;
import com.example.casestudymodul3.model.Account;
import jdk.internal.net.http.frame.Http2Frame;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = "/ShowOne")
public class SeverletOneAccount extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Account account= ServiceAccount.ShowOneAccount(id);
        Account account1= ServiceAccount.ShowStatus(id);

        req.setAttribute("T",account);
        req.setAttribute("B",account1);
        RequestDispatcher requestDispatcher= req.getRequestDispatcher("/bootstrap/feed/demo.foxthemes.net/instellohtml/Form-ShowOneAccount.jsp");
        requestDispatcher.forward(req,resp);
    }


}
