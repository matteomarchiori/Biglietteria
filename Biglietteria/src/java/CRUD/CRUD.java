/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CRUD;

import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import mappa.*;
import org.hibernate.SQLQuery;

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
        List visitatori = selectVisitatori();
        Visitatore v;
        for(Iterator i = visitatori.iterator();i.hasNext();){
            v = (Visitatore)i.next();
            if(v.getNumero()==numero)return v;
        }
        return null;
    }
    
    public Visitatore selectVisitatore(String mail){
        List visitatori = selectVisitatori();
        Visitatore v;
        for(Iterator i = visitatori.iterator();i.hasNext();){
            v = (Visitatore)i.next();
            if(v.getMail().equals(mail))return v;
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
        List categorie = selectCategorie();
        Categoria c;
        for(Iterator i = categorie.iterator();i.hasNext();){
            c = (Categoria)i.next();
            if(c.getCodice()==codice)return c;
        }
        return null;
    }
}