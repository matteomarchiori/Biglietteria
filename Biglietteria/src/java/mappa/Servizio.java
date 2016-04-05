/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mappa;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Classe di mappa per servizi extra
 * @author matteo
 */
@Entity
@Table(name="SERVIZI")
public class Servizio implements Serializable {
    
    //variabili di esemplare
    @Id @GeneratedValue
    @Column(name="codice")
    private int codice;
    
    @Column(name="descrizione")
    private String descrizione;
    
    @Column(name="prezzo")
    private double prezzo;

    /**
     * Costruttore vuoto
     */
    public Servizio() {
    }//Costruttore

    public Servizio(String descrizione, double prezzo) {
        this.descrizione = descrizione;
        this.prezzo = prezzo;
    }

    public int getCodice() {
        return codice;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setCodice(int codice) {
        this.codice = codice;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }
    
}//Servizio
