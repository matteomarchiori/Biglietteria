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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author dorado3349
 */
@Entity
@Table(name="VISITATORI")
public class Visitatore implements Serializable{
    //variabili
    @Id @GeneratedValue
    @Column(name="numero")
    private int numero;
    
    @Column(name="mail")
    private String mail;
    
    @Column(name="password")
    private String password;
    
    @ManyToOne
    @JoinColumn(name="carta")
    private CartaDiCredito carta;
    
    @OneToMany(mappedBy="biglietto")
    private Set<Biglietto> biglietti;

    public Visitatore() {
    }

    public Visitatore(String mail, String password, CartaDiCredito carta, Set<Biglietto> biglietti) {
        this.mail = mail;
        this.password = password;
        this.carta = carta;
        this.biglietti = biglietti;
    }

    public int getNumero() {
        return numero;
    }

    public String getMail() {
        return mail;
    }

    public String getPassword() {
        return password;
    }

    public CartaDiCredito getCarta() {
        return carta;
    }

    public Set<Biglietto> getBiglietti() {
        return biglietti;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setCarta(CartaDiCredito carta) {
        this.carta = carta;
    }

    public void setBiglietti(Set<Biglietto> biglietti) {
        this.biglietti = biglietti;
    }

}//Visitatore
