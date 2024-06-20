package com.entity;

public class Bus {
    private int id;
    private String departure;
    private String arrival;
    private String type;
    private Double time;
    private Double price;
    private String route;

    public Bus() {
        // Default constructor
    }

    public Bus(int id, String departure, String arrival, String type, Double time, Double price, String route) {
        super();
        this.id = id;
        this.departure = departure;
        this.arrival = arrival;
        this.type = type;
        this.time = time;
        this.price = price;
        this.route = route;
    }

    // Getters and setters for each class member

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getArrival() {
        return arrival;
    }

    public void setArrival(String arrival) {
        this.arrival = arrival;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Double getTime() {
        return time;
    }

    public void setTime(Double time) {
        this.time = time;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    @Override
    public String toString() {
        return "Bus [id=" + id + ", departure=" + departure + ", arrival=" + arrival + ", type=" + type + ", time=" + time
                + ", price=" + price + ", route=" + route + "]";
    }
}
