/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author esteban
 */
public class Calculation {
   
    private int id;
    private double weight;
    private double height;
    
    public Calculation(int id, double weight, double height){
        this.id = id;
        this.weight = weight;
        this.height = height;
    }
    
    public double getWeight(){
        return this.weight;
    }
    
    public double getHeight(){
        return this.height;
    }
    
    public void setHeight(double height){
        this.height = height;
    }
    
    public void setWeight(double weight){
        this.weight = weight;
    }
}
