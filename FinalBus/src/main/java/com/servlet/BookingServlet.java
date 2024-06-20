package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.DBConnection;
import com.dao.BusDao;
import com.entity.Bus;

@WebServlet("/book-d")
public class BookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the bus ID from the request parameters
        int busId = Integer.parseInt(request.getParameter("busId"));

        // Use your DAO to fetch the bus details based on the ID
        BusDao busDao = new BusDao(DBConnection.getConnection());
        Bus bus = busDao.getSingleBus(busId);

        // Set the bus object in the request attribute
        request.setAttribute("bus", bus);

        // Forward the request to the book.jsp page or any other booking confirmation page
        request.getRequestDispatcher("/book.jsp").forward(request, response);
    }
}
 