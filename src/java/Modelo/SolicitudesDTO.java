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
    private int Vacantes;
    private int Id_Cargo;
    private String Cargo;
    private String FechaDeInicio;
    private int Id_Ciudad;
    private String Ciudad;
    private String Perfil;
    private int Id_Estado;
    private String Estado;
    private int Id_Departamento;
    private String Departamento;
    private int Id_Campana;
    private String campana;

    public int getId_Solicitud() {
        return Id_Solicitud;
    }

    public void setId_Solicitud(int Id_Solicitud) {
        this.Id_Solicitud = Id_Solicitud;
    }

    public int getVacantes() {
        return Vacantes;
    }

    public void setVacantes(int Vacantes) {
        this.Vacantes = Vacantes;
    }

    public int getId_Cargo() {
        return Id_Cargo;
    }

    public void setId_Cargo(int Id_Cargo) {
        this.Id_Cargo = Id_Cargo;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }

    public String getFechaDeInicio() {
        return FechaDeInicio;
    }

    public void setFechaDeInicio(String FechaDeInicio) {
        this.FechaDeInicio = FechaDeInicio;
    }

    public int getId_Ciudad() {
        return Id_Ciudad;
    }

    public void setId_Ciudad(int Id_Ciudad) {
        this.Id_Ciudad = Id_Ciudad;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public String getPerfil() {
        return Perfil;
    }

    public void setPerfil(String Perfil) {
        this.Perfil = Perfil;
    }

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

    public int getId_Departamento() {
        return Id_Departamento;
    }

    public void setId_Departamento(int Id_Departamento) {
        this.Id_Departamento = Id_Departamento;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public int getId_Campana() {
        return Id_Campana;
    }

    public void setId_Campana(int Id_Campana) {
        this.Id_Campana = Id_Campana;
    }

    public String getCampana() {
        return campana;
    }

    public void setCampana(String campana) {
        this.campana = campana;
    }

    public SolicitudesDTO(int Id_Solicitud, int Vacantes, int Id_Cargo, String Cargo, String FechaDeInicio, int Id_Ciudad, String Ciudad, String Perfil, int Id_Estado, String Estado, int Id_Departamento, String Departamento, int Id_Campana, String campana) {
        this.Id_Solicitud = Id_Solicitud;
        this.Vacantes = Vacantes;
        this.Id_Cargo = Id_Cargo;
        this.Cargo = Cargo;
        this.FechaDeInicio = FechaDeInicio;
        this.Id_Ciudad = Id_Ciudad;
        this.Ciudad = Ciudad;
        this.Perfil = Perfil;
        this.Id_Estado = Id_Estado;
        this.Estado = Estado;
        this.Id_Departamento = Id_Departamento;
        this.Departamento = Departamento;
        this.Id_Campana = Id_Campana;
        this.campana = campana;
    }

    public SolicitudesDTO() {
    }
    
    
    
   
    
}
