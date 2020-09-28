package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IVinsDao;
import fr.adaming.model.Vins;

@Service("vinsService")
@Transactional
public class VinsServiceImpl implements IVinsService {

	@Autowired
	IVinsDao VinsDao;

	@Override
	public List<Vins> getAllVins() {
		
		return VinsDao.getAllVins();
	}

	@Override
	public List<Vins> getVinsByType(String type) {
		
		return VinsDao.getVinsByType(type);
	}

	@Override
	public List<Vins> getVinsByCru(String cru) {
		return VinsDao.getVinsByCru(cru);
	}

	@Override
	public boolean addVins(Vins vin) {
		int Before=VinsDao.getAllVins().size();
		VinsDao.addVins(vin);
		int after = VinsDao.getAllVins().size();
		
		if (after > Before){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean deleteVins(Vins vin) {
		return VinsDao.deleteVins(vin);
	}

	@Override
	public boolean upDateVins(Vins vin) {
		Vins Vmerge=VinsDao.upDateVins(vin);
		if (Vmerge==vin){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public Vins getVinsById(int id) {
		return VinsDao.getVinsById(id);
	}

	

}
