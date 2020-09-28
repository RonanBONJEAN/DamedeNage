
package fr.adaming.serviceTest;

import java.io.IOException;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fr.adaming.rest.IMeteoRest;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/application-context.xml" })
public class MeteoRestTest {
	
	@Autowired
	private IMeteoRest mrest;
	
	@Ignore
	@Test
	public void getNantes() throws JsonParseException, JsonMappingException, IOException {

		
//		System.out.println(mrest.getMeteoIcao("LFRS"));
		System.out.println(mrest.getMeteoIcao("PHNL"));
		
		
//		GsonBuilder builder=new GsonBuilder();
//		builder.registerTypeAdapter(WeatherObservation.class, new WeatherObservationAdapter());
//		Gson gson =builder.create();
//		String json=mrest.getMeteoIcao("LFRS");
//		json=json.replaceAll("\\s+","");
//		json=json.replaceAll("/","");
//		json=json.replaceAll(":","");
//		json=json.replaceAll("-","");
//		System.out.println(json);
//		WeatherObservation wo=gson.fromJson(json, WeatherObservation.class);
//		System.out.println("meuh"+wo);
		
	}

}
