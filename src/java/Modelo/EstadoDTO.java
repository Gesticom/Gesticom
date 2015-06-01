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
public class EstadoDTO {
    private int Id_Estado;
    private String Estado;

    public int getId_Estado() {
        return Id_Estado;
    }

    public void setId_Estado(int Id_Estado) {
        this.Id_Estado = Id_Estado;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public EstadoDTO(int Id_Estado, String Estado) {
        this.Id_Estado = Id_Estado;
        this.Estado = Estado;
    }

    public EstadoDTO() {
    }
    
}
