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
    /*
    public List leggiDipartimenti(){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            List dipartimenti = sessione.createQuery("FROM Dipartimento").list();
            transazione.commit();
            return dipartimenti;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public Dipartimento leggiDipartimento(Integer id){
        List dipartimenti = leggiDipartimenti();
        Dipartimento d;
        for(Iterator i = dipartimenti.iterator();i.hasNext();){
            d = (Dipartimento)i.next();
            if(d.getId()==id)return d;
        }
        return null;
    }
    
    public void modificaDipartimento(Integer id, String nome){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            Dipartimento d = (Dipartimento) sessione.get(Dipartimento.class,id);
            d.setNome(nome);
            sessione.update(d);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
    }
    
    public void eliminaDipartimento(Integer id){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            Dipartimento d = (Dipartimento) sessione.get(Dipartimento.class, id);
            sessione.delete(d);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
    }
    
    public void aggiungiPersona(Persona p){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            sessione.save(p);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null)transazione.rollback();
        }
        finally{
            sessione.close();
        }
    }
    
    public List leggiPersone(){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            List jobs = sessione.createQuery("FROM Persona").list();
            transazione.commit();
            return jobs;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public Persona leggiPersona(Integer id){
        List jobs = leggiPersone();
        Persona p;
        for(Iterator i = jobs.iterator();i.hasNext();){
            p = (Persona)i.next();
            if(p.getId()==id)return p;
        }
        return null;
    }
    
    public void aggiungiJob(Job j){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            sessione.save(j);
            transazione.commit();
        }catch(HibernateException e){
            if(transazione!=null)transazione.rollback();
        }
        finally{
            sessione.close();
        }
    }
    
    public List leggiJobs(){
        Session sessione = factory.openSession();
        Transaction transazione = null;
        try{
            transazione = sessione.beginTransaction();
            List jobs = sessione.createQuery("FROM Job").list();
            transazione.commit();
            return jobs;
        }catch(HibernateException e){
            if(transazione!=null) transazione.rollback();
        }finally{
            sessione.close();
        }
        return null;
    }
    
    public Job leggiJob(Integer id){
        List jobs = leggiJobs();
        Job j;
        for(Iterator i = jobs.iterator();i.hasNext();){
            j = (Job)i.next();
            if(j.getId()==id)return j;
        }
        return null;
    }
*/
    
}//CRUD
