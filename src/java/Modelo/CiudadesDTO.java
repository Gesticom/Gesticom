/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author RicardoAlonso
 */
public class CiudadesDTO {
    private int Id_Ciudad;
    private String Ciudad;

    /**
     * @return the Id_Ciudad
     */
    public int getId_Ciudad() {
        return Id_Ciudad;
    }

    /**
     * @param Id_Ciudad the Id_Ciudad to set
     */
    public void setId_Ciudad(int Id_Ciudad) {
        this.Id_Ciudad = Id_Ciudad;
    }

    /**
     * @return the Ciudad
     */
    public String getCiudad() {
        return Ciudad;
    }

    /**
     * @param Ciudad the Ciudad to set
     */
    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public CiudadesDTO(int Id_Ciudad, String Ciudad) {
        this.Id_Ciudad = Id_Ciudad;
        this.Ciudad = Ciudad;
    }

    public CiudadesDTO() {
    }
    
    
    
}
