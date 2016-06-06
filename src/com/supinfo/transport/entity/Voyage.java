package com.supinfo.transport.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by Khalil on 30/04/2016.
 */@Entity
// khalil modification
public class Voyage  implements Serializable {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idVoyage ;
    private Date departureDate;  //type Date contien deja lheure pas besoin dheure time
    private Date arrivalDate;
   // private  float departureHour;
  //  private float arrivalHour;
    //private  Boolean status;//on a pas besoin de ça
   // private  String Train;//table train
   // private  Boolean  escale; si ya pas descale fk_id_escale = null pas besoin de bool

//1 voyage plusieur tickets prix)
    @OneToMany(mappedBy = "voyage")
    private List<Ticket> userTickets;
    //* voyage 1 escale.stationEscaale
    @OneToMany (mappedBy = "voyage")
    private List<Escale>escales;
    //1 voyage * station depart
    @ManyToOne
    private Station departureVoyage;
    @ManyToOne
    private Station arrivalVoyage;
    //* voyage 1 train
    @ManyToOne
    private  Train train;


    public Long getIdVoyage() {
        return idVoyage;
    }

    public void setIdVoyage(Long idVoyage) {
        this.idVoyage = idVoyage;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public Date getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(Date arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public List<Ticket> getUserTickets() {
        return userTickets;
    }

    public void setUserTickets(List<Ticket> userTickets) {
        this.userTickets = userTickets;
    }

    public List<Escale> getEscales() {
        return escales;
    }

    public void setEscales(List<Escale> escales) {
        this.escales = escales;
    }

    public Station getDepartureVoyage() {
        return departureVoyage;
    }

    public void setDepartureVoyage(Station departureVoyage) {
        this.departureVoyage = departureVoyage;
    }

    public Station getArrivalVoyage() {
        return arrivalVoyage;
    }

    public void setArrivalVoyage(Station arrivalVoyage) {
        this.arrivalVoyage = arrivalVoyage;
    }

    public Train getTrain() {
        return train;
    }

    public void setTrain(Train train) {
        this.train = train;
    }
}
