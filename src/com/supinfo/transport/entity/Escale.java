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


    @OneToMany (mappedBy = "voyage")
    private List<Voyage>escales;
    //station
    @ManyToOne
    private  Station escale;


}
