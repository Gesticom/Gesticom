/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Modelo.CampanaDAO;
import Modelo.CampanaDTO;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Washington
 */
public class CampanasListarTest {
    
    public CampanasListarTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    @Test
    public void consultarRegistro(){
        CampanaDTO campanadto = new CampanaDTO(3,"Electricaribe");
        CampanaDAO campanadao = new CampanaDAO();
        CampanaDTO campana2dto = new CampanaDTO();
       // campanadto= campanadao.consultarUnRegistro1(3);
        assertEquals(campana2dto.getId_Campana(),campanadto.getId_Campana());
        assertEquals(campana2dto.getCampana(),campanadto.getCampana());
        
               
 
        
        
        
    }
}
