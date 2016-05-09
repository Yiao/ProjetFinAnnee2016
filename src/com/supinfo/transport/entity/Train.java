package com.supinfo.transport.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Khalil on 30/04/2016.
 */
// khalil modification
@Entity

public class Train implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Long idTrain;

    @OneToMany (mappedBy = "train")
    private List<Voyage> Voyagelist;

    public Long getIdTrain() {
        return idTrain;
    }

    public void setIdTrain(Long idTrain) {
        this.idTrain = idTrain;
    }

    public List<Voyage> getVoyagelist() {
        return Voyagelist;
    }

    public void setVoyagelist(List<Voyage> voyagelist) {
        Voyagelist = voyagelist;
    }
}
