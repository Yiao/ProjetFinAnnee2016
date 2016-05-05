package com.supinfo.transport.dao;

import com.supinfo.transport.entity.Users;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.List;

/**
 * Created by sya on 3/6/2016.
 */
public interface GenericDAO {
    Users rearch(String usernameSelected);
    default void  create(Object o)
    {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction t = em.getTransaction();
        try
        {
            t.begin();
            em.persist(o);
            t.commit();
        }
        finally
        {
            if (t.isActive()) t.rollback();
            em.close();
        }
    }
    List read();
    void update();
    void delect(Long idin);
}
