/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import CRUD.CRUD;
import hibernate.HibernateUtil;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
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
    
    @RequestMapping(value="/login", method= RequestMethod.GET)
    public String login(){
       return "login";  
    }
    
    @RequestMapping(value="/logout", method= RequestMethod.GET)
    public String logout(HttpSession session,ModelMap map){
        session.invalidate();
        List<Categoria> categorie = crud.selectCategorie();
        for(int i=0;i<categorie.size();i++){
           map.put("categoria"+(i+1), categorie.get(i));
       }
        return "index";  
    }
    
    @RequestMapping(value = "/log", params = {"email","password"}, method = RequestMethod.POST)
    public String log(ModelMap map,@RequestParam(value="email") String email,@RequestParam(value="password") String password,HttpSession session){
       Visitatore v = crud.selectVisitatore(email);
       if (v!=null){
           if(v.getPassword().equals(password)) {
               session.setAttribute("email", email);
               session.setAttribute("password", password);
               List<Categoria> categorie = crud.selectCategorie();
                map.put("categorie", categorie);
                List<Servizio> servizi = crud.selectServizi();
                map.put("servizi", servizi);
                List<VisitaEvento> eventi = crud.selectEventi();
                map.put("eventi", eventi);
               return "acquisto";
           }
           return "registrazione";
       } return "registrazione";  
    }
    
    @RequestMapping(value="/acquisto")
    public String acquisto(){
        return "acquisto";
    }
    
    @RequestMapping(value = "/summary", params = {"informazioni", "nu"}, method= RequestMethod.GET)
    public String summary(@RequestParam(value="informazioni") String informazioni,@RequestParam(value="nu") int nu, HttpSession session){
       session.setAttribute("informazioni", informazioni);
       session.setAttribute("nu", nu);
       return "summary";
    }
    
    @RequestMapping(value = "/email", method = RequestMethod.GET)
    public @ResponseBody
    String getEmail(@RequestParam(value = "daCompletare", required = true) String daCompletare) {
        Visitatore v = crud.selectEmail(daCompletare);
        if(v==null) return "Nessun suggerimento.";
        return v.getMail();
    }//getEmail
    
    @RequestMapping(value="/newBiglietto", params={"tipo","data","titolo","categoria","servizio"}, method = RequestMethod.GET)
    public String newBiglietto(HttpSession session, @RequestParam(value="tipo") String tipo, @RequestParam(value="data") Date data, @RequestParam(value="titolo") String titolo, @RequestParam(value="categoria")String categoria, @RequestParam(value="servizio") String servizio){
        String email = (String) session.getAttribute("email");
        Visitatore v = crud.selectVisitatore(email);
        Categoria c = crud.selectCategoria(categoria);
        Servizio s = crud.selectServizio(servizio);
        HashSet<Servizio> servizi = new HashSet<>();
        servizi.add(s);
        if(tipo.equals("Evento")){
            VisitaEvento ve = crud.selectVisitaEvento(titolo);
            Date d = ve.getDataF();
            Biglietto b = new Biglietto(d,v,null,ve,servizi,c);
            crud.insertBiglietto(b);
        }
        else{
            VisitaBase vb = new VisitaBase(titolo,3,titolo,null);
            Biglietto b = new Biglietto(data,v,vb,null,servizi,c);
            crud.insertBiglietto(b);
        }
        return "index";
    }
}
