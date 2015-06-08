/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Washington
 */
public class CargosDTO {

    private int Id_Cargo;
    private String Cargo;

    /**
     * @return the Id_Cargo
     */
    public int getId_Cargo() {
        return Id_Cargo;
    }

    /**
     * @param Id_Cargo the Id_Cargo to set
     */
    public void setId_Cargo(int Id_Cargo) {
        this.Id_Cargo = Id_Cargo;
    }

    /**    * @return the Cargo
     */
    public String getCargo() {
        return Cargo;
    }

    /**
     * @param Cargo the Cargo to set
     */
    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }
}