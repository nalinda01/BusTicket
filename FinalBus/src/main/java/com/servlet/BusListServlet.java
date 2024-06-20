package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.DBConnection;
import com.dao.BusDao;
import com.entity.Bus;

// Import statements

@WebServlet("/bus-list")
public class BusListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Use your DAO to fetch all bus details
        BusDao busDao = new BusDao(DBConnection.getConnection());
        List<Bus> buses = busDao.getAllBuses();

        // Set the list of bus objects in the request attribute
        request.setAttribute("buses", buses);

        // Forward the request to the busList.jsp page
        request.getRequestDispatcher("/buslist.jsp").forward(request, response);
    }
}
