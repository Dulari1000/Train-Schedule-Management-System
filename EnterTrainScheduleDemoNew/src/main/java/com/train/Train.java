package com.train;

public class Train {

	
	private String  tid;
    private String tname;
    private String date;
    private String time;
    private String start;
    private String end;
    private String seats;
    
    
    
    public Train(String tid, String tname, String date , String time, String start, String end, String seats) {
    	
	this.tid= tid;
	this.tname = tname;
	this.date = date;
	this.time = time;
	this.start = start;
	this.end = end;
	this.seats = seats;
	
	
    }

    public String gettid() {
        return tid;
    }

    public String gettname() {
        return tname;
    }

    public String getdate() {
        return date;
    }

    public String gettime() {
        return time;
    }

    public String getstart() {
        return start;
    }

    public String getend() {
        return end;
    }    
    
    
    public String getseats() {
        return  seats;
    }    
    
	
	
	
	
}