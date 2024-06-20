package com.servlet;

import com.conn.DBConnection;
import com.dao.BusDao;
import com.entity.Bus;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BusInsertServlet")
public class BusInsertServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the form
        String departure = request.getParameter("departure");
        String arrival = request.getParameter("arrival");
        String type = request.getParameter("type");
        double time = Double.parseDouble(request.getParameter("time"));
        double price = Double.parseDouble(request.getParameter("price"));
        String route = request.getParameter("route");

        // Check if the price is negative
        if (price < 0) {
            // Set an error message in request attributes
            request.setAttribute("error", "Price cannot be negative.");
            // Forward to the same page to display the error message
            request.getRequestDispatcher("addbus.jsp").forward(request, response);
            return; // Exit the servlet to prevent further processing
        }

        // Create a new Bus object
        Bus newBus = new Bus();
        newBus.setDeparture(departure);
        newBus.setArrival(arrival);
        newBus.setType(type);
        newBus.setTime(time);
        newBus.setPrice(price);
        newBus.setRoute(route);

        // Use the BusDao to insert the newBus into the database
       
            Connection con = DBConnection. getConnection();
            BusDao busDao = new BusDao(con);
            busDao.addBus(newBus);
       
      

        // Redirect to a confirmation page or display a message
        response.sendRedirect("home.jsp"); // Replace "confirmation.jsp" with the actual confirmation page
    }
}
