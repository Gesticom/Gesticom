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
public class SolicitudesDTO {

    private int Id_Solicitud;
    private String Fecha;
    private int Cargo;
    private String Perfil;
    private String Experiencia;
    private String Conocimiento;
    private String Estudio;
    private int Departamento;
    private int CoordinadorSolicitante;

 


    public SolicitudesDTO(int Id_Solicitud, String Fecha, int Cargo, String Perfil, String Experiencia, String Conocimiento, String Estudio, int Departamento, int CoordinadorSolicitante) {
    
        this.Id_Solicitud = Id_Solicitud;
        this.Fecha = Fecha;
        this.Cargo = Cargo;
        this.Perfil = Perfil;
        this.Experiencia = Experiencia;
        this.Conocimiento = Conocimiento;
        this.Estudio = Estudio;
        this.Departamento = Departamento;
        this.CoordinadorSolicitante = CoordinadorSolicitante;



    }

    public SolicitudesDTO() {

    }

    /**
     * @return the Id_Solicitud
     */
    public int getId_Solicitud() {
        return Id_Solicitud;
    }

    /**
     * @param Id_Solicitud the Id_Solicitud to set
     */
    public void setId_Solicitud(int Id_Solicitud) {
        this.Id_Solicitud = Id_Solicitud;
    }

    /**
     * @return the Fecha
     */
    public String getFecha() {
        return Fecha;
    }

    /**
     * @param Fecha the Fecha to set
     */
    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    /**
     * @return the Cargo
     */
    public int getCargo() {
        return Cargo;
    }

    /**
     * @param Cargo the Cargo to set
     */
    public void setCargo(int Cargo) {
        this.Cargo = Cargo;
    }

    /**
     * @return the Perfil
     */
    public String getPerfil() {
        return Perfil;
    }

    /**
     * @param Perfil the Perfil to set
     */
    public void setPerfil(String Perfil) {
        this.Perfil = Perfil;
    }

    /**
     * @return the Experiencia
     */
    public String getExperiencia() {
        return Experiencia;
    }

    /**
     * @param Experiencia the Experiencia to set
     */
    public void setExperiencia(String Experiencia) {
        this.Experiencia = Experiencia;
    }

    /**
     * @return the Conocimiento
     */
    public String getConocimiento() {
        return Conocimiento;
    }

    /**
     * @param Conocimiento the Conocimiento to set
     */
    public void setConocimiento(String Conocimiento) {
        this.Conocimiento = Conocimiento;
    }

    /**
     * @return the Estudio
     */
    public String getEstudio() {
        return Estudio;
    }

    /**
     * @param Estudio the Estudio to set
     */
    public void setEstudio(String Estudio) {
        this.Estudio = Estudio;
    }

    /**
     * @return the Departamento
     */
    public int getDepartamento() {
        return Departamento;
    }

    /**
     * @param Departamento the Departamento to set
     */
    public void setDepartamento(int Departamento) {
        this.Departamento = Departamento;
    }

    /**
     * @return the CoordinadorSolicitante
     */
    public int getCoordinadorSolicitante() {
        return CoordinadorSolicitante;
    }

    /**
     * @param CoordinadorSolicitante the CoordinadorSolicitante to set
     */
    public void setCoordinadorSolicitante(int CoordinadorSolicitante) {
        this.CoordinadorSolicitante = CoordinadorSolicitante;
    }

    /**
     * @return the Id_Usuario
     */
    /**
     * @return the Nombres
     */
}
