/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mappa;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author dorado3349
 */
@Entity
@Table(name="CARTEDICREDITO")
public class CartaDiCredito implements Serializable {
    
    //variabili esemplare
    
    @Id @GeneratedValue
    @Column(name="numero")
    private int numeroCarta;

    @Column(name="tipo")
    private String tipoCarta;
    
    @Column(name="scadenza")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date scadenza;
    
    @Column(name="descrizione")
    private String descrizione;
    
    @OneToMany(mappedBy="carta")
    private Set<Visitatore> visitatori;

    public CartaDiCredito() {
    }//costruttore

    public CartaDiCredito(String tipoCarta, Date scadenza, String descrizione, Set<Visitatore> visitatori) {
        this.tipoCarta = tipoCarta;
        this.scadenza = scadenza;
        this.descrizione = descrizione;
        this.visitatori = visitatori;
    }

    public int getNumeroCarta() {
        return numeroCarta;
    }

    public String getTipoCarta() {
        return tipoCarta;
    }

    public Date getScadenza() {
        return scadenza;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public Set<Visitatore> getVisitatori() {
        return visitatori;
    }

    public void setNumeroCarta(int numeroCarta) {
        this.numeroCarta = numeroCarta;
    }

    public void setTipoCarta(String tipoCarta) {
        this.tipoCarta = tipoCarta;
    }

    public void setScadenza(Date scadenza) {
        this.scadenza = scadenza;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public void setVisitatori(Set<Visitatore> visitatori) {
        this.visitatori = visitatori;
    }

}//CartaDiCredito
