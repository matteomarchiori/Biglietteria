/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import CRUD.CRUD;
import hibernate.HibernateUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import mappa.CartaDiCredito;
import mappa.Servizio;
import mappa.VisitaEvento;
import mappa.Visitatore;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author matteo
 */
@Controller
public class ControllerTutti {
    
    private static CRUD crud;

    public ControllerTutti() {
        crud = new CRUD(HibernateUtil.getSessionFactory());
    }
    
    @RequestMapping(value="/registration", params = {"email","password","numeroCarta","tipoCarta","scadenzaMM","scadenzaYY"},method= RequestMethod.POST)
    public String registration(@RequestParam(value="email") String email,@RequestParam(value="password") String password, @RequestParam(value="numeroCarta") String numeroCarta, @RequestParam(value="tipoCarta") String tipoCarta, @RequestParam(value="scadenzaMM") int mm, @RequestParam(value="scadenzaYY") int yy){
        CartaDiCredito c = crud.selectCarta(numeroCarta);
        if(c!=null){
            Visitatore v = new Visitatore(email,password,c,null);
            crud.insertVisitatore(v);
        }
        else{
            Date scadenza = new Date(100+yy,mm-1,1);
            CartaDiCredito carta = new CartaDiCredito(numeroCarta,tipoCarta,scadenza,null);
            Visitatore v = new Visitatore(email,password,carta,null);
            Set<Visitatore> visitatori = new HashSet<>();
            visitatori.add(v);
            carta.setVisitatori(visitatori);
            crud.insertCarta(carta);
            crud.insertVisitatore(v);
        } 
        return "index";
    }
    
    @RequestMapping(value="/registrazione", method= RequestMethod.GET)
    public String registrazione(){
       return "registrazione";
    }
    
    @RequestMapping(value="/tours", method=RequestMethod.GET)
    public String tours(ModelMap map){
        List<Servizio> servizi = crud.selectServizi();
        for(int i=0;i<servizi.size();i++){
           map.put("servizio"+(i+1), servizi.get(i));
        }
        List<VisitaEvento> eventi = crud.selectEventi();
        map.put("eventi", eventi);
        return "tours";
    }
    
    @RequestMapping(value="/contact", method=RequestMethod.GET)
    public String contact(){
        return "contact";
    }
    
    @RequestMapping(value="/about", method= RequestMethod.GET)
    public String about(){
       return "about";
    }
}
