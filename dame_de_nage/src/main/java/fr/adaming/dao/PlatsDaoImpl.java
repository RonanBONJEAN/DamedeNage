package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Plats;

@Repository
public class PlatsDaoImpl implements IPlatsDao {

	@PersistenceContext
	private EntityManager em;

	public void setEm(EntityManager em) {
		this.em = em;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Plats> getAllPlats() {
		String req = "SELECT p FROM Plats p";
		Query query = em.createQuery(req);
		
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Plats> getPlatsByCategorie(String categorie) {
		String req = "SELECT p FROM Plats AS p WHERE p.categorie=:pCat";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pCat", categorie);

			return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Plats> getPlatsByName(String name) {
		String req = "SELECT p FROM Plats p WHERE p.nom=:pName";
		Query query = em.createQuery(req);
		query.setParameter("pName", name);
		
		return query.getResultList();
	}

	@Override
	public Plats getPlatsById(int id) {
		String req = "SELECT p FROM Plats AS p WHERE p.id=:pId";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pId", id);

		try {
			return (Plats) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public void addPlats(Plats plat) {
		em.persist(plat);
	}

	@Override
	public boolean deletePlats(Plats plat) {
		try{
			Plats pOut=em.find(Plats.class, plat.getId());
			em.remove(pOut);
			return true;
		}catch (Exception ex){
			return false;
		}
	}

	@Override
	public Plats upDatePlats(Plats plat) {
		Plats pOut=em.find(Plats.class, plat.getId());
		if(pOut!=null){
		pOut=em.merge(plat);
		}
		return pOut;
	}

}
