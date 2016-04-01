/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mappa;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Classe di mappa per un evento
 * @author matteo
 */
@Entity
@Table(name="VISITE_EVENTO")
public class VisitaEvento implements Serializable {
    
    //variabili di esemplare
    @Id @GeneratedValue
    @Column(name="id")
    private int id;
    
    @Column(name="titolo")
    private String titolo;
    
    @Column(name="tariffa")
    private double tariffa;
    
    @Column(name="descrizione")
    private String descrizione;
    
    @Column(name="dataI")
    private Date dataI;
    
    @Column(name="dataF")
    private Date dataF;
}//VisitaEvento
