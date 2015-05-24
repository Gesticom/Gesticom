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
public class UsuarioDTO {

    public UsuarioDTO() {
    }

    private long Id_Usuario;
    private int TipoDocumento;
    private String Usuario;
    private String Nombres;
    private String Apellidos;
    private String FechaDeNacimiento;
    private String LugarDeNacimiento;
    private String Direccion;
    private String TelefonoFijo;
    private String Celular;
    private int Ciudad;
    private int Cargo;
    private int Role;
    private String Contrasena;
    private String Email;


    public UsuarioDTO(int Id_Usuario, int TipoDocumento, String Usuario, String Nombres, String Apellidos, String FechaDeNacimiento, String LugarDeNacimiento, String Direccion, String TelefonoFijo, String Celular, int Ciudad, int Cargo, int Role, String Contrasena, String Email) {
        this.Id_Usuario = Id_Usuario;
        this.TipoDocumento = TipoDocumento;
        this.Usuario = Usuario;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.FechaDeNacimiento = FechaDeNacimiento;
        this.LugarDeNacimiento = LugarDeNacimiento;
        this.Direccion = Direccion;
        this.TelefonoFijo = TelefonoFijo;
        this.Celular = Celular;
        this.Ciudad = Ciudad;
        this.Cargo = Cargo;
        this.Role = Role;
        this.Contrasena = Contrasena;
        this.Email = Email;

    }

    /**
     * @return the Id_Usuario
     */
    public long getId_Usuario() {
        return Id_Usuario;
    }

    /**
     * @param Id_Usuario the Id_Usuario to set
     */
    public void setId_Usuario(long Id_Usuario) {
        this.Id_Usuario = Id_Usuario;
    }

    /**
     * @return the TipoDocumento
     */
    public int getTipoDocumento() {
        return TipoDocumento;
    }

    /**
     * @param TipoDocumento the TipoDocumento to set
     */
    public void setTipoDocumento(int TipoDocumento) {
        this.TipoDocumento = TipoDocumento;
    }

    /**
     * @return the Usuario
     */
    public String getUsuario() {
        return Usuario;
    }

    /**
     * @param Usuario the Usuario to set
     */
    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
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
     * @return the FechaDeNacimiento
     */
    public String getFechaDeNacimiento() {
        return FechaDeNacimiento;
    }

    /**
     * @param FechaDeNacimiento the FechaDeNacimiento to set
     */
    public void setFechaDeNacimiento(String FechaDeNacimiento) {
        this.FechaDeNacimiento = FechaDeNacimiento;
    }

    /**
     * @return the LugarDeNacimiento
     */
    public String getLugarDeNacimiento() {
        return LugarDeNacimiento;
    }

    /**
     * @param LugarDeNacimiento the LugarDeNacimiento to set
     */
    public void setLugarDeNacimiento(String LugarDeNacimiento) {
        this.LugarDeNacimiento = LugarDeNacimiento;
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
     * @return the TelefonoFijo
     */
    public String getTelefonoFijo() {
        return TelefonoFijo;
    }

    /**
     * @param TelefonoFijo the TelefonoFijo to set
     */
    public void setTelefonoFijo(String TelefonoFijo) {
        this.TelefonoFijo = TelefonoFijo;
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
     * @return the Ciudad
     */
    public int getCiudad() {
        return Ciudad;
    }

    /**
     * @param Ciudad the Ciudad to set
     */
    public void setCiudad(int Ciudad) {
        this.Ciudad = Ciudad;
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
     * @return the Role
     */
    public int getRole() {
        return Role;
    }

    /**
     * @param Role the Role to set
     */
    public void setRole(int Role) {
        this.Role = Role;
    }

    /**
     * @return the Contrasena
     */
    public String getContrasena() {
        return Contrasena;
    }

    /**
     * @param Contrasena the Contrasena to set
     */
    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

  
}
