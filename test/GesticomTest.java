/*
 * To change this license header, choose License Headers in Project Properties.
  this template file, cose Tools | Templates
 * and open the template in the editor.
 */

import Modelo.CargosDAO;
import Modelo.CargosDTO;
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
public class GesticomTest {
    
    public GesticomTest() {
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
    public void ConsultaUnCargo(){
        CargosDTO cargosdto = new CargosDTO(6,"Tecnologo");
        CargosDAO cargosdao = new CargosDAO();
        CargosDTO cargos2dto = new CargosDTO();
        cargos2dto= cargosdao.consultarUnRegistro1(6);
        assertEquals(cargos2dto.getId_Cargo(),cargosdto.getId_Cargo());
        assertEquals(cargos2dto.getCargo(),cargosdto.getCargo());
        
               
        
        
        
    }
}
