/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import CRUD.CRUD;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import mappa.*;
import hibernate.*;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpSession;

@Controller
public class MainController {
    
   private static CRUD crud;

    public MainController() {
        crud = new CRUD(HibernateUtil.getSessionFactory());
    }
    
    
    
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(ModelMap map){
       List<Categoria> categorie = crud.selectCategorie();
       for(int i=0;i<categorie.size();i++){
           map.put("categoria"+(i+1), categorie.get(i));
       }
       return "index";
    }
    
    @RequestMapping(value="/index", method= RequestMethod.GET)
    public String index2(ModelMap map){
       List<Categoria> categorie = crud.selectCategorie();
       for(int i=0;i<categorie.size();i++){
           map.put("categoria"+(i+1), categorie.get(i));
       }
       return "index";
    }
    
    @RequestMapping(value="/login", method= RequestMethod.GET)
    public String login(){
       return "login";  
    }
    
    @RequestMapping(value = "/log", params = {"email","password"}, method = RequestMethod.POST)
    public String log(@RequestParam(value="email") String email,@RequestParam(value="password") String password,HttpSession session){
       Visitatore v = crud.selectVisitatore(email);
       if (v!=null){
           if(v.getPassword().equals(password)) {
               session.setAttribute("email", email);
               session.setAttribute("password", password);
               return "acquisto";
           }
           else return "registrazione";
       } return "registrazione";  
    }
    
    @RequestMapping(value="/about", method= RequestMethod.GET)
    public String about(){
       return "about";
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
    public String tours(){
        return "tours";
    }
    
    @RequestMapping(value="/contact", method=RequestMethod.GET)
    public String contact(){
        return "contact";
    }
}
