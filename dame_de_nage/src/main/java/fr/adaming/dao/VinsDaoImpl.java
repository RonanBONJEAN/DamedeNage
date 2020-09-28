package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Vins;

@Repository
public class VinsDaoImpl implements IVinsDao {

	@PersistenceContext
	private EntityManager em;

	public void setEm(EntityManager em) {
		this.em = em;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Vins> getAllVins() {
		String req = "SELECT v FROM Vins v";
		Query query = em.createQuery(req);
		
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Vins> getVinsByType(String type) {
		String req = "SELECT v FROM Vins AS v WHERE v.type=:pType";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pType", type);

			return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Vins> getVinsByCru(String cru) {
		String req = "SELECT v FROM Vins v WHERE v.cru=:pCru";
		Query query = em.createQuery(req);
		query.setParameter("pCru", cru);
		
		return query.getResultList();
	}

	@Override
	public Vins getVinsById(int id) {
		String req = "SELECT v FROM Vins AS v WHERE v.id=:pId";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pId", id);

		try {
			return (Vins) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public void addVins(Vins vin) {
		em.persist(vin);
	}

	@Override
	public boolean deleteVins(Vins vin) {
		try{
			Vins vOut=em.find(Vins.class, vin.getId());
			em.remove(vOut);
			return true;
		}catch (Exception ex){
			return false;
		}
	}

	@Override
	public Vins upDateVins(Vins vin) {
		Vins vOut=em.find(Vins.class, vin.getId());
		if(vOut!=null){
		vOut=em.merge(vin);
		}
		return vOut;
	}

}
