/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mappa;

import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author dorado3349
 */
@Entity
@Table(name="BIGLIETTI")
public class Biglietto {
    
    //variabili
    @Id @GeneratedValue
    @Column(name="codice")
    private int codice;
    
    @Column(name="dataV")
    private Date data;
    
    @ManyToOne
    private Visitatore visitatore;
    
    @ManyToOne
    private VisitaBase visitaBase;
    
    @ManyToOne
    private VisitaEvento visitaEvento;
    
    @ManyToMany
    @JoinTable(
            name="S_B",
            joinColumns = {@JoinColumn(name = "codB")},
            inverseJoinColumns = {@JoinColumn(name = "codS")}
    )
    private Set<Servizio> servizi;

    public Biglietto() {
    }//costruttore vuoto

    public Biglietto(Date data, Visitatore visitatore, VisitaBase visitaBase, VisitaEvento visitaEvento, Set<Servizio> servizi) {
        this.data = data;
        this.visitatore = visitatore;
        this.visitaBase = visitaBase;
        this.visitaEvento = visitaEvento;
        this.servizi = servizi;
    }//costruttore

    public int getCodice() {
        return codice;
    }

    public Date getData() {
        return data;
    }

    public Visitatore getVisitatore() {
        return visitatore;
    }

    public VisitaBase getVisitaBase() {
        return visitaBase;
    }

    public VisitaEvento getVisitaEvento() {
        return visitaEvento;
    }

    public Set<Servizio> getServizi() {
        return servizi;
    }
    
    
    
}
