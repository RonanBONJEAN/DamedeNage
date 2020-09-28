
package fr.adaming.rest;


import fr.adaming.model.WeatherObservation;

public interface IMeteoRest {
	
	public WeatherObservation getMeteoIcao(String codeIcao);
	

}
