/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import CRUD.CRUD;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import mappa.*;
import hibernate.*;

@Controller
public class MainController {
    
   private static CRUD crud;

    public MainController() {
        crud = new CRUD(HibernateUtil.getSessionFactory());
    }
    
    
    
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(){
       return "index";
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
    public String registrazioneAvvenuta(ModelMap map, @RequestParam(value="email") String email,@RequestParam(value="password") String password){
        Visitatore v = new Visitatore(email,password,null,null);
        map.put("v", v);
        crud.insertVisitatore(v);
        return "registration";
    }
}
