package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.DBConnection;

@WebServlet("/CheckDatabaseConnectionServlet")
public class CheckDatabaseConnectionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check the database connection
        Connection connection = DBConnection.getConnection();
        boolean isDatabaseConnected = (connection != null);

        // Store the result in a request attribute
        request.setAttribute("isDatabaseConnected", isDatabaseConnected);

        // Forward to a JSP page for displaying the result
        request.getRequestDispatcher("database-connection-check.jsp").forward(request, response);
    }
}
