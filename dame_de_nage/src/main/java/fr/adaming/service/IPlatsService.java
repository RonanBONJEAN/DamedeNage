package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Plats;

public interface IPlatsService {

	public List<Plats> getAllPlats();
	
	public List<Plats> getPlatsByCategorie(String categorie);
	
	public List<Plats> getPlatsByName(String name);
	
	public Plats getPlatsById(int id);
	
	public boolean addPlats(Plats plat);
	
	public boolean deletePlats(Plats plat);
	
	public boolean upDatePlats(Plats plat);
	
	
}
