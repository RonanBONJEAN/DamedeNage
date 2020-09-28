package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Vins;

public interface IVinsDao {

	public List<Vins> getAllVins();
	
	public List<Vins> getVinsByType(String type);
	
	public List<Vins> getVinsByCru(String Cru);
	
	public Vins getVinsById(int id);
	
	public void addVins(Vins vin);
	
	public boolean deleteVins(Vins vin);
	
	public Vins upDateVins(Vins vin);
	
}
