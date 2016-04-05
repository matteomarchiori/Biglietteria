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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author dorado3349
 */
@Entity
@Table(name="CARTEDICREDITO")
public class CartadiCredito {
    
    //variabili esemplare
    
    @Id @GeneratedValue
    @Column(name="numero")
    private int numeroCarta;

    @Column(name="tipo")
    private String tipoCarta;
    
    @Column(name="scadenza")
    private Date scadenza;
    
    @Column(name="descrizione")
    private String descrizione;
    
    @OneToMany
    private Set<Visitatore> visitatori;

    public CartadiCredito() {
    }//costruttore

    public CartadiCredito(String tipoCarta, Date scadenza, String descrizione) {
        this.tipoCarta = tipoCarta;
        this.scadenza = scadenza;
        this.descrizione = descrizione;
    }//costruttore

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
    
    
    

}
