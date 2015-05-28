/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
public class CargosInsertarTest {
    
    public CargosInsertarTest() {
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
    public void InsertarCargo() {
        CargosDTO cargosdto =new CargosDTO(12,"Assssste12");
        CargosDAO cargosdao = new CargosDAO();
        String resu = cargosdao.IngresarCargo(cargosdto);
        String resuEsperado = "Registro ingresado exitosamente";
        assertEquals(resu,resuEsperado);
        
    }
}
