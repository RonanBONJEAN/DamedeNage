package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Images;

public interface IImagesDao {

	public List<Images> getAllImages();
	
	public Images getImagesById(int id);
	
	public Images getImagesByName(String name);
	
	public Images upDateImages(Images Images);
	
}
