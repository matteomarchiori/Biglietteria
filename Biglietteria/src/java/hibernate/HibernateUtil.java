package hibernate;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import mappa.*;

/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author matteo
 */
public class HibernateUtil {

    private static SessionFactory sessionFactory;
    
    public static SessionFactory getSessionFactory() {
        Configuration configuration = new Configuration()
                .addAnnotatedClass(Biglietto.class)
                .addAnnotatedClass(CartaDiCredito.class)
                .addAnnotatedClass(Categoria.class)
                .addAnnotatedClass(Servizio.class)
                .addAnnotatedClass(VisitaBase.class)
                .addAnnotatedClass(VisitaEvento.class)
                .addAnnotatedClass(Visitatore.class)
                .configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
        applySettings(configuration.getProperties());
        sessionFactory = configuration.buildSessionFactory(builder.build());
        return sessionFactory;
    }
}
