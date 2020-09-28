package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Vins;

public interface IVinsService {

	public List<Vins> getAllVins();
	
	public List<Vins> getVinsByType(String type);
	
	public List<Vins> getVinsByCru(String cru);
	
	public Vins getVinsById(int id);
	
	public boolean addVins(Vins vin);
	
	public boolean deleteVins(Vins vin);
	
	public boolean upDateVins(Vins vin);
	
	
}
