/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import CRUD.CRUD;
import hibernate.HibernateUtil;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import mappa.Biglietto;
import mappa.VisitaEvento;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import utili.Query1;

/**
 *
 * @author matteo
 */
@Controller
public class ControllerQuery {

    private static CRUD crud;

    public ControllerQuery() {
        crud = new CRUD(HibernateUtil.getSessionFactory());
    }

    @RequestMapping(value = "/query1", method = RequestMethod.GET)
    public @ResponseBody
    String query1(@RequestParam(value = "anno") int anno) {
        String res = "<table class='table table-bordered'><tr><th>Evento</th><th>Data inizio</th><th>Data fine</th></tr>";
        List<Query1> eventi = crud.query1(anno);
        String t;
        Date di, df;
        for (Query1 q : eventi) {
            t = q.getTitolo();
            di = q.getDataI();
            df = q.getDataF();
            res += "<tr><td>" + t + "</td><td>" + di + "</td><td>" + df + "</td></tr>";
        }
        res += "</table>";
        return res;
    }

    @RequestMapping(value = "/query2", method = RequestMethod.GET)
    public @ResponseBody
    String query2() {
        String res = "<table class='table table-bordered'><tr><th>Evento</th><th>Biglietti venduti</th></tr>";
        List<VisitaEvento> eventi = crud.selectEventi();
        for (int i = 0; i < eventi.size(); i++) {
            int j = crud.query2(eventi.get(i));
            res += "<tr><td>" + eventi.get(i).getTitolo() + "</td><td>" + j + "</td></tr>";
        }
        res += "</table>";
        return res;
    }

    @RequestMapping(value = "/query3", method = RequestMethod.GET)
    public @ResponseBody
    String query3(@RequestParam(value = "titolo") String titolo) {
        String res = "<table class='table table-bordered'><tr><th>Evento</th><th>Ricavo</th></tr>";
        VisitaEvento evento = crud.selectVisitaEvento(titolo);
        res += "<tr><td>" + titolo + "</td><td> € " + crud.query3(evento) + "</td></tr></table>";
        return res;
    }

    @RequestMapping(value = "/query4", method = RequestMethod.GET)
    public @ResponseBody
    String query4(HttpSession session) {
        if (session.getAttribute("email") == null) {
            return "<div>Prima effettuare il login.</div>";
        }
        String res = "<table class='table table-bordered'><tr><th>Nr biglietto</th><th>Tipo</th><th>Nome</th><th>Data</th><th>Categoria</th></tr>";
        List<Biglietto> biglietti = crud.query4((String) session.getAttribute("email"));
        String titolo, tipo;
        for (int i = 0; i < biglietti.size(); i++) {
            Biglietto b = biglietti.get(i);
            if (b.getVisitaEvento() != null) {
                tipo = "Evento";
                titolo = b.getVisitaEvento().getTitolo();
            } else {
                tipo = "Visita normale";
                titolo = b.getVisitaBase().getTitolo();
            }
            res += "<tr><td>" + (i + 1) + "</td><td>" + tipo + "</td><td>" + titolo + "</td><td>" + b.getData().getDate() + "-" + (b.getData().getMonth() + 1) + "-" + (b.getData().getYear() + 1900) + "</td><td>" + b.getCategoria().getDescrizione() + "</td></tr>";
        }
        res += "</table>";
        return res;
    }
}
