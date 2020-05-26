/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ps3.entities;

/**
 *
 * @author FZ
 */

public class benef {
int num_menage;

    public int getNum_menage() {
        return num_menage;
    }

    public void setNum_menage(int num_menage) {
        this.num_menage = num_menage;
    }
String CIN;
String nom;
String prenom;
String nom_pere;
String nom_mere;
String test_gro;
int nbr_enfants;
String observations;
String adr;

    public String getAdr() {
        return adr;
    }

    public void setAdr(String adr) {
        this.adr = adr;
    }


    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

public String getCIN() {
	return CIN;
}
public void setCIN(String cIN) {
	CIN = cIN;
}
public String getNom_pere() {
	return nom_pere;
}
public void setNom_pere(String nom_pere) {
	this.nom_pere = nom_pere;
}
public String getNom_mere() {
	return nom_mere;
}
public void setNom_mere(String nom_mere) {
	this.nom_mere = nom_mere;
}
public String getTest_gro() {
	return test_gro;
}
public void setTest_gro(String test_gro) {
	this.test_gro = test_gro;
}
public int getNbr_enfants() {
	return nbr_enfants;
}
public void setNbr_enfants(int nbr_enfants) {
	this.nbr_enfants = nbr_enfants;
}
public String getObservations() {
	return observations;
}
public void setObservations(String observations) {
	this.observations = observations;
}
}

