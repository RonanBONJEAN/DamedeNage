package fr.adaming.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "image")
public class Images implements Serializable{

	// Declaration des attributs
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_i")
	private int id;
	private String name;
	private String path;

	// Declaration des constructeurs
	public Images() {
		super();
	}

	public Images(int id) {
		super();
		this.id = id;
	}

	public Images(int id, String name, String path) {
		super();
		this.id = id;
		this.name = name;
		this.path = path;
	}

	// getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	// to string
	@Override
	public String toString() {
		return "Images [id=" + id + ", name=" + name + ", path=" + path + "]";
	}
	

}
