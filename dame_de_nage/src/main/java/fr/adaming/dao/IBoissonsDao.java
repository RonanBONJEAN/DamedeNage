package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Boissons;

public interface IBoissonsDao {

	public List<Boissons> getAllBoissons();
	
	public List<Boissons> getBoissonsByCategorie(String cat);
	
	public List<Boissons> getBoissonsByName(String nom);
	
	public Boissons getBoissonsById(int id);
	
	public void addBoissons(Boissons Boisson);
	
	public boolean deleteBoissons(Boissons Boisson);
	
	public Boissons upDateBoissons(Boissons Boisson);
	
}
