/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mappa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author dorado3349
 */
@Entity
@Table(name="VISITATORI")
public class Visitatore {
    //variabili
    @Id @GeneratedValue
    @Column(name="numero")
    private int numero;
    
    @Column(name="mail")
    private String mail;
    
    @Column(name="password")
    private String password;
    
    @ManyToOne
    private Categoria categoria;
    
    @ManyToOne
    private CartadiCredito carta;

    public Visitatore() {
    }//costruttore vuoto
    
    public Visitatore(String mail, String password, Categoria categoria, CartadiCredito carta) {
        this.mail = mail;
        this.password = password;
        this.categoria = categoria;
        this.carta = carta;
    }//costruttore

    public int getNumero() {
        return numero;
    }

    public String getMail() {
        return mail;
    }

    public String getPassword() {
        return password;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public CartadiCredito getCarta() {
        return carta;
    }
    
}//Visitatore
