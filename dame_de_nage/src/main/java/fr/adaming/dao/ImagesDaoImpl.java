package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Images;

@Repository
public class ImagesDaoImpl implements IImagesDao {

	@PersistenceContext
	private EntityManager em;

	public void setEm(EntityManager em) {
		this.em = em;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Images> getAllImages() {
		String req = "SELECT i FROM Images i";
		Query query = em.createQuery(req);
		
		return query.getResultList();
	}

	@Override
	public Images getImagesById(int id) {
		String req = "SELECT i FROM Images AS i WHERE i.id=:pId";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pId", id);

		try {
			return (Images) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
	
	@Override
	public Images getImagesByName(String name) {
		String req = "SELECT i FROM Images AS i WHERE i.name=:pName";

		// recup�rer l'objet Query pour envoyer la requete JPQL
		Query query = em.createQuery(req);

		query.setParameter("pName", name);

		try {
			return (Images) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

	
	@Override
	public Images upDateImages(Images image) {
		Images iOut=em.find(Images.class, image.getId());
		if(iOut!=null){
		iOut=em.merge(image);
		}
		return iOut;
	}

}
