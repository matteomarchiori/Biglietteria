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
    
    @Id
    @Column(name="numero")
    private String numeroCarta;

    @Column(name="tipo")
    private String tipoCarta;
    
    @Column(name="scadenza")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date scadenza;
    
    @OneToMany(mappedBy="carta")
    private Set<Visitatore> visitatori;

    public CartaDiCredito() {
    }//costruttore

    public CartaDiCredito(String tipoCarta, Date scadenza, Set<Visitatore> visitatori) {
        this.tipoCarta = tipoCarta;
        this.scadenza = scadenza;
        this.visitatori = visitatori;
    }

    public String getNumeroCarta() {
        return numeroCarta;
    }

    public String getTipoCarta() {
        return tipoCarta;
    }

    public Date getScadenza() {
        return scadenza;
    }

    public Set<Visitatore> getVisitatori() {
        return visitatori;
    }

    public void setNumeroCarta(String numeroCarta) {
        this.numeroCarta = numeroCarta;
    }

    public void setTipoCarta(String tipoCarta) {
        this.tipoCarta = tipoCarta;
    }

    public void setScadenza(Date scadenza) {
        this.scadenza = scadenza;
    }

    public void setVisitatori(Set<Visitatore> visitatori) {
        this.visitatori = visitatori;
    }

}//CartaDiCredito
