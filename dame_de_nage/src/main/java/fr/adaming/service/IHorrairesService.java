package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Horraires;

public interface IHorrairesService {

	public List<Horraires> getAllHorraires();
	
	public Horraires getHorrairesById(int id);
	
	public Horraires getHorrairesBySaison(String Saison);
	
	public boolean upDateHorraires(Horraires horraires);
	
	
}
