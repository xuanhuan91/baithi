package com.example.examwcd.dao;

import com.example.examwcd.entity.EmployeeEntity;
import com.example.examwcd.util.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

public class EmployeeDAO {
    EntityManager em;
    EntityTransaction tran;
    public EmployeeDAO (){
        em = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        tran = em.getTransaction();
    }

    public void insertEmployee(EmployeeEntity employee){
        try {
            tran.begin();
            em.persist(employee);
            tran.commit();
        } catch (Exception ex){
            System.out.println(ex.getMessage());
            tran.rollback();
        }
    }

    public List<EmployeeEntity> getAllEmployees() {
        try {
            Query query = em.createQuery("Select a from EmployeeEntity as a");
            return query.getResultList();
        } catch (Exception ex) {
            System.out.println();
        }
        return null;
    }
}
