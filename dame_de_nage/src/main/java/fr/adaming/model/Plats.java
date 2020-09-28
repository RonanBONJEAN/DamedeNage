package fr.adaming.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "plats")
public class Plats implements Serializable {

	// Declaration des attributs
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_pl")
	private int id;
	private String nom;
	private double prixp;
	private double prixm;
	private double prixg;
	private String categorie;

	// Declaration du constructeur
	public Plats() {
		super();
	}

	public Plats(int id) {
		super();
		this.id = id;
	}

	public Plats(int id, String nom, double prixp, double prixm, double prixg, String categorie) {
		super();
		this.id = id;
		this.nom = nom;
		this.prixp = prixp;
		this.prixm = prixm;
		this.prixg = prixg;
		this.categorie = categorie;
	}

	// Declaration des getters et des setters
	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public double getPrixp() {
		return prixp;
	}

	public void setPrixp(double prixp) {
		this.prixp = prixp;
	}

	public double getPrixm() {
		return prixm;
	}

	public void setPrixm(double prixm) {
		this.prixm = prixm;
	}

	public double getPrixg() {
		return prixg;
	}

	public void setPrixg(double prixg) {
		this.prixg = prixg;
	}

	// ToString
	@Override
	public String toString() {
		return "Plats [id=" + id + ", nom=" + nom + ", prixp=" + prixp + ", prixm=" + prixm + ", prixg=" + prixg
				+ ", categorie=" + categorie + "]";
	}

}
