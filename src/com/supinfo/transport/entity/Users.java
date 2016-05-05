package com.supinfo.transport.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by sya on 3/6/2016.
 */
@Entity
@Table(name = "TAB_USERS")
public class Users implements Serializable {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id = null;
    private String username = null;
    private String password = null;

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
