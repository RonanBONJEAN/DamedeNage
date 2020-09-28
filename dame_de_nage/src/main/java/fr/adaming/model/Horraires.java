package fr.adaming.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "horraires")
public class Horraires implements Serializable {

	// Declaration des attributs
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_h")
	private int id;
	private String ouvertureMidi;
	private String ouvertureSoir;
	private String fermetureMidi;
	private String fermetureSoir;
	private String fermeture;
	private String jourFerme;
	private String saison;

	// Declaration du constructeur
	public Horraires() {
		super();
	}


	public Horraires(int id) {
		super();
		this.id = id;
	}

	public Horraires(int id, String ouvertureMidi, String ouvertureSoir, String fermetureMidi,
			String fermetureSoir, String fermeture, String jourFerme, String saison) {
		super();
		this.id = id;
		this.ouvertureMidi = ouvertureMidi;
		this.ouvertureSoir = ouvertureSoir;
		this.fermetureMidi = fermetureMidi;
		this.fermetureSoir = fermetureSoir;
		this.fermeture = fermeture;
		this.jourFerme = jourFerme;
		this.saison=saison;
	}


//Declaration des getters et des setters

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getOuvertureMidi() {
		return ouvertureMidi;
	}


	public void setOuvertureMidi(String ouvertureMidi) {
		this.ouvertureMidi = ouvertureMidi;
	}


	public String getOuvertureSoir() {
		return ouvertureSoir;
	}


	public void setOuvertureSoir(String ouvertureSoir) {
		this.ouvertureSoir = ouvertureSoir;
	}


	public String getFermetureMidi() {
		return fermetureMidi;
	}


	public void setFermetureMidi(String fermetureMidi) {
		this.fermetureMidi = fermetureMidi;
	}


	public String getFermetureSoir() {
		return fermetureSoir;
	}


	public void setFermetureSoir(String fermetureSoir) {
		this.fermetureSoir = fermetureSoir;
	}


	public String getFermeture() {
		return fermeture;
	}


	public void setFermeture(String fermeture) {
		this.fermeture = fermeture;
	}


	public String getJourFerme() {
		return jourFerme;
	}


	public void setJourFerme(String jourFerme) {
		this.jourFerme = jourFerme;
	}
	
	public String getSaison() {
		return saison;
	}


	public void setSaison(String saison) {
		this.saison = saison;
	}
	// ToString
	
	@Override
	public String toString() {
		return "Horraires [id=" + id + ", ouvertureMidi=" + ouvertureMidi + ", ouvertureSoir=" + ouvertureSoir
				+ ", fermetureMidi=" + fermetureMidi + ", fermetureSoir=" + fermetureSoir + ", jourOuvert=" + fermeture
				+ ", jourFerme=" + jourFerme + saison + "]";
	}

}
