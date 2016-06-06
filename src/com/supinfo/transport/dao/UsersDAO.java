package com.supinfo.transport.dao;

import com.supinfo.transport.entity.Users;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;
import java.util.Objects;

/**
 * Created by sya on 3/6/2016.
 */
@Stateless
public class UsersDAO implements GenericDAO {
    @PersistenceContext

    EntityManager em;


    public Users search(String usernameSelected) {
        em = PersistenceManager.getEntityManagerFactory().createEntityManager();

        Query query = em.createQuery("SELECT user From Users AS user where user.username= :userSelected");
        query.setParameter("userSelected",usernameSelected);
        return (Users) query.getSingleResult();
    }

    @Override
    public Users search(long usernameSelected) {
        return null;
    }

    @Override
    public List<Users>read() {
        em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT user FROM Users AS user ");
        return query.getResultList();
    }




    public void update(String username ,String newfirstname,String newlastname,int newage,String newemail,String newpassword) {
         em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction t = em.getTransaction();
        Users oldUser = new Users();
        oldUser = search(username);
        long idUser = oldUser.getId();

        newfirstname = GetTestFirstName(newfirstname,oldUser);
        newlastname = GetTestLastName(newlastname,oldUser);
        newemail = GetTestEmail(newemail,oldUser);
        newpassword = GetTestPassword(newpassword,oldUser);
        newage   = GetTestage(newage,oldUser);

        Query query = em.createQuery("UPDATE Users u  SET firstName = :userfirstname , lastName = :userlastname,age = :userage,u.Email = :usermail, password = :userpassword where u.id = :myIdUser");

        query.setParameter("userfirstname",newfirstname);
        query.setParameter("userlastname",newlastname);
        query.setParameter("userage",newage);
        query.setParameter("usermail",newemail);
        query.setParameter("userpassword",newpassword);
        query.setParameter("myIdUser",idUser);


        saveUpdateChange(em,query,t);
    }

    @Override
    public void delete(Long idin) {

    }

    private int GetTestage(int agein,Users oldinfo)
    {
        if (agein!=oldinfo.getAge())
        {
            return agein;
        }
        return oldinfo.getAge();
    }

    private String GetTestFirstName(String firstNamein,Users oldinfo)
    {
        if (Objects.equals(firstNamein, ""))
        {
            return oldinfo.getFirstName();
        }
        return firstNamein;
    }

    private String GetTestLastName(String lastNamein,Users oldinfo)
    {
        if (Objects.equals(lastNamein, ""))
        {
            return oldinfo.getLastName();
        }
        return lastNamein;
    }

    private String GetTestEmail(String emailin,Users oldinfo)
    {
        if (Objects.equals(emailin, ""))
        {
            return oldinfo.getEmail();
        }
        return emailin;
    }
    private String GetTestPassword(String passWordin,Users oldinfo)
    {
        if (Objects.equals(passWordin, ""))
        {
            return oldinfo.getPassword();
        }
        return passWordin;
    }
}
