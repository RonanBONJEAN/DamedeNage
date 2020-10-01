package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Boissons;

public interface IBoissonsService {

	public List<Boissons> getAllBoissons();
	
	public List<Boissons> getBoissonsByCategorie(String cat);
	
	public List<Boissons> getBoissonsByName(String nom);
	
	public Boissons getBoissonsById(int id);
	
	public boolean addBoissons(Boissons Boisson);
	
	public boolean deleteBoissons(Boissons Boisson);
	
	public boolean upDateBoissons(Boissons Boisson);
	
	
}
