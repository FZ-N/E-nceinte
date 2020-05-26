package org.ps3.entities;
import java.util.*;
public class Ambulance {
String matricule;
String disponibilite;
String etat;
String lieu_actuel;
String staff_medical;
String destination;
Date date_sortie;
Date date_retour;
public String getMatricule() {
	return matricule;
}
public void setMatricule(String matricule) {
	this.matricule = matricule;
}
public String getDisponibilite() {
	return disponibilite;
}
public void setDisponibilite(String disponibilite) {
	this.disponibilite = disponibilite;
}
public String getEtat() {
	return etat;
}
public void setEtat(String etat) {
	this.etat = etat;
}
public String getLieu_actuel() {
	return lieu_actuel;
}
public void setLieu_actuel(String lieu_actuel) {
	this.lieu_actuel = lieu_actuel;
}
public String getStaff_medical() {
	return staff_medical;
}
public void setStaff_medical(String staff_medical) {
	this.staff_medical = staff_medical;
}
public String getDestination() {
	return destination;
}
public void setDestination(String destination) {
	this.destination = destination;
}
public Date getDate_sortie() {
	return date_sortie;
}
public void setDate_sortie(Date date_sortie) {
	this.date_sortie = date_sortie;
}
public Date getDate_retour() {
	return date_retour;
}
public void setDate_retour(Date date_retour) {
	this.date_retour = date_retour;
}


}