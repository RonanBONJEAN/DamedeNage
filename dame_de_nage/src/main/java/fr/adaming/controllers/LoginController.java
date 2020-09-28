package fr.adaming.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String affichelogin() {
		return "login";
	}
	
	@RequestMapping(value="/loginEchec", method=RequestMethod.GET)
	public String afficheloginechec(Model modele) {
		modele.addAttribute("fail","le login ou le mot de passe sont �ronn�!");
		return "login";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String afficheLogout(Model modele) {
			modele.addAttribute("deconnexion","vous avez bien été déconnecter!");
			return "acceuil";
	}
	
	@RequestMapping(value="/denied", method=RequestMethod.GET)
	public String AfficheDenied() {
		return "denied";
	}
}