package com.supinfo.transport.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by sya on 3/6/2016.
 */
@Entity
@Table(name = "TAB_TICKETS")
public class Ticket implements Serializable {
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Long id = null;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
