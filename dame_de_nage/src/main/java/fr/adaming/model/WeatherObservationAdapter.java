package fr.adaming.model;

import java.io.IOException;
import java.util.Date;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

public class WeatherObservationAdapter extends TypeAdapter<WeatherObservation>{

	@Override //pas besoin
	public void write(JsonWriter out, WeatherObservation value) throws IOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public WeatherObservation read(JsonReader reader) throws IOException {
		WeatherObservation wo=new WeatherObservation();
		reader.beginObject();
		String fieldname=null;
		while(reader.hasNext()) {
			JsonToken token=reader.peek();
			if(token.equals(JsonToken.NAME)) {
				fieldname=reader.nextName();
				System.out.println(fieldname);
			}
			if("weatherObservation".equals(fieldname)) {
				token=reader.peek();
				wo=readWo(reader);
			}
		}
		reader.endObject();
		
		return wo;
	}
	
	public WeatherObservation readWo(JsonReader reader) throws IOException{

		WeatherObservation wo=new WeatherObservation();
		String fieldname =null;
		
		reader.beginObject();
		while(reader.hasNext()) {
			
			JsonToken token =reader.peek();

			if(token.equals(JsonToken.NAME)) {
				fieldname=reader.nextName();
			}

			if(fieldname.equals("elevation")||fieldname.equals("windDirection")||fieldname.equals("hectoPascAltimeter")) {
				token=reader.peek();
				reader.nextInt();
				
			}
			else if(fieldname.equals("lng")||fieldname.equals("lat")||fieldname.equals("seaLevelPressure")) {
				token=reader.peek();
				;reader.nextDouble();
			}
			else if("datetime".equals(fieldname)) {
				token=reader.peek();
				reader.nextString();
				wo.setObservationTime(new Date());
			}
			else if("temperature".equals(fieldname)) {
				token=reader.peek();
				wo.setTemperature(reader.nextString());
			}
			else if("humidity".equals(fieldname)) {
				token=reader.peek();
				wo.setHumidity(reader.nextInt());
			}
			else if("stationName".equals(fieldname)) {
				token=reader.peek();
				wo.setStationName(reader.nextString());
			}
			else if("windSpeed".equals(fieldname)) {
				token=reader.peek();
				wo.setWindSpeed(reader.nextString());
			}else if("clouds".equals(fieldname)) {
				token=reader.peek();
				wo.setClouds(reader.nextString());
			}else {
				token=reader.peek();
				reader.nextString();
			}
			
		}
		reader.endObject();
		
		return wo;
		
	}
	
	
	

}
