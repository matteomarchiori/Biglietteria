/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author W8
 */
@Controller
public class MainController {
    
   

    public MainController() {
        
    }
    
    
    
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(ModelMap map){
       return null;
    }
    
    @RequestMapping(value="/visionaLibro", params = {"id"},method= RequestMethod.GET)
    public String jora(ModelMap map, @RequestParam(value="id") int id){
        return null;
    }
}
