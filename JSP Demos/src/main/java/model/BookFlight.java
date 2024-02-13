package model;

public class BookFlight {
	private int bookingId;
	private String bookingPNR;
	private String flightName;
	private String sourceAirport;
	private String destAirport;
	private String userName;
	private double flightprice;
	
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public String getBookingPNR() {
		return bookingPNR;
	}
	public void setBookingPNR(String bookingPNR) {
		this.bookingPNR = bookingPNR;
	}
	public String getFlightName() {
		return flightName;
	}
	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}
	public String getSourceAirport() {
		return sourceAirport;
	}
	public void setSourceAirport(String sourceAirport) {
		this.sourceAirport = sourceAirport;
	}
	public String getDestAirport() {
		return destAirport;
	}
	public void setDestAirport(String destAirport) {
		this.destAirport = destAirport;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public double getFlightprice() {
		return flightprice;
	}
	public void setFlightprice(double flightprice) {
		this.flightprice = flightprice;
	}
	
	

}
