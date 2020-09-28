package fr.adaming.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.adaming.model.Horraires;
import fr.adaming.model.Plats;
import fr.adaming.model.Vins;
import fr.adaming.service.IHorrairesService;
import fr.adaming.service.IPlatsService;
import fr.adaming.service.IVinsService;

@Controller
@Scope("session")
@RequestMapping("/ddn")
public class AcceuilController {

	@Autowired
	private IPlatsService pSer;

	@Autowired
	private IVinsService vSer;

	@Autowired
	private IHorrairesService hSer;

	@RequestMapping(value = "/acceuil", method = RequestMethod.GET)
	public ModelAndView afficheAcceuil() {
		return new ModelAndView("acceuil");
	}

	@SuppressWarnings("serial")
	@RequestMapping(value = "/carte", method = RequestMethod.GET)
	public ModelAndView afficheCarte() {
		ModelAndView mv = new ModelAndView();
		List<Plats> listeP = pSer.getAllPlats();
		List<Vins> listeV = vSer.getAllVins();
		List<Plats> listeTapas = new ArrayList<Plats>();
		List<Plats> listePlancha = new ArrayList<Plats>();
		List<Plats> listeHuitre = new ArrayList<Plats>();
		List<Plats> listeMoule = new ArrayList<Plats>();
		List<Plats> listeBurger = new ArrayList<Plats>();
		List<Plats> listeGlace = new ArrayList<Plats>();
		List<Plats> listeSalades = new ArrayList<Plats>();
		List<Plats> listePlats = new ArrayList<Plats>();
		List<Plats> listeDessert = new ArrayList<Plats>();
		List<Plats> listeCoupeSA = new ArrayList<Plats>();
		List<Plats> listeCoupeAA = new ArrayList<Plats>();
		List<Plats> listePrixGlace = new ArrayList<Plats>();
		List<Plats> listeME = new ArrayList<Plats>();
		List<Vins> listeVinsRouge = new ArrayList<Vins>();
		List<Vins> listeVinsBlanc = new ArrayList<Vins>();
		List<Vins> listeVinsRose = new ArrayList<Vins>();

		for (Plats p : listeP) {
			if (p.getCategorie().equalsIgnoreCase("tapas")) {
				listeTapas.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("salade")) {
				listeSalades.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("plat")) {
				listePlats.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("dessert")) {
				listeDessert.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("huitre")) {
				listeHuitre.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("burger")) {
				listeBurger.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("moule")) {
				listeMoule.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("plancha")) {
				listePlancha.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("glace")) {
				listeGlace.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("CoupeSA")) {
				listeCoupeSA.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("CoupeAA")) {
				listeCoupeAA.add(p);
			} else if (p.getCategorie().equalsIgnoreCase("ME")) {
				listeME.add(p);
			}
			

		}
		listePrixGlace.add(listeGlace.get(0));
		for (Vins v : listeV) {
			if (v.getType().equalsIgnoreCase("Rouge")) {

				listeVinsRouge.add(v);
			} else if (v.getType().equalsIgnoreCase("Blanc")) {

				listeVinsBlanc.add(v);
			} else if (v.getType().equalsIgnoreCase("Rose")) {

				listeVinsRose.add(v);
			}
		}

		Map<String, List<?>> map = new HashMap<String, List<?>>() {
			{
				put("listeTapas", listeTapas);
				put("listePlancha", listePlancha);
				put("listeBurger", listeBurger);
				put("listeMoule", listeMoule);
				put("listeHuitre", listeHuitre);
				put("listeGlace", listeGlace);
				put("listeSalade", listeSalades);
				put("listePlats", listePlats);
				put("listeDessert", listeDessert);
				put("listeVinsRouge", listeVinsRouge);
				put("listeVinsBlanc", listeVinsBlanc);
				put("listeVinsRose", listeVinsRose);
				put("listeCoupeSA", listeCoupeSA);
				put("listeCoupeAA", listeCoupeAA);
				put("listePrixGlace", listePrixGlace);
				put("listeME", listeME);
			}
		};
		mv.addAllObjects(map);
		mv.setViewName("carte");
		return mv;
	}

	@SuppressWarnings("serial")
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public ModelAndView afficheInfo() {
		ModelAndView mv = new ModelAndView();
		List<Horraires> listeH = hSer.getAllHorraires();
		Map<String, List<?>> map = new HashMap<String, List<?>>() {
			{
				put("Horraires", listeH);
			}
		};
		mv.addAllObjects(map);
		mv.setViewName("info");
		return mv;
	}

}