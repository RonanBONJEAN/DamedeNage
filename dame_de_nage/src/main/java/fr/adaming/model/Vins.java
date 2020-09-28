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
@Table(name = "vins")
public class Vins implements Serializable {

	// Declaration des attributs
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_v")
	private int id;
	private String prixv;
	private String prix25;
	private String prix50;
	private String prixb;
	private String appelation;
	private String type;

	// Declaration du constructeur
	public Vins() {
		super();
	}

	public Vins(int id) {
		super();
		this.id = id;
	}

	public Vins(int id, String prixv, String prix25, String prix50, String prixb, String appelation, String type) {
		super();
		this.id = id;
		this.prixv = prixv;
		this.prix25 = prix25;
		this.prix50 = prix50;
		this.prixb = prixb;
		this.appelation = appelation;
		this.type = type;
	}

	// Declaration des getters et des setters

	public int getId() {
		return id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPrixv() {
		return prixv;
	}

	public void setPrixv(String prixv) {
		this.prixv = prixv;
	}

	public String getPrix25() {
		return prix25;
	}

	public void setPrix25(String prix25) {
		this.prix25 = prix25;
	}

	public String getPrix50() {
		return prix50;
	}

	public void setPrix50(String prix50) {
		this.prix50 = prix50;
	}

	public String getPrixb() {
		return prixb;
	}

	public void setPrixb(String prixb) {
		this.prixb = prixb;
	}

	public String getAppelation() {
		return appelation;
	}

	public void setAppelation(String appelation) {
		this.appelation = appelation;
	}

	// ToString
	@Override
	public String toString() {
		return "Vins [id=" + id + ", prixv=" + prixv + ", prix25=" + prix25 + ", prix50=" + prix50 + ", prixb=" + prixb
				+ ", appelation=" + appelation + ", type=" + type+"]";
	}

}
