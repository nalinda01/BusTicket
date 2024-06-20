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



@WebServlet("/book")
public class BookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the bus ID from the request parameters
        int busId = Integer.parseInt(request.getParameter("busId"));

        // Use your DAO to fetch the bus details based on the ID
        BusDao busDao = new BusDao(DBConnection.getConnection()); // Assuming you have a valid DAO class
        Bus bus = busDao.getBusById(busId); // Implement this method in your DAO to get bus details by ID

        // Set the bus object in the request attribute
        request.setAttribute("bus", bus);

        // Forward the request to the booking page (e.g., "book.jsp")
        request.getRequestDispatcher("/book.jsp").forward(request, response);
    }
}
