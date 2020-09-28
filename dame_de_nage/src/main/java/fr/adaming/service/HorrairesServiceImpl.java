package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IHorrairesDao;
import fr.adaming.model.Horraires;

@Service("horrairesService")
@Transactional
public class HorrairesServiceImpl implements IHorrairesService {

	@Autowired
	IHorrairesDao HorrairesDao;

	@Override
	public List<Horraires> getAllHorraires() {
		
		return HorrairesDao.getAllHorraires();
	}

	@Override
	public Horraires getHorrairesBySaison(String saison) {
		return HorrairesDao.getHorrairesBySaison(saison);
	}

	@Override
	public boolean upDateHorraires(Horraires horraire) {
		Horraires Hmerge=HorrairesDao.upDateHorraires(horraire);
		if (Hmerge==horraire){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public Horraires getHorrairesById(int id) {
		return HorrairesDao.getHorrairesById(id);
	}

	

}
