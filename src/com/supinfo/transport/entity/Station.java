package com.supinfo.transport.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Khalil on 30/04/2016.
 */
// khalil modification
@Entity

public class Station implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idStation ;
    private String stationName;
    private  String stationTown;


    @OneToMany (mappedBy = "departureVoyage")
    private List<Voyage> departureStationList;
    //1 voyage * station arrivee
    @OneToMany (mappedBy="arrivalVoyage")
    private  List<Voyage> arrivalStationList;

    //escale
    @OneToMany (mappedBy = "escale")
    private List<Escale>stationList;

    public Long getIdStation() {
        return idStation;
    }

    public void setIdStation(Long idStation) {
        this.idStation = idStation;
    }

    public String getStationName() {
        return stationName;
    }

    public void setStationName(String stationName) {
        this.stationName = stationName;
    }

    public String getStationTown() {
        return stationTown;
    }

    public void setStationTown(String stationTown) {
        this.stationTown = stationTown;
    }

    public List<Voyage> getDepartureStationList() {
        return departureStationList;
    }

    public void setDepartureStationList(List<Voyage> departureStationList) {
        this.departureStationList = departureStationList;
    }

    public List<Voyage> getArrivalStationList() {
        return arrivalStationList;
    }

    public void setArrivalStationList(List<Voyage> arrivalStationList) {
        this.arrivalStationList = arrivalStationList;
    }

    public List<Escale> getStationList() {
        return stationList;
    }

    public void setStationList(List<Escale> stationList) {
        this.stationList = stationList;
    }
}
