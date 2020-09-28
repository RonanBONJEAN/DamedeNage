package fr.adaming.model;

import java.util.Date;

public class WeatherObservation {
	
	private int elevation;
	private double lng;
	private String observation;
	private String icao;
	private String clouds;
	private String dewPoint;
	private String cloudsCode;
	private Date observationTime ;
	private String countryCode;
	private String temperature;
	private int humidity;
	private String stationName;
	private String weatherCondition;
	private int windDirection;
	private int hectoPascAltimeter;
	private String windSpeed;
	private double lat;
	//constructeur
	public WeatherObservation(int elevation, double lng, String observation, String icaoCode, String clouds,
			String dewPoint, String cloudsCode, Date observationTime, String countryCode, String temperature,
			int humidity, String stationName, String weatherCondition, int windDirection, int hectoPascAltimeter,
			String windSpeed, double lat) {
		super();
		this.elevation = elevation;
		this.lng = lng;
		this.observation = observation;
		this.icao = icaoCode;
		this.clouds = clouds;
		this.dewPoint = dewPoint;
		this.cloudsCode = cloudsCode;
		this.observationTime = observationTime;
		this.countryCode = countryCode;
		this.temperature = temperature;
		this.humidity = humidity;
		this.stationName = stationName;
		this.weatherCondition = weatherCondition;
		this.windDirection = windDirection;
		this.hectoPascAltimeter = hectoPascAltimeter;
		this.windSpeed = windSpeed;
		this.lat = lat;
	}
	public WeatherObservation() {
		super();
	}
	public int getElevation() {
		return elevation;
	}
	public void setElevation(int elevation) {
		this.elevation = elevation;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public String getObservation() {
		return observation;
	}
	public void setObservation(String observation) {
		this.observation = observation;
	}

	public String getClouds() {
		return clouds;
	}
	public void setClouds(String clouds) {
		this.clouds = clouds;
	}
	public String getDewPoint() {
		return dewPoint;
	}
	public void setDewPoint(String dewPoint) {
		this.dewPoint = dewPoint;
	}
	public String getCloudsCode() {
		return cloudsCode;
	}
	public void setCloudsCode(String cloudsCode) {
		this.cloudsCode = cloudsCode;
	}
	public Date getObservationTime() {
		return observationTime;
	}
	public void setObservationTime(Date observationTime) {
		this.observationTime = observationTime;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getTemperature() {
		return temperature;
	}
	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}
	public int getHumidity() {
		return humidity;
	}
	public void setHumidity(int humidity) {
		this.humidity = humidity;
	}
	public String getStationName() {
		return stationName;
	}
	public void setStationName(String stationName) {
		this.stationName = stationName;
	}
	public String getWeatherCondition() {
		return weatherCondition;
	}
	public void setWeatherCondition(String weatherCondition) {
		this.weatherCondition = weatherCondition;
	}
	public int getWindDirection() {
		return windDirection;
	}
	public void setWindDirection(int windDirection) {
		this.windDirection = windDirection;
	}
	public int getHectoPascAltimeter() {
		return hectoPascAltimeter;
	}
	public void setHectoPascAltimeter(int hectoPascAltimeter) {
		this.hectoPascAltimeter = hectoPascAltimeter;
	}
	public String getWindSpeed() {
		return windSpeed;
	}
	public void setWindSpeed(String windSpeed) {
		this.windSpeed = windSpeed;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	
	
	public String getIcao() {
		return icao;
	}
	public void setIcao(String icao) {
		this.icao = icao;
	}
	@Override
	public String toString() {
		return "WeatherObservation [elevation=" + elevation + ", lng=" + lng + ", observation=" + observation
				+ ", icaoCode=" + icao + ", clouds=" + clouds + ", dewPoint=" + dewPoint + ", cloudsCode="
				+ cloudsCode + ", observationTime=" + observationTime + ", countryCode=" + countryCode
				+ ", temperature=" + temperature + ", humidity=" + humidity + ", stationName=" + stationName
				+ ", weatherCondition=" + weatherCondition + ", windDirection=" + windDirection
				+ ", hectoPascAltimeter=" + hectoPascAltimeter + ", windSpeed=" + windSpeed + ", lat=" + lat + "]";
	}
	
	
	
	
	
	
	
	
	
	

}
