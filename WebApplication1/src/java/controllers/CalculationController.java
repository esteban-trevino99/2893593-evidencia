/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import models.Calculation;

/**
 *
 * @author esteban
 */
 
@Controller
@RequestMapping("/rest-app")
public class CalculationController {
    
    @RequestMapping(value = "/{messageStr}", method = RequestMethod.GET)
    public String firstActionMethod(@PathVariable String messageStr, ModelMap mdlMap){
         
        mdlMap.addAttribute("message", "My First Spring MVC REST Application: "+messageStr);
        return "helloWorld";
    }
}
