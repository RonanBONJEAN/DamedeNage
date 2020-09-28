
package fr.adaming.rest;



import javax.ws.rs.core.MediaType;


import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.api.json.JSONConfiguration;

import fr.adaming.model.WeatherObservation;
import fr.adaming.model.WeatherObservationAdapter;

@Service("meteoService")
public class MeteoRestImpl implements IMeteoRest{

	public static final String uri="http://api.geonames.org/weatherIcaoJSON?username=NomanTraveler";
	
	@Override
	public WeatherObservation getMeteoIcao(String codeIcao) {
		//creer une config pour le client du ws rest
		ClientConfig config=new DefaultClientConfig();
		//autoriser la deserialisation des objets json en java pour jersey
		config.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);
		//creer un client de ws restful
		Client clientWS=Client.create(config);
		//construire l'url du ws
		//recup le bus qui va servir à envoyer la requete et recup le resultat
		WebResource service=clientWS.resource(uri);
		//envoyer la requete et recup le resultat
		
		//ClientResponse response=service.queryParam("ICAO", codeIcao).accept(MediaType.APPLICATION_JSON).get(ClientResponse.class);
		Object response=service.queryParam("ICAO", codeIcao).accept(MediaType.APPLICATION_JSON).get(Object.class);
		
		//traitement de la reponse string json en objet
		GsonBuilder builder=new GsonBuilder();
		builder.registerTypeAdapter(WeatherObservation.class, new WeatherObservationAdapter());
		
		
		Gson gson =builder.create();
		String json=response.toString();
		json=json.replaceAll("\\s+","");
		json=json.replaceAll("/","");
		json=json.replaceAll(":","");
		json=json.replaceAll("-","");
		
		System.out.println("json string"+json);
		
		try {
			return gson.fromJson(json, WeatherObservation.class);
		} catch (Exception e) { //dans le cas où la ville est appelée ville,villeaeroport!
			System.out.println("json string avant"+json);
			json=filtrer(json);
			System.out.println("json string sans la 12e virgule"+json);
			return gson.fromJson(json, WeatherObservation.class);
		}
		
	}
	
	public String filtrer(String json) {
		int i=0;
		for (int j = 0; j < json.length(); j++) {
			if(json.charAt(j)==',') {
				i++;
				if(i==13) {
					return json.substring(0,j)+json.substring(j+1);
				}
			}
		}
		return null;
	}

}
