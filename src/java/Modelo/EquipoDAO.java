package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class EquipoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    EmpleadoDAO edao=new EmpleadoDAO();

    public List<Equipo> getEquipos() {
        String sql = "SELECT * FROM EQUIPO WHERE ESTADO!=0";
        List<Equipo> equipos = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Equipo e = new Equipo();
                e.setId(rs.getInt(1));
                e.setDescripcion(rs.getString(2));
                e.setHorasPrestamo(rs.getInt(3));
                Marca m = new Marca();
                m.setId(rs.getInt(4));
                m.setDescripcion(getMarca(rs.getInt(4)).getDescripcion());
                e.setMarca(m);
                e.setFechaAlta(rs.getString(5));
                e.setFechaBaja(rs.getString(6));
                e.setEstado(rs.getInt(7));
                equipos.add(e);
            }
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return equipos;
    }

    public Equipo getEquipoId(int id) {
        String sql = "SELECT * FROM EQUIPO WHERE IDEQUIPO=" + id;
        Equipo e = new Equipo();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                e.setId(rs.getInt(1));
                e.setDescripcion(rs.getString(2));
                e.setHorasPrestamo(rs.getInt(3));
                Marca m = new Marca();
                m.setId(rs.getInt(4));
                e.setMarca(m);
                e.setFechaAlta(rs.getString(5));
                e.setFechaBaja(rs.getString(6));
                e.setEstado(rs.getInt(7));
            }
        } catch (SQLException er) {
            System.err.println("Error:" + er);
        }
        return e;
    }

    public Prestamo getPrestamo(int id) {
        String sql = "SELECT * FROM PRESTAMOEQUIPO WHERE IDEQUIPO=" + id;
        Prestamo e = new Prestamo();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                e.setId(rs.getInt(1));
                e.setHorasEntrega(rs.getDouble(2));
                e.setHorasEquipo(rs.getDouble(3));
                e.setFechaentrega(rs.getString(4));
                e.setFechaDevo(rs.getString(5));
                e.setEquipo(getEquipoId(rs.getInt(6)));
            }
        } catch (SQLException er) {
            System.err.println("Error:" + er);
        }
        return e;
    }

    public int addEquipo(Equipo equipo) {
        String sql = "INSERT INTO EQUIPO(IDEQUIPO,DESCRIPCION,HPRESTAMO,MARCA,FECHAALTA,FECHABAJA,ESTADO)"
                + " VALUES(?,?,?,?,?,?,?)";
        int r = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, equipo.getId());
            ps.setString(2, equipo.getDescripcion());
            ps.setInt(3, 0);
            ps.setInt(4, equipo.getMarca().getId());
            ps.setString(5, equipo.getFechaAlta());
            ps.setString(6, equipo.getFechaBaja());
            ps.setInt(7, equipo.getEstado());
            r = ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return r;
    }

    public int updateEquipo(Equipo equipo) {
        String sql = "UPDATE EQUIPO SET DESCRIPCION=?,MARCA=?,FECHAALTA=?,FECHABAJA=?,ESTADO=? WHERE IDEQUIPO=?";
        int r = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, equipo.getDescripcion());
            ps.setInt(2, equipo.getMarca().getId());
            ps.setString(3, equipo.getFechaAlta());
            ps.setString(4, equipo.getFechaBaja());
            ps.setInt(5, equipo.getEstado());
            ps.setInt(6, equipo.getId());
            r = ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return r;
    }

    public int updateEquipoEstado(int id,int estado) {
        String sql = "UPDATE EQUIPO SET ESTADO=? WHERE IDEQUIPO=?";
        int r = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, estado);
            ps.setInt(2, id);
            r = ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return r;
    }
    public int updateEquipoHoras(int id,int horas) {
        String sql = "UPDATE EQUIPO SET HPRESTAMO=(HPRESTAMO+?) WHERE IDEQUIPO=?";
        int r = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, horas);
            ps.setInt(2, id);
            r = ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return r;
    }

    public int deleteEquipo(int id) {
        String sql = "UPDATE EQUIPO SET ESTADO=? WHERE IDEQUIPO=" + id;
        int r = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, 0);
            r = ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return r;
    }

    public List<Marca> getMarcas() {
        String sql = "SELECT * FROM MARCA";
        List<Marca> marcas = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Marca m = new Marca();
                m.setId(rs.getInt(1));
                m.setDescripcion(rs.getString(2));
                marcas.add(m);
            }
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return marcas;
    }

    public Marca getMarca(int id) {
        String sql = "SELECT * FROM MARCA WHERE ID=" + id;
        Marca m = new Marca();
        try {
            Connection cont = cn.Conexion();
            PreparedStatement pst = cont.prepareStatement(sql);
            ResultSet rst = pst.executeQuery();
            while (rst.next()) {
                m.setId(rst.getInt(1));
                m.setDescripcion(rst.getString(2));
            }
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return m;
    }

    public int addPrestamo(Prestamo p,int res,int ide) {
        String sql = "INSERT INTO PRESTAMOEQUIPO(HORASEQUIPO,HORASENTREGA,RESPONSABLE,FECHAENTREGA,FECHADEVOLUCION,IDEQUIPO)"
                + " VALUES(?,?,?,?,?,?)";
        int r = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, p.getHorasEquipo());
            ps.setDouble(2, p.getHorasEntrega());
            ps.setInt(3, res);
            ps.setString(4, p.getFechaentrega());
            ps.setString(5,p.getFechaDevo());
            ps.setInt(6, ide);
            r = ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return r;
    }
    public int updatePrestamo(int horaen,int idP) {
        String sql = "UPDATE prestamoequipo SET HORASENTREGA = ? WHERE CODIGOPRESTAMO = ?";
        int r = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, horaen);
            ps.setInt(2, idP);
            r = ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return r;
    }
    public Prestamo getPrestamoD(Map parametros) {
        String sql = "SELECT * FROM prestamoequipo WHERE FECHAENTREGA=(SELECT max(FECHAENTREGA) from prestamoequipo) and IDEQUIPO=?;";
        int r = 0;
        Prestamo p=new Prestamo();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, Integer.valueOf(parametros.get("idE").toString()));
            rs = ps.executeQuery();
            while (rs.next()) {                
                p.setId(rs.getInt(1));
                p.setHorasEquipo(rs.getDouble(2));
                p.setHorasEquipo(rs.getDouble(3));
                p.setResponsable(edao.listarId(rs.getInt(4)));
                p.setFechaentrega(rs.getString(5));
                p.setFechaDevo(rs.getString(6));
                p.setEquipo(getEquipoId(rs.getInt(7)));
            }
        } catch (SQLException e) {
            System.err.println("Error:" + e);
        }
        return p;
    }
}
