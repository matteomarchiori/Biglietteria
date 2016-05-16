/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import CRUD.CRUD;
import hibernate.HibernateUtil;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import mappa.Biglietto;
import mappa.Categoria;
import mappa.Servizio;
import mappa.VisitaBase;
import mappa.VisitaEvento;
import mappa.Visitatore;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import utili.Password;

/**
 *
 * @author matteo
 */
@Controller
public class ControllerRegistrati {

    private static CRUD crud;

    public ControllerRegistrati() {
        crud = new CRUD(HibernateUtil.getSessionFactory());
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session, ModelMap map) {
        session.invalidate();
        List<Categoria> categorie = crud.selectCategorie();
        for (int i = 0; i < categorie.size(); i++) {
            map.put("categoria" + (i + 1), categorie.get(i));
        }
        return "index";
    }

    @RequestMapping(value = "/log", method = RequestMethod.POST)
    public String log(ModelMap map, @RequestParam(value = "email") String email, @RequestParam(value = "password") String password, HttpSession session) {
        Visitatore v = crud.selectVisitatore(email);
        if (v != null) {
            try {
                String hash = Password.getMD5(password);
                if (v.getPassword().equals(hash)) {
                    session.setAttribute("email", email);
                    session.setAttribute("password", hash);
                    List<Categoria> categorie = crud.selectCategorie();
                    map.put("categorie", categorie);
                    List<Servizio> servizi = crud.selectServizi();
                    map.put("servizi", servizi);
                    List<VisitaEvento> eventi = crud.selectEventi();
                    map.put("eventi", eventi);
                    return "acquisto";
                }
                return "registrazione";
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(ControllerRegistrati.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return "registrazione";
    }

    @RequestMapping(value = "/acquisto")
    public String acquisto(ModelMap map) {
        List<Categoria> categorie = crud.selectCategorie();
        map.put("categorie", categorie);
        List<Servizio> servizi = crud.selectServizi();
        map.put("servizi", servizi);
        List<VisitaEvento> eventi = crud.selectEventi();
        map.put("eventi", eventi);
        return "acquisto";
    }

    @RequestMapping(value = "/summary", method = RequestMethod.POST)
    public String summary(@RequestParam(value = "informazioni") String informazioni, @RequestParam(value = "nu") int nu, HttpSession session) {
        session.setAttribute("informazioni", informazioni);
        session.setAttribute("nu", nu);
        return "summary";
    }

    @RequestMapping(value = "/email", method = RequestMethod.GET)
    public @ResponseBody String getEmail(@RequestParam(value = "daCompletare", required = true) String daCompletare) {
        Visitatore v = crud.selectEmail(daCompletare);
        if (v == null) {
            return "Nessun suggerimento.";
        }
        return v.getMail();
    }//getEmail

    @RequestMapping(value = "/registraBiglietti",method = RequestMethod.POST)
    public @ResponseBody String newBiglietto(HttpSession session, @RequestParam(value = "tipo") String tipo, @RequestParam(value = "data") String data, @RequestParam(value = "titolo") String titolo, @RequestParam(value = "categoria") String categoria, @RequestParam(value = "servizio") String servizio) {
        String email = (String) session.getAttribute("email");
        Visitatore v = crud.selectVisitatore(email);
        Categoria c = crud.selectCategoria(categoria);
        Servizio s = crud.selectServizio(servizio);
        Set<Servizio> servizi = new HashSet<>();
        servizi.add(s);
        if (tipo.equals("Evento")) {
            VisitaEvento ve = crud.selectVisitaEvento(titolo);
            Date d = ve.getDataF();
            Biglietto b = new Biglietto(d, v, null, ve, servizi, c);
            crud.insertBiglietto(b);
        } else {
            try {
                DateFormat format = new SimpleDateFormat("d-M-y");
                Date d = format.parse(data);
                VisitaBase vb = crud.selectVisitaBase(titolo);
                if(vb==null){
                    vb = new VisitaBase(titolo, 8, titolo, null);
                    crud.insertVisitaBase(vb);
                }
                Biglietto b = new Biglietto(d, v, vb, null, servizi, c);
                crud.insertBiglietto(b);
            } catch (ParseException ex) {
                Logger.getLogger(ControllerRegistrati.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return "";
    }
}
