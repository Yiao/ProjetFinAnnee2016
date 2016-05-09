package com.supinfo.transport.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.security.PrivateKey;
import java.util.List;

/**
 * Created by sya on 3/6/2016.
 */
// khalil modification
@Entity
public class Users implements Serializable {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id = null;
    private String username = null;
    private String password = null;
    private String Email;
    private int age ;
    private String firstName;
    private String lastName;

    //1 client * reservation
    @OneToMany(mappedBy = "users")
    private List<Ticket> userTicket;
    


    public Users(){
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
