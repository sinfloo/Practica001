package Modelo;

public class Prestamo {
    private int id;
    private double horasEquipo;
    private double horasEntrega;
    private Empleado responsable;
    private String fechaentrega;
    private String fechaDevo;
    private Equipo equipo;

    public Prestamo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getHorasEquipo() {
        return horasEquipo;
    }

    public void setHorasEquipo(double horasEquipo) {
        this.horasEquipo = horasEquipo;
    }

    public double getHorasEntrega() {
        return horasEntrega;
    }

    public void setHorasEntrega(double horasEntrega) {
        this.horasEntrega = horasEntrega;
    }

    public Empleado getResponsable() {
        return responsable;
    }

    public void setResponsable(Empleado responsable) {
        this.responsable = responsable;
    }

    public String getFechaentrega() {
        return fechaentrega;
    }

    public void setFechaentrega(String fechaentrega) {
        this.fechaentrega = fechaentrega;
    }

    public String getFechaDevo() {
        return fechaDevo;
    }

    public void setFechaDevo(String fechaDevo) {
        this.fechaDevo = fechaDevo;
    }

    public Equipo getEquipo() {
        return equipo;
    }

    public void setEquipo(Equipo equipo) {
        this.equipo = equipo;
    }

   
}
