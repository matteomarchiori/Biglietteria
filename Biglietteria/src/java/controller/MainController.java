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
import java.util.List;

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
    
    @RequestMapping(value="/login", method= RequestMethod.GET)
    public String login(){
       return "login";
    }
    
    @RequestMapping(value="/log", method= RequestMethod.GET)
    public String log(){
       return "log";
    }
    
    @RequestMapping(value="/about", method= RequestMethod.GET)
    public String about(){
       return "about";
    }
    
    @RequestMapping(value="/register", method= RequestMethod.GET)
    public String register(){
        return "register";
    }
    
    @RequestMapping(value="/registration", method= RequestMethod.POST)
    public String registrazioneAvvenuta(@RequestParam(value="email") String email,@RequestParam(value="password") String password){
        Visitatore v = new Visitatore(email,password,null,null);
        crud.insertVisitatore(v);
        return "registration";
    }
}
