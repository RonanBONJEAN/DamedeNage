package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IBoissonsDao;
import fr.adaming.model.Boissons;

@Service("boissonsService")
@Transactional
public class BoissonsServiceImpl implements IBoissonsService {

	@Autowired
	IBoissonsDao BoissonsDao;

	@Override
	public List<Boissons> getAllBoissons() {
		
		return BoissonsDao.getAllBoissons();
	}

	@Override
	public List<Boissons> getBoissonsByCategorie(String cat) {
		
		return BoissonsDao.getBoissonsByCategorie(cat);
	}

	@Override
	public List<Boissons> getBoissonsByName(String nom) {
		return BoissonsDao.getBoissonsByName(nom);
	}

	@Override
	public boolean addBoissons(Boissons Boisson) {
		int Before=BoissonsDao.getAllBoissons().size();
		BoissonsDao.addBoissons(Boisson);
		int after = BoissonsDao.getAllBoissons().size();
		
		if (after > Before){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean deleteBoissons(Boissons Boisson) {
		return BoissonsDao.deleteBoissons(Boisson);
	}

	@Override
	public boolean upDateBoissons(Boissons Boisson) {
		Boissons Bmerge=BoissonsDao.upDateBoissons(Boisson);
		if (Bmerge==Boisson){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public Boissons getBoissonsById(int id) {
		return BoissonsDao.getBoissonsById(id);
	}

	

}
