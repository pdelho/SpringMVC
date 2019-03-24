package com.journaldev.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.model.Team;

@Repository(value = "teamDAO")
public class JPATeamDAO implements TeamDAO {
	
    private EntityManager em = null;

    /*
     * Sets the entity manager.
     */
    @PersistenceContext
    public void setEntityManager(EntityManager em) {
        this.em = em;
    }
    
	@Transactional(readOnly = true)
	public Team getTeamById(long id) {
		return em.find(Team.class, id);
	}


	@Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
	public List<Team> getTeamList() {
		return em.createQuery("SELECT p FROM Team p ORDER BY p.id").getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public List<Team> getTeamsInGroup(String letter) {
		return em.createQuery(
				"SELECT p FROM Team p where p.groupChar = :letter ")
				.setParameter("letter", letter)
				.getResultList();
	}

}
