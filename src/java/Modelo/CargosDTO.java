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

    public CargosDTO(String Id_Empleado, String Apellido, String Nombre, String Seccional, String Facultad, String Cargo, String Salario, String Fech_Comienzo, String Fech_Nacimiento) {
        this.Id_Empleado = Id_Empleado;
        this.Apellido = Apellido;
        this.Nombre = Nombre;
        this.Seccional = Seccional;
        this.Facultad = Facultad;
        this.Cargo = Cargo;
        this.Salario = Salario;
        this.Fech_Comienzo = Fech_Comienzo;
        this.Fech_Nacimiento = Fech_Nacimiento;
    }

    public CargosDTO() {
    }

    private String Id_Empleado;
    private String Apellido;
    private String Nombre;
    private String Seccional;
    private String Facultad;
    private String Cargo;
    private String Salario;
    private String Fech_Comienzo;
    private String Fech_Nacimiento;

    /**
     * @return the Id_Empleado
     */
    public String getId_Empleado() {
        return Id_Empleado;
    }

    /**
     * @param Id_Empleado the Id_Empleado to set
     */
    public void setId_Empleado(String Id_Empleado) {
        this.Id_Empleado = Id_Empleado;
    }

    /**
     * @return the Apellido
     */
    public String getApellido() {
        return Apellido;
    }

    /**
     * @param Apellido the Apellido to set
     */
    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    /**
     * @return the Nombre
     */
    public String getNombre() {
        return Nombre;
    }

    /**
     * @param Nombre the Nombre to set
     */
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    /**
     * @return the Seccional
     */
    public String getSeccional() {
        return Seccional;
    }

    /**
     * @param Seccional the Seccional to set
     */
    public void setSeccional(String Seccional) {
        this.Seccional = Seccional;
    }

    /**
     * @return the Facultad
     */
    public String getFacultad() {
        return Facultad;
    }

    /**
     * @param Facultad the Facultad to set
     */
    public void setFacultad(String Facultad) {
        this.Facultad = Facultad;
    }

    /**
     * @return the Cargo
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

    /**
     * @return the Salario
     */
    public String getSalario() {
        return Salario;
    }

    /**
     * @param Salario the Salario to set
     */
    public void setSalario(String Salario) {
        this.Salario = Salario;
    }

    /**
     * @return the Fech_Comienzo
     */
    public String getFech_Comienzo() {
        return Fech_Comienzo;
    }

    /**
     * @param Fech_Comienzo the Fech_Comienzo to set
     */
    public void setFech_Comienzo(String Fech_Comienzo) {
        this.Fech_Comienzo = Fech_Comienzo;
    }

    /**
     * @return the Fech_Nacimiento
     */
    public String getFech_Nacimiento() {
        return Fech_Nacimiento;
    }

    /**
     * @param Fech_Nacimiento the Fech_Nacimiento to set
     */
    public void setFech_Nacimiento(String Fech_Nacimiento) {
        this.Fech_Nacimiento = Fech_Nacimiento;
    }
 
}
