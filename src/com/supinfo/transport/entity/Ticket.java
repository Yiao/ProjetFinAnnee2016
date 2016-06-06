package com.supinfo.transport.entity;

import com.google.gson.annotations.Expose;

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
    //private float price;
    private boolean oneWay;
   /* private enum adult{
        private boolean Valid,
        int number;
        //same for child ?
    }*/
    //valide ?
   private boolean isadult;
    private boolean status ;
    private float finalPrice;

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
