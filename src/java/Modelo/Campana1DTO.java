/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Ricardo
 */
public class Campana1DTO {
    private int Id_Campana;
    private String Campana;

    /**
     * @return the Id_Campana
     */
    public int getId_Campana() {
        return Id_Campana;
    }

    /**
     * @param Id_Campana the Id_Campana to set
     */
    public void setId_Campana(int Id_Campana) {
        this.Id_Campana = Id_Campana;
    }

    /**
     * @return the Campana
     */
    public String getCampana() {
        return Campana;
    }

    /**
     * @param Campana the Campana to set
     */
    public void setCampana(String Campana) {
        this.Campana = Campana;
    }

    public Campana1DTO(int Id_Campana, String Campana) {
        this.Id_Campana = Id_Campana;
        this.Campana = Campana;
    }

    public Campana1DTO() {
    }
        
    
}
