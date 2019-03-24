package com.journaldev.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.model.Person;

@Repository(value = "personDAO")
public class JPAPersonDAO implements PersonDAO{
	
    private EntityManager em = null;

    /*
     * Sets the entity manager.
     */
    @PersistenceContext
    public void setEntityManager(EntityManager em) {
        this.em = em;
    }

    @Transactional(readOnly = true)
	public Person getPersonById(long id) {
		return em.find(Person.class, id);
	}
    
    @Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
	public List<Person> getPersonList() {
    	return em.createQuery("SELECT p FROM Person p ORDER BY p.id").getResultList();
	}

    @Transactional(readOnly = false)
	public void savePerson(Person person) {
    	em.merge(person);
	}

    @Transactional(readOnly = false)
	public void deletePerson(Person person) {
    	// If we don't merge first, it has a temporal transactional object
		em.remove(em.merge(person));	
	}

}
