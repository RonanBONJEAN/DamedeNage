package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Plats;

public interface IPlatsDao {

	public List<Plats> getAllPlats();
	
	public List<Plats> getPlatsByCategorie(String categorie);
	
	public List<Plats> getPlatsByName(String name);
	
	public Plats getPlatsById(int id);
	
	public void addPlats(Plats plat);
	
	public boolean deletePlats(Plats plat);
	
	public Plats upDatePlats(Plats plat);
	
}
