 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entities.Form;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author rafli
 */
@Stateless
public class FormFacade extends AbstractFacade<Form> {

    @PersistenceContext(unitName = "SurveyRapidTestPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FormFacade() {
        super(Form.class);
    }
    
}
