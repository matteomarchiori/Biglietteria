/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CRUD;

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
}