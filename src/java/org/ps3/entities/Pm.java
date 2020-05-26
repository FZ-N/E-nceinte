package org.ps3.entities;


import java.sql.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author FZ
 */
public class Pm {
    private Integer idb;
    private Date dated;
    private Date datef;
    private String statut;
    private Integer rv;
    private Date nrv;    

    public Pm() {
    }

    public Integer getIdb() {
        return idb;
    }

    public void setIdb(Integer idb) {
        this.idb = idb;
    }

    public Date getDated() {
        return dated;
    }

    public void setDated(Date dated) {
        this.dated = dated;
    }

    public Date getDatef() {
        return datef;
    }

    public void setDatef(Date datef) {
        this.datef = datef;
    }

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    public Integer getRv() {
        return rv;
    }

    public void setRv(Integer rv) {
        this.rv = rv;
    }

    public Date getNrv() {
        return nrv;
    }

    public void setNrv(Date nrv) {
        this.nrv = nrv;
    }
    
    
}
