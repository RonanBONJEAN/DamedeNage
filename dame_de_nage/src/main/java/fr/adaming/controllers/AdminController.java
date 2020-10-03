package fr.adaming.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fr.adaming.model.Boissons;
import fr.adaming.model.Horraires;
import fr.adaming.model.Images;
import fr.adaming.model.Plats;
import fr.adaming.model.Vins;
import fr.adaming.service.IBoissonsService;
import fr.adaming.service.IHorrairesService;
import fr.adaming.service.IImagesService;
import fr.adaming.service.IPlatsService;
import fr.adaming.service.IVinsService;

@Controller
@Scope("session")
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private IPlatsService pSer;

	@Autowired
	private IVinsService vSer;

	@Autowired
	private IHorrairesService hSer;
	
	@Autowired
	private IBoissonsService bSer;
	
	@Autowired
	private IImagesService iSer;
	
	private double prixpGlace;
	private double prixmGlace;
	private double prixgGlace;

	@RequestMapping(value = "/acceuil", method = RequestMethod.GET)
	public ModelAndView afficheAdmin() {
		Images imageSlider1= new Images();
		Images imageSlider2= new Images();
		Images imageSlider3= new Images();
		Images imageArticle1= new Images();
		Images imageArticle2= new Images();
		Images cropSlider1= new Images();
		Images cropSlider2= new Images();
		Images cropSlider3= new Images();
		Images cropArticle1= new Images();
		Images cropArticle2= new Images();
		List<Images> liste =iSer.getAllImages();
		for (Images i : liste) {
			if("Slider1".equalsIgnoreCase(i.getName())){
				imageSlider1=i;
			} else if("Slider2".equalsIgnoreCase(i.getName())){
				imageSlider2=i;
			} else if("Slider3".equalsIgnoreCase(i.getName())){
				imageSlider3=i;
			}else if("Article1".equalsIgnoreCase(i.getName())){
				imageArticle1=i;
			}else if("Article2".equalsIgnoreCase(i.getName())){
				imageArticle2=i;
			}
			
		}
		
		cropSlider1.setPath(imageSlider1.getPath().substring(31));
		cropSlider2.setPath(imageSlider2.getPath().substring(31));
		cropSlider3.setPath(imageSlider3.getPath().substring(31));
		cropArticle1.setPath(imageArticle1.getPath().substring(31));
		cropArticle2.setPath(imageArticle2.getPath().substring(31));
		
		ModelAndView mv= new ModelAndView();
		
		mv.addObject("imageSlider1",imageSlider1);
		mv.addObject("imageSlider2",imageSlider2);
		mv.addObject("imageSlider3",imageSlider3);
		mv.addObject("imageArticle1",imageArticle1);
		mv.addObject("imageArticle2",imageArticle2);
		mv.addObject("cropSlider1",cropSlider1);
		mv.addObject("cropSlider2",cropSlider2);
		mv.addObject("cropSlider3",cropSlider3);
		mv.addObject("cropArticle1",cropArticle1);
		mv.addObject("cropArticle2",cropArticle2);
		mv.setViewName("espaceAdmin");
		return mv;
	}

	@SuppressWarnings("serial")
	@RequestMapping(value = "/carte", method = RequestMethod.GET)
	public ModelAndView afficheCarte() {
		ModelAndView mv = new ModelAndView();
		Plats plat = new Plats();
		Vins vin = new Vins();
		Boissons boisson = new Boissons();
		List<Plats> listeP = pSer.getAllPlats();
		List<Vins> listeV = vSer.getAllVins();
		List<Boissons> listeBoisson = bSer.getAllBoissons();
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
		List<Boissons> listeBierreP = new ArrayList<Boissons>();
		List<Boissons> listeBierreB = new ArrayList<Boissons>();
		List<Boissons> listeApero = new ArrayList<Boissons>();
		List<Boissons> listeChamp = new ArrayList<Boissons>();
		List<Boissons> listeWhiskie = new ArrayList<Boissons>();
		List<Boissons> listeBourbon = new ArrayList<Boissons>();
		List<Boissons> listeRhum = new ArrayList<Boissons>();
		List<Boissons> listeDigeo = new ArrayList<Boissons>();
		List<Boissons> listeSA = new ArrayList<Boissons>();
		List<Boissons> listeBoissonChaude = new ArrayList<Boissons>();
		List<Boissons> listeEau = new ArrayList<Boissons>();
		for (Boissons b : listeBoisson) {
			if (b.getCategorie().equalsIgnoreCase("Bierres pression")) {
				listeBierreP.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Bierres bouteille")) {
				listeBierreB.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("aperitifs")) {
				listeApero.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Champagne")) {
				listeChamp.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Whiskies")) {
				listeWhiskie.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Bourbons")) {
				listeBourbon.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Rhums")) {
				listeRhum.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Digestifs")) {
				listeDigeo.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Sans Alcool")) {
				listeSA.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Boissons Chaudes")) {
				listeBoissonChaude.add(b);
			} else if (b.getCategorie().equalsIgnoreCase("Eaux")) {
				listeEau.add(b);
			}

		}
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
		this.prixpGlace=listePrixGlace.get(0).getPrixp();
		this.prixmGlace=listePrixGlace.get(0).getPrixm();
		this.prixgGlace=listePrixGlace.get(0).getPrixg();
		for (Vins v : listeV){
			if (v.getType().equalsIgnoreCase("Rouge")){
				listeVinsRouge.add(v);
			}else if (v.getType().equalsIgnoreCase("Blanc")){
				listeVinsBlanc.add(v);
			}else if (v.getType().equalsIgnoreCase("Rose")){
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
				put("listeBierreP", listeBierreP);
				put("listeBierreB", listeBierreB);
				put("listeApero", listeApero);
				put("listeChamp", listeChamp);
				put("listeWhiskie", listeWhiskie);
				put("listeBourbon", listeBourbon);
				put("listeRhum", listeRhum);
				put("listeDigeo", listeDigeo);
				put("listeSA", listeSA);
				put("listeBoissonChaude", listeBoissonChaude);
				put("listeEau", listeEau);
			}
		};
		mv.addAllObjects(map);
		mv.addObject(plat);
		mv.addObject(vin);
		mv.addObject(boisson);
		mv.setViewName("carteAdmin");
		return mv;
	}

	@SuppressWarnings("serial")
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public ModelAndView afficheInfo() {
		Horraires horraire = new Horraires();
		ModelAndView mv = new ModelAndView();
		List<Horraires> listeH = hSer.getAllHorraires();
		Map<String, List<?>> map = new HashMap<String, List<?>>() {
			{
				put("Horraires", listeH);
			}
		};
		mv.addObject(horraire);
		mv.addAllObjects(map);
		mv.setViewName("infoAdmin");
		return mv;
	}

	@RequestMapping(value = "/submitUpDateFerm", method = RequestMethod.POST)
	public String submitUpDateFerm(@ModelAttribute Horraires horraire, RedirectAttributes ra) {
		Horraires horraireOut = hSer.getHorrairesById(horraire.getId());
		if(horraire.getFermeture().isEmpty()){
			horraire.setFermeture(null);
		} else {
		horraire.setFermeture(horraire.getFermeture()+" au "+ horraire.getJourFerme());}
		horraireOut.setFermeture(horraire.getFermeture());
		boolean isud = hSer.upDateHorraires(horraireOut);
		if (isud) {
			return "redirect:/admin/info";
		} else {
			ra.addAttribute("msg", "la modification à fail");
			return "redirect:/admin/info";
		}
	}

	@RequestMapping(value = "/submitAddP", method = RequestMethod.POST)
	public String addPlatpost(@ModelAttribute Plats plat, RedirectAttributes ra) {
		if (plat.getNom().contains("Ã©")) {
			plat.setNom(plat.getNom().replaceAll("Ã©", "é"));
		}
		if (plat.getNom().contains("Ã¨")) {
			plat.setNom(plat.getNom().replaceAll("Ã¨", "è"));
		}
		if (plat.getNom().contains("Ãª")) {
			plat.setNom(plat.getNom().replaceAll("Ãª", "ê"));
		}
		if (plat.getNom().contains("Ã´")) {
			plat.setNom(plat.getNom().replaceAll("Ã´", "ô"));
		}
		if (plat.getNom().contains("Ã«")) {
			plat.setNom(plat.getNom().replaceAll("Ã«", "ë"));
		}
		if (plat.getNom().contains("Ã¯")) {
			plat.setNom(plat.getNom().replaceAll("Ã¯", "ï"));
		}
		if (plat.getNom().contains("Ã¢")) {
			plat.setNom(plat.getNom().replaceAll("Ã¢", "â"));
		}
		if (plat.getNom().contains("Ã§")) {
			plat.setNom(plat.getNom().replaceAll("Ã§", "ç"));
		}
		if (plat.getNom().contains("Ã")) {
			plat.setNom(plat.getNom().replaceAll("Ã", "à"));
		}
		if ("Glace".equalsIgnoreCase(plat.getCategorie())){
				plat.setPrixg(prixgGlace);
				plat.setPrixp(prixpGlace);
				plat.setPrixm(prixmGlace);}
		boolean isAdd = pSer.addPlats(plat);
		if (isAdd) {
			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "l'ajout à fail");
			return "redirect:/admin/carte";
		}
	}

	@RequestMapping(value = "/submitDeleteP/{pId}", method = RequestMethod.GET)
	public String deletePlatpost(@PathVariable("pId") int id, RedirectAttributes ra) {
		Plats plat = new Plats(id);

		boolean isdel = pSer.deletePlats(plat);
		if (isdel) {
			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "la suppression à fail");
			return "redirect:/admin/carte";
		}
	}

	@RequestMapping(value = "/submitUpDateP", method = RequestMethod.POST)
	public String upDatePlatpost(@ModelAttribute Plats plat, RedirectAttributes ra) {
		boolean isud=true;
		if (plat.getNom()!=null){
		if (plat.getNom().contains("Ã©")) {
			plat.setNom(plat.getNom().replaceAll("Ã©", "é"));
		}
		if (plat.getNom().contains("Ã¨")) {
			plat.setNom(plat.getNom().replaceAll("Ã¨", "è"));
		}
		if (plat.getNom().contains("Ãª")) {
			plat.setNom(plat.getNom().replaceAll("Ãª", "ê"));
		}
		if (plat.getNom().contains("Ã´")) {
			plat.setNom(plat.getNom().replaceAll("Ã´", "ô"));
		}
		if (plat.getNom().contains("Ã«")) {
			plat.setNom(plat.getNom().replaceAll("Ã«", "ë"));
		}
		if (plat.getNom().contains("Ã¯")) {
			plat.setNom(plat.getNom().replaceAll("Ã¯", "ï"));
		}
		if (plat.getNom().contains("Ã¢")) {
			plat.setNom(plat.getNom().replaceAll("Ã¢", "â"));
		}
		if (plat.getNom().contains("Ã§")) {
			plat.setNom(plat.getNom().replaceAll("Ã§", "ç"));
		}
		if (plat.getNom().contains("Ã")) {
			plat.setNom(plat.getNom().replaceAll("Ã", "à"));
		}}
		if ("Glace".equalsIgnoreCase(plat.getCategorie())){
			if(plat.getPrixg()==0|plat.getPrixm()==0|plat.getPrixp()==0){
				plat.setPrixg(prixgGlace);
				plat.setPrixp(prixpGlace);
				plat.setPrixm(prixmGlace);
				isud = pSer.upDatePlats(plat);
				
			}else{
				List<Plats> ListeGlace=pSer.getPlatsByCategorie("Glace");
				for(Plats p: ListeGlace){
					p.setPrixg(plat.getPrixg());
					p.setPrixm(plat.getPrixm());
					p.setPrixp(plat.getPrixp());
					isud = pSer.upDatePlats(p);
				}
			}
		} else{
			isud = pSer.upDatePlats(plat);
		}
		if (isud) {
			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "la modification à fail");
			return "redirect:/admin/carte";
		}
		
	}

	@RequestMapping(value = "/submitAddV", method = RequestMethod.POST)
	public String addVinpost(@ModelAttribute Vins vin, RedirectAttributes ra) {
		if (vin.getAppelation().contains("Ã©")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã©", "é"));
		}
		if (vin.getAppelation().contains("Ã¨")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã¨", "è"));
		}
		if (vin.getAppelation().contains("Ãª")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ãª", "ê"));
		}
		if (vin.getAppelation().contains("Ã´")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã´", "ô"));
		}
		if (vin.getAppelation().contains("Ã«")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã«", "ë"));
		}
		if (vin.getAppelation().contains("Ã¯")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã¯", "ï"));
		}
		if (vin.getAppelation().contains("Ã¢")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã¢", "â"));
		}
		if (vin.getAppelation().contains("Ã§")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã§", "ç"));
		}
		if (vin.getAppelation().contains("Ã")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã", "à"));
		}
		if(!"-".equals(vin.getPrix25())){
			vin.setPrix25(vin.getPrix25()+"€");
		}
		if(!"-".equals(vin.getPrix50())){
			vin.setPrix50(vin.getPrix50()+"€");
		}
		if(!"-".equals(vin.getPrixv())){
			vin.setPrixv(vin.getPrixv()+"€");
		}
		if(!"-".equals(vin.getPrixb())){
			vin.setPrixb(vin.getPrixb()+"€");
		}
		boolean isAdd = vSer.addVins(vin);
		if (isAdd) {
			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "l'ajout à fail");
			return "redirect:/admin/carte";
		}
	}

	@RequestMapping(value = "/submitDeleteV/{vId}", method = RequestMethod.GET)
	public String deleteVinpost(@PathVariable("vId") int id, RedirectAttributes ra) {
		Vins vin = new Vins(id);
		boolean isdel = vSer.deleteVins(vin);
		if (isdel) {

			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "la suppression à fail");
			return "redirect:/admin/carte";
		}
	}

	@RequestMapping(value = "/submitUpDateV", method = RequestMethod.POST)
	public String upDateVinpost(@ModelAttribute Vins vin, RedirectAttributes ra) {
		if (vin.getAppelation().contains("Ã©")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã©", "é"));
		}
		if (vin.getAppelation().contains("Ã¨")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã¨", "è"));
		}
		if (vin.getAppelation().contains("Ãª")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ãª", "ê"));
		}
		if (vin.getAppelation().contains("Ã´")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã´", "ô"));
		}
		if (vin.getAppelation().contains("Ã«")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã«", "ë"));
		}
		if (vin.getAppelation().contains("Ã¯")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã¯", "ï"));
		}
		if (vin.getAppelation().contains("Ã¢")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã¢", "â"));
		}
		if (vin.getAppelation().contains("Ã§")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã§", "ç"));
		}
		if (vin.getAppelation().contains("Ã")) {
			vin.setAppelation(vin.getAppelation().replaceAll("Ã", "à"));
		}
		if (vin.getPrixv().contains("â¬")) {
			vin.setPrixv(vin.getPrixv().replaceAll("â¬", "€"));
		}
		if (vin.getPrix25().contains("â¬")) {
			vin.setPrix25(vin.getPrix25().replaceAll("â¬", "€"));
		}
		if (vin.getPrix50().contains("â¬")) {
			vin.setPrix50(vin.getPrix50().replaceAll("â¬", "€"));
		}
		if (vin.getPrixb().contains("â¬")) {
			vin.setPrixb(vin.getPrixb().replaceAll("â¬", "€"));
		}
		boolean isud = vSer.upDateVins(vin);
		if (isud) {
			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "la modification à fail");
			return "redirect:/admin/carte";
		}
	}
	@RequestMapping(value = "/submitAddB", method = RequestMethod.POST)
	public String addBoissonpost(@ModelAttribute Boissons boisson, RedirectAttributes ra) {
		if (boisson.getNom().contains("Ã©")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã©", "é"));
		}
		if (boisson.getNom().contains("Ã¨")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã¨", "è"));
		}
		if (boisson.getNom().contains("Ãª")) {
			boisson.setNom(boisson.getNom().replaceAll("Ãª", "ê"));
		}
		if (boisson.getNom().contains("Ã´")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã´", "ô"));
		}
		if (boisson.getNom().contains("Ã«")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã«", "ë"));
		}
		if (boisson.getNom().contains("Ã¯")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã¯", "ï"));
		}
		if (boisson.getNom().contains("Ã¢")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã¢", "â"));
		}
		if (boisson.getNom().contains("Ã§")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã§", "ç"));
		}
		if (boisson.getNom().contains("Ã")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã", "à"));
		}
		
		boolean isAdd = bSer.addBoissons(boisson);
		if (isAdd) {
			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "l'ajout à fail");
			return "redirect:/admin/carte";
		}
	}

	@RequestMapping(value = "/submitDeleteB/{bId}", method = RequestMethod.GET)
	public String deleteBoissonpost(@PathVariable("bId") int id, RedirectAttributes ra) {
		Boissons boisson = new Boissons(id);
		boolean isdel = bSer.deleteBoissons(boisson);
		if (isdel) {

			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "la suppression à fail");
			return "redirect:/admin/carte";
		}
	}

	@RequestMapping(value = "/submitUpDateB", method = RequestMethod.POST)
	public String upDateBoissonpost(@ModelAttribute Boissons boisson, RedirectAttributes ra) {
		if (boisson.getNom().contains("Ã©")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã©", "é"));
		}
		if (boisson.getNom().contains("Ã¨")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã¨", "è"));
		}
		if (boisson.getNom().contains("Ãª")) {
			boisson.setNom(boisson.getNom().replaceAll("Ãª", "ê"));
		}
		if (boisson.getNom().contains("Ã´")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã´", "ô"));
		}
		if (boisson.getNom().contains("Ã«")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã«", "ë"));
		}
		if (boisson.getNom().contains("Ã¯")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã¯", "ï"));
		}
		if (boisson.getNom().contains("Ã¢")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã¢", "â"));
		}
		if (boisson.getNom().contains("Ã§")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã§", "ç"));
		}
		if (boisson.getNom().contains("Ã")) {
			boisson.setNom(boisson.getNom().replaceAll("Ã", "à"));
		}
		boolean isud = bSer.upDateBoissons(boisson);
		if (isud) {
			return "redirect:/admin/carte";
		} else {
			ra.addAttribute("msg", "la modification à fail");
			return "redirect:/admin/carte";
		}
	}
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(RedirectAttributes ra) {
		return "acceuil";
	}

	@RequestMapping(value = "/submitUpDateH/{hSaison}", method = RequestMethod.POST)
	public String upDateHorrairespost(@PathVariable("hSaison") String saison, @ModelAttribute Horraires horraire,
			RedirectAttributes ra) {
		horraire.setSaison(saison);
		boolean isud = hSer.upDateHorraires(horraire);
		if (isud) {
			return "redirect:/admin/info";
		} else {
			ra.addAttribute("msg", "la modification à fail");
			return "redirect:/admin/info";
		}
	}
	
	@RequestMapping(value = "/submitUpDateI", method = RequestMethod.POST)
	public String upDateImagespost(@ModelAttribute Images image, RedirectAttributes ra) {
		String beginPath="https://drive.google.com/uc?id=";
		image.setPath(beginPath.concat(image.getPath()));
		boolean isud = iSer.upDateImages(image);
		if (isud) {
			return "redirect:/admin/acceuil";
		} else {
			ra.addAttribute("msg", "la modification à fail");
			return "redirect:/admin/acceuil";
		}
	}
}