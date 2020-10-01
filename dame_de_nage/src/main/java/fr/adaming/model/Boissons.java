package fr.adaming.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "boisson")
public class Boissons implements Serializable {

	// Declaration des attributs
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_b")
	private int id;
	private String prixp;
	private String prixg;
	private String nom;
	private String categorie;
	
	
	// Declaration du constructeur
	public Boissons() {
		super();
	}


	public Boissons(int id) {
		super();
		this.id = id;
	}


	public Boissons(int id, String prixp, String prixg, String nom, String categorie) {
		super();
		this.id = id;
		this.prixp = prixp;
		this.prixg = prixg;
		this.nom = nom;
		this.categorie = categorie;
	}

	//getters and setters

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getPrixp() {
		return prixp;
	}


	public void setPrixp(String prixp) {
		this.prixp = prixp;
	}


	public String getPrixg() {
		return prixg;
	}


	public void setPrixg(String prixg) {
		this.prixg = prixg;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getCategorie() {
		return categorie;
	}


	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}


	@Override
	public String toString() {
		return "Boissons [id=" + id + ", prixp=" + prixp + ", prixg=" + prixg + ", nom=" + nom + ", categorie="
				+ categorie + "]";
	}

	
	
}
