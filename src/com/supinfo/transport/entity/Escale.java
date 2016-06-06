package com.supinfo.transport.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Khalil on 30/04/2016.
 */
@Entity
public class Escale implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long escaleId;
    private float duree;
    private float start;
    private float end;
    //voyage

    @ManyToOne
    private Voyage voyage;

    //station
    @ManyToOne
    private  Station escale;

    public Long getEscaleId() {

        return escaleId;
    }

    public void setEscaleId(Long escaleId) {
        this.escaleId = escaleId;
    }

    public float getDuree() {
        return duree;
    }

    public void setDuree(float duree) {
        this.duree = duree;
    }

    public float getStart() {
        return start;
    }

    public void setStart(float start) {
        this.start = start;
    }

    public float getEnd() {
        return end;
    }

    public void setEnd(float end) {
        this.end = end;
    }

    public Voyage getVoyage() {
        return voyage;
    }

    public void setVoyage(Voyage voyage) {
        this.voyage = voyage;
    }

    public Station getEscale() {
        return escale;
    }

    public void setEscale(Station escale) {
        this.escale = escale;
    }
}
