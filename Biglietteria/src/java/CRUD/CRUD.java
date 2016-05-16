/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CRUD;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import mappa.*;
import org.hibernate.SQLQuery;
import utili.Query1;

/**
 * Classe per operazioni Create Read Update Delete sul database
 */
public class CRUD {
    
    //variabili di esemplare
    private static SessionFactory factory;
    
    /**
     * Costruttore per un oggetto CRUD
     * @param factory : oggetto factory di default
     */
    public CRUD(SessionFactory factory){
        CRUD.factory = factory;
    }
    
    public void insertCategoria(Categoria c){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            sessione.save(c);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
    }
    
    public void insertVisitatore(Visitatore v){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            sessione.save(v);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
    }
    
    public void insertCarta(CartaDiCredito c){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            sessione.save(c);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
    }
    
    public void insertBiglietto(Biglietto b){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            sessione.save(b);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
    }
    
    public void insertVisitaBase(VisitaBase vb){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            sessione.save(vb);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
    }
    
     public List selectVisitatori(){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from VISITATORI").addEntity(Visitatore.class);
            List<Visitatore> visitatori = query.list();
            transazione.commit();
            return visitatori;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
     
    public Visitatore selectVisitatore(Integer numero){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from VISITATORI where numero = "+numero+";").addEntity(Visitatore.class);
            Visitatore v = null;
            if(!query.list().isEmpty()) v = (Visitatore) query.list().get(0);
            transazione.commit();
            return v;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public Visitatore selectVisitatore(String mail){
       Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from VISITATORI where mail = \""+mail+"\";").addEntity(Visitatore.class);
            Visitatore v = null;
            if(!query.list().isEmpty()) v = (Visitatore) query.list().get(0);
            transazione.commit();
            return v;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public Visitatore selectEmail(String parziale){
        if(parziale.equals("")) return null;
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from VISITATORI where mail like \""+parziale+"%\";").addEntity(Visitatore.class);
            Visitatore v = null;
            if(!query.list().isEmpty()) v = (Visitatore) query.list().get(0);
            transazione.commit();
            return v;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public List selectCategorie(){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from CATEGORIE").addEntity(Categoria.class);
            List<Categoria> categorie = query.list();
            transazione.commit();
            return categorie;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public Categoria selectCategoria(Integer codice){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from CATEGORIE where codice = "+codice+";").addEntity(Categoria.class);
            Categoria c = null;
            if(!query.list().isEmpty()) c = (Categoria) query.list().get(0);
            transazione.commit();
            return c;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public Categoria selectCategoria(String descrizione){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from CATEGORIE where descrizione = \""+descrizione+"\";").addEntity(Categoria.class);
            Categoria c = null;
            if(!query.list().isEmpty()) c = (Categoria) query.list().get(0);
            transazione.commit();
            return c;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public List selectCarte(){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from CARTEDICREDITO").addEntity(CartaDiCredito.class);
            List<CartaDiCredito> carte = query.list();
            transazione.commit();
            return carte;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public CartaDiCredito selectCarta(String numero){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            CartaDiCredito c = null;
            query = sessione.createSQLQuery("select * from CARTEDICREDITO where numero = \""+numero+"\";").addEntity(CartaDiCredito.class);
            if(!query.list().isEmpty()) c = (CartaDiCredito) query.list().get(0);
            transazione.commit();
            return c;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public List selectServizi(){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from SERVIZI;").addEntity(Servizio.class);
            List<Servizio> servizi = query.list();
            transazione.commit();
            return servizi;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public List selectEventi(){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("select * from VISITE_EVENTO;").addEntity(VisitaEvento.class);
            List<VisitaEvento> eventi = query.list();
            transazione.commit();
            return eventi;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public Servizio selectServizio(String descrizione){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            Servizio s = null;
            query = sessione.createSQLQuery("select * from SERVIZI where descrizione = \""+descrizione+"\";").addEntity(Servizio.class);
            if(!query.list().isEmpty()) s = (Servizio) query.list().get(0);
            transazione.commit();
            return s;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public VisitaEvento selectVisitaEvento(String titolo){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            VisitaEvento evento = null;
            query = sessione.createSQLQuery("select * from VISITE_EVENTO where titolo = \""+titolo+"\";").addEntity(VisitaEvento.class);
            if(!query.list().isEmpty()) evento = (VisitaEvento) query.list().get(0);
            transazione.commit();
            return evento;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public VisitaBase selectVisitaBase(String titolo){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            VisitaBase visita = null;
            query = sessione.createSQLQuery("select * from VISITE_BASE where titolo = \""+titolo+"\";").addEntity(VisitaBase.class);
            if(!query.list().isEmpty()) visita = (VisitaBase) query.list().get(0);
            transazione.commit();
            return visita;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public List<Query1> query1(int anno){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("SELECT titolo, dataI, dataF from VISITE_EVENTO where dataI >= '"+anno+"-01-01' and dataF <= '"+anno+"-12-31';");
            List<Object[]> righe = query.list();
            ArrayList<Query1> risultato = new ArrayList<>();
            String t;
            Date di,df;
            for(Object[] riga : righe){
                Query1 q = new Query1((String)riga[0],(Date)riga[1],(Date)riga[2]);
                risultato.add(q);
            }
            transazione.commit();
            return risultato;
        }catch(HibernateException i){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public int query2(VisitaEvento e){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("SELECT COUNT(*) from BIGLIETTI where visitaE = "+e.getId()+";");
            transazione.commit();
            return ((Number)query.uniqueResult()).intValue();
        }catch(HibernateException i){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return 0;
    }
    
    public double query3(VisitaEvento e){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("SELECT SUM(tariffa) FROM (SELECT (tariffa-((tariffa*sconto)/100)) AS tariffa FROM (BIGLIETTI  B INNER JOIN VISITE_EVENTO V ON B.visitaE = V.id) INNER JOIN CATEGORIE C ON B.categoria = C.codice WHERE visitaE = "+e.getId()+")AS tmp;");
            transazione.commit();
            return ((Number)query.uniqueResult()).doubleValue();
        }catch(HibernateException i){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return 0;
    }
    
    public List<Biglietto> query4(String email){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        SQLQuery query;
        try{
            transazione = sessione.beginTransaction();
            query = sessione.createSQLQuery("SELECT * from BIGLIETTI B,VISITATORI V where B.visitatore = V.numero and V.mail = \""+email+"\" ORDER BY dataV DESC;").addEntity(Biglietto.class);
            transazione.commit();
            return query.list();
        }catch(HibernateException i){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }

}