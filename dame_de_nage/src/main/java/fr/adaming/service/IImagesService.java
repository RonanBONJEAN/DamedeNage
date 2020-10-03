package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Images;

public interface IImagesService {

	public List<Images> getAllImages();
	
	public Images getImagesById(int id);
	
	public Images getImagesByName(String name);
	
	public boolean upDateImages(Images mage);
	
	
}
