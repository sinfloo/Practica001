package Modelo;

public class Empleado {      
   String idusuario;
   String password;
   String nombre;
   String apellido;
   int profesion;
   int rol;
   String email;
   int departamento;
   String fechaingreso;
   String fechacese;

   public Empleado(){
       
   }
   
    public Empleado(String idusuario, String password, String nombre, String apellido, int profesion, int rol, String email, int departamento, String fechaingreso, String fechacese) {
        this.idusuario = idusuario;
        this.password = password;
        this.nombre = nombre;
        this.apellido = apellido;
        this.profesion = profesion;
        this.rol = rol;
        this.email = email;
        this.departamento = departamento;
        this.fechaingreso = fechaingreso;
        this.fechacese = fechacese;
    }
    

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getProfesion() {
        return profesion;
    }

    public void setProfesion(int profesion) {
        this.profesion = profesion;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getDepartamento() {
        return departamento;
    }

    public void setDepartamento(int departamento) {
        this.departamento = departamento;
    }

    public String getFechaingreso() {
        return fechaingreso;
    }

    public void setFechaingreso(String fechaingreso) {
        this.fechaingreso = fechaingreso;
    }

    public String getFechacese() {
        return fechacese;
    }

    public void setFechacese(String fechacese) {
        this.fechacese = fechacese;
    }
 
}
