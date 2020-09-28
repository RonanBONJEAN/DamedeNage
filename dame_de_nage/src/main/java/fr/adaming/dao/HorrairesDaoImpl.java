package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Horraires;

@Repository
public class HorrairesDaoImpl implements IHorrairesDao {

	@PersistenceContext
	private EntityManager em;

	public void setEm(EntityManager em) {
		this.em = em;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Horraires> getAllHorraires() {
		String req = "SELECT h FROM Horraires h";
		Query query = em.createQuery(req);
		
		return query.getResultList();
	}

	@Override
	public Horraires getHorrairesById(int id) {
		String req = "SELECT h FROM Horraires AS h WHERE h.id=:pId";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pId", id);

		try {
			return (Horraires) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
	
	@Override
	public Horraires getHorrairesBySaison(String saison) {
		String req = "SELECT h FROM Horraires AS h WHERE h.saison=:pSaison";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pSaison", saison);

		try {
			return (Horraires) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

	
	@Override
	public Horraires upDateHorraires(Horraires horraires) {
		Horraires hOut=em.find(Horraires.class, horraires.getId());
		if(hOut!=null){
		hOut=em.merge(horraires);
		}
		return hOut;
	}

}
