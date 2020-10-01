package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Boissons;

@Repository
public class BoissonsDaoImpl implements IBoissonsDao {

	@PersistenceContext
	private EntityManager em;

	public void setEm(EntityManager em) {
		this.em = em;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Boissons> getAllBoissons() {
		String req = "SELECT b FROM Boissons b";
		Query query = em.createQuery(req);
		
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Boissons> getBoissonsByCategorie(String cat) {
		String req = "SELECT b FROM Boissons AS b WHERE b.categorie=:pCat";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pCat", cat);

			return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Boissons> getBoissonsByName(String nom) {
		String req = "SELECT b FROM Boissons b WHERE b.nom=:pNom";
		Query query = em.createQuery(req);
		query.setParameter("pNom", nom);
		
		return query.getResultList();
	}

	@Override
	public Boissons getBoissonsById(int id) {
		String req = "SELECT b FROM Boissons AS b WHERE b.id=:pId";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pId", id);

		try {
			return (Boissons) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public void addBoissons(Boissons Boisson) {
		em.persist(Boisson);
	}

	@Override
	public boolean deleteBoissons(Boissons Boisson) {
		try{
			Boissons bOut=em.find(Boissons.class, Boisson.getId());
			em.remove(bOut);
			return true;
		}catch (Exception ex){
			return false;
		}
	}

	@Override
	public Boissons upDateBoissons(Boissons Boisson) {
		Boissons bOut=em.find(Boissons.class, Boisson.getId());
		if(bOut!=null){
		bOut=em.merge(Boisson);
		}
		return bOut;
	}

}
