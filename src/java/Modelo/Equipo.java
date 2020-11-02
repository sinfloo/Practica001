package Modelo;

public class Equipo {
    private int id;
    private String descripcion;
    private Marca marca;
    private String fechaAlta;
    private String fechaBaja;
    private int horasPrestamo;
    private int estado;

    public Equipo() {
    }

    public Equipo(int id, String descripcion, Marca marca, String fechaAlta, String fechaBaja, int estado) {
        this.id = id;
        this.descripcion = descripcion;
        this.marca = marca;
        this.fechaAlta = fechaAlta;
        this.fechaBaja = fechaBaja;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Marca getMarca() {
        return marca;
    }

    public void setMarca(Marca marca) {
        this.marca = marca;
    }

    public String getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(String fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    public String getFechaBaja() {
        return fechaBaja;
    }

    public void setFechaBaja(String fechaBaja) {
        this.fechaBaja = fechaBaja;
    }

    public int getHorasPrestamo() {
        return horasPrestamo;
    }

    public void setHorasPrestamo(int horasPrestamo) {
        this.horasPrestamo = horasPrestamo;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

}
