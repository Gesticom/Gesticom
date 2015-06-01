/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


public class DepartamentoDTO {
    private int id_Departamento;
    private String Departamento;  

    /**
     * @return the id_Departamento
     */
    public int getId_Departamento() {
        return id_Departamento;
    }

    /**
     * @param id_Departamento the id_Departamento to set
     */
    public void setId_Departamento(int id_Departamento) {
        this.id_Departamento = id_Departamento;
    }

    /**
     * @return the Departamento
     */
    public String getDepartamento() {
        return Departamento;
    }

    /**
     * @param Departamento the Departamento to set
     */
    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public DepartamentoDTO(int id_Departamento, String Departamento) {
        this.id_Departamento = id_Departamento;
        this.Departamento = Departamento;
    }

    public DepartamentoDTO() {
    }
    
    
}
