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
 * Classe di mappa per entità categoria
 * @author matteo
 */
@Entity
@Table(name="CATEGORIE")
public class Categoria implements Serializable {
    
//varibili di esemplare
    
    @Id @GeneratedValue
    @Column(name="codice")
    private int codice;
    
    @Column(name="descrizione")
    private String descrizione;
    
    @Column(name="documento")
    private String documento;

    @Column(name="sconto")
    private int sconto;
    
    @OneToMany(mappedBy="categoria")
    private Set<Biglietto> biglietti;

    public Categoria() {
    }//costruttore vuoto

    public Categoria(String descrizione, String documento, int sconto, Set<Biglietto> biglietti) {
        this.descrizione = descrizione;
        this.documento = documento;
        this.sconto = sconto;
        this.biglietti = biglietti;
    }

    public int getCodice() {
        return codice;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public String getDocumento() {
        return documento;
    }

    public int getSconto() {
        return sconto;
    }

    public Set<Biglietto> getBiglietti() {
        return biglietti;
    }

    public void setCodice(int codice) {
        this.codice = codice;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public void setSconto(int sconto) {
        this.sconto = sconto;
    }

    public void setBiglietti(Set<Biglietto> biglietti) {
        this.biglietti = biglietti;
    }

}//Categoria
