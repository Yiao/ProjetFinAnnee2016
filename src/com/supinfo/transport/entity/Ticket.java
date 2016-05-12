package com.supinfo.transport.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by sya on 3/6/2016.
 */
// khalil modification
//ticket = reservation ?
@Entity

public class Ticket implements Serializable {


    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Long id = null;
    private  String ticketClass;
    private float price;
    boolean status ;
//1 user * tckets
    @ManyToOne
    private Users users;
    //1 Trip * tickets
    @ManyToOne
    private Voyage voyage;

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Long getId() {
        return id;
    }


    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Voyage getVoyage() {
        return voyage;
    }

    public void setVoyage(Voyage voyage) {
        this.voyage = voyage;
    }

}
