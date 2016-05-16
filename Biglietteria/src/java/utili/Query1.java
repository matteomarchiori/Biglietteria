/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utili;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author matteo
 */

public class Query1 implements Serializable{
    
    private String titolo;
    private Date dataI;
    private Date dataF;
    
    public Query1(){
    }

    public Query1(String titolo, Date dataI, Date dataF) {
        this.titolo = titolo;
        this.dataI = dataI;
        this.dataF = dataF;
    }

    public String getTitolo() {
        return titolo;
    }

    public Date getDataI() {
        return dataI;
    }

    public Date getDataF() {
        return dataF;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public void setDataI(Date dataI) {
        this.dataI = dataI;
    }

    public void setDataF(Date dataF) {
        this.dataF = dataF;
    }
    
}
