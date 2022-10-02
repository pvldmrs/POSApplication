/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pos.ejb;

import com.pos.common.UserDetails;
import com.pos.entity.User;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Damian
 */
@Stateless
public class UserBean {

    private static final Logger LOG = Logger.getLogger(UserBean.class.getName());
    
    @PersistenceContext
    private EntityManager em;
    
    public void createUser(String username, String email, String passwordSha256, String position){
        User user=new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(passwordSha256);
        user.setPosition(position);
        em.persist(user);
    }
    
    public List<UserDetails> getAllUsers(){
        LOG.info("getAllUsers");
        try{
            List<User> users = (List<User>) em.createQuery("SELECT u FROM User u").getResultList();
            return copyUsersToDetails(users);
        }catch(Exception ex){
            throw new EJBException(ex);
        }
    }

    private List<UserDetails> copyUsersToDetails(List<User> users) {
        List<UserDetails> detailsList = new ArrayList<>();
        for(User user : users){
            UserDetails userDetails = new UserDetails(user.getId(),
                    user.getUsername(),
                    user.getEmail(),
                    user.getPosition());
            detailsList.add(userDetails);
        }
        return detailsList;
    }
    
        public void deleteUsersByIds(Collection<Integer> ids) {
        LOG.info("deleteProductsByIds");
        for (Integer id : ids) {
            User user = em.find(User.class, id);
            em.remove(user);
        }
    }      
}
