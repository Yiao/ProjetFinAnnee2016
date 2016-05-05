package com.supinfo.transport.dao;

import com.supinfo.transport.entity.Users;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by sya on 3/6/2016.
 */
public class UsersDAO implements GenericDAO {
    @Override
    public Users rearch(String usernameSelected) {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT user From Users AS user where user.username= :userSelected");
        query.setParameter("userSelected",usernameSelected);
        return (Users) query.getSingleResult();
    }

    @Override
    public List read() {
        return null;
    }

    @Override
    public void update() {

    }

    @Override
    public void delect(Long idin) {

    }
}
