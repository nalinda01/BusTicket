package com.dao;

import com.entity.Bus;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BusDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;


	public BusDao(Connection con) {
		super();
		this.con = con;
	}

    // Retrieve all bus records from the database
    public List<Bus> getAllBuses() {
        List<Bus> buses = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM bus_table");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String departure = resultSet.getString("departure");
                String arrival = resultSet.getString("arrival");
                String type = resultSet.getString("type");
                Double time = resultSet.getDouble("time");
                Double price = resultSet.getDouble("price");
                String route = resultSet.getString("route");

                Bus bus = new Bus(id, departure, arrival, type, time, price, route);
                buses.add(bus);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return buses;
    }
    public Bus getBusById(int busId) {
        Bus bus = null;
        try {
            PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM bus_table WHERE id = ?");
            preparedStatement.setInt(1, busId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                String departure = resultSet.getString("departure");
                String arrival = resultSet.getString("arrival");
                String type = resultSet.getString("type");
                Double time = resultSet.getDouble("time");
                Double price = resultSet.getDouble("price");
                String route = resultSet.getString("route");

                bus = new Bus(id, departure, arrival, type, time, price, route);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bus;
    }
    
    public Bus getSingleBus(int id) {
		 Bus row = null;
	        try {
	            query = "select * from Bus where id=? ";

	            pst = this.con.prepareStatement(query);
	            pst.setInt(1, id);
	            ResultSet rs = pst.executeQuery();

	            while (rs.next()) {
	            	row = new Bus();
	            	 row.setId(rs.getInt("id"));
	                 row.setDeparture(rs.getString("departure"));
	                 row.setArrival(rs.getString("arrival"));
	                 row.setType(rs.getString("type"));
	                 row.setTime(rs.getDouble("time"));
	                 row.setPrice(rs.getDouble("price"));
	                 row.setRoute(rs.getString("route"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }

	        return row;
	    }

    // Insert a new bus record into the database
    public void addBus(Bus bus) {
        try {
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO bus_table (departure, arrival, type, time, price, route) VALUES (?, ?, ?, ?, ?, ?)");
            preparedStatement.setString(1, bus.getDeparture());
            preparedStatement.setString(2, bus.getArrival());
            preparedStatement.setString(3, bus.getType());
            preparedStatement.setDouble(4, bus.getTime());
            preparedStatement.setDouble(5, bus.getPrice());
            preparedStatement.setString(6, bus.getRoute());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
