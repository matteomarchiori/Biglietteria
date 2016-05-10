/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import CRUD.CRUD;
import hibernate.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import mappa.VisitaEvento;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author matteo
 */
@Controller
public class ControllerQuery {
    private static CRUD crud;

    public ControllerQuery() {
        crud = new CRUD(HibernateUtil.getSessionFactory());
    }
    
    @RequestMapping(value="/query1", method=RequestMethod.GET)
    public String query1(ModelMap map){
        List<VisitaEvento> eventi = crud.selectEventi();
        List<Integer> nrBiglietti = new ArrayList<>();
        for(int i=0; i<eventi.size(); i++){
            int j = crud.contaBigliettiEvento(eventi.get(i).getId());
            nrBiglietti.add(j);
        }
        map.put("nrBiglietti", nrBiglietti);
        return "";
    }
}
