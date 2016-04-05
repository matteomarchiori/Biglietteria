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
    private Set<Visitatore> visitatori;

    public Categoria() {
    }//costruttore vuoto
    
    public Categoria(String descrizione, String documento, int sconto) {
        this.descrizione = descrizione;
        this.documento = documento;
        this.sconto = sconto;
    }//costruttore

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
    
}//Categoria
