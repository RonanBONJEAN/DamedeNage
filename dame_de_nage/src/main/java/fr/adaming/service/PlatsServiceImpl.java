package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IPlatsDao;
import fr.adaming.model.Plats;

@Service("platsService")
@Transactional
public class PlatsServiceImpl implements IPlatsService {

	@Autowired
	IPlatsDao PlatsDao;

	@Override
	public List<Plats> getAllPlats() {
		
		return PlatsDao.getAllPlats();
	}

	@Override
	public List<Plats> getPlatsByCategorie(String categorie) {
		
		return PlatsDao.getPlatsByCategorie(categorie);
	}

	@Override
	public List<Plats> getPlatsByName(String name) {
		return PlatsDao.getPlatsByName(name);
	}

	@Override
	public boolean addPlats(Plats plat) {
		int Before=PlatsDao.getAllPlats().size();
		PlatsDao.addPlats(plat);
		int after = PlatsDao.getAllPlats().size();
		
		if (after > Before){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean deletePlats(Plats plat) {
		return PlatsDao.deletePlats(plat);
	}

	@Override
	public boolean upDatePlats(Plats plat) {
		Plats Pmerge=PlatsDao.upDatePlats(plat);
		if (Pmerge==plat){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public Plats getPlatsById(int id) {
		return PlatsDao.getPlatsById(id);
	}

	

}
