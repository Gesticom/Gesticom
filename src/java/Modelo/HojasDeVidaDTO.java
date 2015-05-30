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
public class HojasDeVidaDTO {

    public HojasDeVidaDTO(int Id_Cedula, String Nombres, String Apellidos, String Direccion, String Telefono, String Celular, String FechaNacimiento, int CiudadNacimiento, int CiudadResidencia, String EstadoCivil, int NoHijos) {
        this.Id_Cedula = Id_Cedula;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Celular = Celular;
        this.FechaNacimiento = FechaNacimiento;
        this.CiudadNacimiento = CiudadNacimiento;
        this.CiudadResidencia = CiudadResidencia;
        this.EstadoCivil = EstadoCivil;
        this.NoHijos = NoHijos;
    }

    public HojasDeVidaDTO() {
    }

    private int Id_Cedula;
    private String Nombres;
    private String Apellidos;
    private String Direccion;
    private String Telefono;
    private String Celular;
    private String FechaNacimiento;
    private int CiudadNacimiento;
    private int CiudadResidencia;
    private String EstadoCivil;
    private int NoHijos;

    /**
     * @return the Id_Cedula
     */
    public int getId_Cedula() {
        return Id_Cedula;
    }

    /**
     * @param Id_Cedula the Id_Cedula to set
     */
    public void setId_Cedula(int Id_Cedula) {
        this.Id_Cedula = Id_Cedula;
    }

    /**
     * @return the Nombres
     */
    public String getNombres() {
        return Nombres;
    }

    /**
     * @param Nombres the Nombres to set
     */
    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    /**
     * @return the Apellidos
     */
    public String getApellidos() {
        return Apellidos;
    }

    /**
     * @param Apellidos the Apellidos to set
     */
    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    /**
     * @return the Direccion
     */
    public String getDireccion() {
        return Direccion;
    }

    /**
     * @param Direccion the Direccion to set
     */
    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    /**
     * @return the Telefono
     */
    public String getTelefono() {
        return Telefono;
    }

    /**
     * @param Telefono the Telefono to set
     */
    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    /**
     * @return the Celular
     */
    public String getCelular() {
        return Celular;
    }

    /**
     * @param Celular the Celular to set
     */
    public void setCelular(String Celular) {
        this.Celular = Celular;
    }

    /**
     * @return the FechaNacimiento
     */
    public String getFechaNacimiento() {
        return FechaNacimiento;
    }

    /**
     * @param FechaNacimiento the FechaNacimiento to set
     */
    public void setFechaNacimiento(String FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    /**
     * @return the CiudadNacimiento
     */
    public int getCiudadNacimiento() {
        return CiudadNacimiento;
    }

    /**
     * @param CiudadNacimiento the CiudadNacimiento to set
     */
    public void setCiudadNacimiento(int CiudadNacimiento) {
        this.CiudadNacimiento = CiudadNacimiento;
    }

    /**
     * @return the CiudadResidencia
     */
    public int getCiudadResidencia() {
        return CiudadResidencia;
    }

    /**
     * @param CiudadResidencia the CiudadResidencia to set
     */
    public void setCiudadResidencia(int CiudadResidencia) {
        this.CiudadResidencia = CiudadResidencia;
    }

    /**
     * @return the EstadoCivil
     */
    public String getEstadoCivil() {
        return EstadoCivil;
    }

    /**
     * @param EstadoCivil the EstadoCivil to set
     */
    public void setEstadoCivil(String EstadoCivil) {
        this.EstadoCivil = EstadoCivil;
    }

    /**
     * @return the NoHijos
     */
    public int getNoHijos() {
        return NoHijos;
    }

    /**
     * @param NoHijos the NoHijos to set
     */
    public void setNoHijos(int NoHijos) {
        this.NoHijos = NoHijos;
    }

 
}
