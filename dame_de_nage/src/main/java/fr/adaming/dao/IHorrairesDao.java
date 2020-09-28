package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Horraires;

public interface IHorrairesDao {

	public List<Horraires> getAllHorraires();
	
	public Horraires getHorrairesById(int id);
	
	public Horraires getHorrairesBySaison(String Saison);
	
	public Horraires upDateHorraires(Horraires horraires);
	
}
