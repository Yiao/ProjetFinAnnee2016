package com.supinfo.transport.dao;

import com.supinfo.transport.entity.Voyage;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.Date;
import java.util.List;

/**
 * Created by Khalil on 30/04/2016.
 */
public class VoyageDAO {

    public List<Voyage> searchVoyage(String departure, String arrival, Date departureDate)
    {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query;


        if (departure=="")
        {
            if (departureDate != null)
            {
                query = em.createQuery("SELECT voyage from Voyage AS voyage where voyage.arrivalVoyage.stationName= :arrival and voyage.departureDate = :departureDate ");
                query.setParameter("arrival",arrival);
                query.setParameter("departureDate",departureDate);
              //  query.setParameter("departureHour",departureDate.getTime());
            }
            else
            {

                query = em.createQuery("SELECT voyage from Voyage AS voyage where voyage.arrivalVoyage.stationName= :arrival");
                query.setParameter("arrival",arrival);


            }


        }
        else if (arrival=="")
        {
            if (departureDate != null)
            {
                query = em.createQuery("SELECT voyage from Voyage AS voyage where voyage.departureVoyage.stationName= :departure and voyage.departureDate = :departureDate");
                query.setParameter("departure",departure);
                query.setParameter("departureDate",departureDate);
              //  query.setParameter("departureHour",departureDate.getTime());
            }
            else
            {
                query = em.createQuery("SELECT voyage from Voyage AS voyage where voyage.departureVoyage.stationName= :departure");
                query.setParameter("departure",departure);
            }




        }
        else
        {
            if (departureDate != null )
            {
                query = em.createQuery("SELECT voyage from Voyage AS voyage where voyage.departureVoyage.stationName= :departure and  voyage.arrivalVoyage.stationName= :arrival and voyage.departureDate = :departureDate");
                query.setParameter("arrival",arrival);
                query.setParameter("departure",departure);
                query.setParameter("departureDate",departureDate);
              //  query.setParameter("departureHour",departureDate.getTime());
            }
            else
            {
                query = em.createQuery("SELECT voyage from Voyage AS voyage where voyage.departureVoyage.stationName= :departure and  voyage.arrivalVoyage.stationName= :arrival");
                query.setParameter("arrival",arrival);
                query.setParameter("departure",departure);
            }




        }
        //return


        List<Voyage> voyageList= (List<Voyage>) query.getResultList();
        return voyageList;

    }
    public  Voyage search(long id)
    {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT voyage from Voyage AS voyage where voyage.id = :tripIdSelected ");
        query.setParameter("tripIdSelected", id);
        return (Voyage) query.getSingleResult();
    }
}
