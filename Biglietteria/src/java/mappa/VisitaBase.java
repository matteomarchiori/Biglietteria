/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mappa;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Classe di mappa per una visita base
 * @author matteo
 */
@Entity
@Table(name="VISITE_BASE")
public class VisitaBase implements Serializable {
    
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
    
    @OneToMany(mappedBy = "visitaBase")
    private Set<Biglietto> biglietti;

    public VisitaBase() {
    }

    public VisitaBase(String titolo, double tariffa, String descrizione, Set<Biglietto> biglietti) {
        this.titolo = titolo;
        this.tariffa = tariffa;
        this.descrizione = descrizione;
        this.biglietti = biglietti;
    }

    public int getId() {
        return id;
    }

    public String getTitolo() {
        return titolo;
    }

    public double getTariffa() {
        return tariffa;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public Set<Biglietto> getBiglietti() {
        return biglietti;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public void setTariffa(double tariffa) {
        this.tariffa = tariffa;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public void setBiglietti(Set<Biglietto> biglietti) {
        this.biglietti = biglietti;
    }

}//VisitaBase
