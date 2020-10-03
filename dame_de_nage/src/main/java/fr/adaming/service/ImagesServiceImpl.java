package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IImagesDao;
import fr.adaming.model.Images;

@Service("imagesService")
@Transactional
public class ImagesServiceImpl implements IImagesService {

	@Autowired
	IImagesDao ImagesDao;

	@Override
	public List<Images> getAllImages() {
		
		return ImagesDao.getAllImages();
	}

	@Override
	public Images getImagesByName(String name) {
		return ImagesDao.getImagesByName(name);
	}

	@Override
	public boolean upDateImages(Images image) {
		Images Imerge=ImagesDao.upDateImages(image);
		if (Imerge==image){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public Images getImagesById(int id) {
		return ImagesDao.getImagesById(id);
	}

	

}
