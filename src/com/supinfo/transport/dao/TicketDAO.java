package com.supinfo.transport.dao;
import com.supinfo.transport.entity.Ticket;
import com.supinfo.transport.entity.Users;
import com.supinfo.transport.entity.Voyage;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by Khalil on 30/04/2016.
 */
public class TicketDAO implements GenericDAO {

    public void addReservation(Users thisUser, Voyage thisTrip) {

        Ticket reservation = new Ticket();
        reservation.setUsers(thisUser);
        reservation.setVoyage(thisTrip);
        create(reservation);


    }
    @Override
    public Users search(String usernameSelected) {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT user From Users AS user where user.username= :userSelected");
        query.setParameter("userSelected",usernameSelected);
        return (Users) query.getSingleResult();
    }

    @Override
    public List read() {
        return null;
    }

    @Override//valider reservation
    public void update(long id)
    {
         EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction t = em.getTransaction();
        Query query = em.createQuery("UPDATE Ticket ticket  SET ticket.status = true where ticket.id= :tripID ");
        query.setParameter("tripID",id);
        saveUpdateChange(em,query,t);


    }


    public List<Ticket> getMyReservations(Long idUser)
    {
        //
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT ticket from Ticket AS ticket where ticket.users.id = :useridSelected ");
        query.setParameter("useridSelected", idUser);
        List<Ticket> resultList = (List<Ticket>) query.getResultList();
        return resultList;
    }
    @Override
    public void delete( Long idReservation) {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        Query query = em.createQuery("delete Ticket  where id= :reservationID ");
        query.setParameter("reservationID", idReservation);
        //query.setParameter("idUser",idUser);
        saveUpdateChange(em, query, transaction);
    }

}
