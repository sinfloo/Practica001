/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.*;
import config.Conexion;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Empleado validar(String idusuario, String password) {
        Empleado em = new Empleado();

        String sql = "SELECT * FROM usuario WHERE IDUSUARIO=? and PASSWORD=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, idusuario);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                em.setIdusuario(rs.getString("IDUSUARIO"));
                em.setPassword(rs.getString("PASSWORD"));
                em.setNombre(rs.getString("NOMBRE"));
            }

        } catch (Exception e) {

        }
        return em;
    }

    //Operacion CRUD
    public List listar() {
        String sql = "select * from usuario";
        List<Empleado> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Empleado em = new Empleado();
                em.setIdusuario(rs.getString(1));
                em.setPassword(rs.getString(2));
                em.setNombre(rs.getString(3));
                em.setApellido(rs.getString(4));
                em.setProfesion(rs.getInt(5));
                em.setRol(rs.getInt(6));
                em.setEmail(rs.getString(7));
                em.setDepartamento(rs.getInt(8));
                em.setFechaingreso(rs.getString(9));
                em.setFechacese(rs.getString(10));
                lista.add(em);
            }
        } catch (Exception e) {

        }
        return lista;
    }

    public int agregar(Empleado em) {
        String sql = "INSERT INTO `usuario`(`idusuario`, `password`, `nombre`, `apellido`, `profesion`, `rol`, `email`, `departamento`, `fechaingreso`, `fechacese`) VALUES (?,?,?,?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);

            ps.setString(1, em.getIdusuario());
            ps.setString(2, em.getPassword());
            ps.setString(3, em.getNombre());
            ps.setString(4, em.getApellido());
            ps.setInt(5, em.getProfesion());
            ps.setInt(6, em.getRol());
            ps.setString(7, em.getEmail());
            ps.setInt(8, em.getDepartamento());
            ps.setString(9, em.getFechaingreso());
            ps.setString(10, em.getFechacese());
            ps.executeUpdate();

        } catch (Exception e) {

        }
        return r;
    }

    public Empleado listarId(int idusuario) {
        Empleado emp = new Empleado();
        String sql = "SELECT * FROM USUARIO WHERE IDUSUARIO=" + idusuario;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                emp.setIdusuario(rs.getString(1));
                emp.setNombre(rs.getString("NOMBRE"));
                emp.setApellido(rs.getString("APELLIDO"));
            }

        } catch (Exception e) {
        }
        return emp;

    }

    public int actualizar(Empleado em) {
        String sql = "UPDATE `usuario` SET `password`=?,`nombre`=?,`apellido`=?,`profesion`=?,`rol`=?,`email`=?,`departamento`=?,`fechaingreso`=?,`fechacese`=? WHERE idusuario=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);

            ps.setString(1, em.getPassword());
            ps.setString(2, em.getNombre());
            ps.setString(3, em.getApellido());
            ps.setInt(4, em.getProfesion());
            ps.setInt(5, em.getRol());
            ps.setString(6, em.getEmail());
            ps.setInt(7, em.getDepartamento());
            ps.setString(8, em.getFechaingreso());
            ps.setString(9, em.getFechacese());
            ps.setString(10, em.getIdusuario());
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return r;

    }

    public void delete(int idusuario) {
        String sql = "DELETE FROM `usuario` WHERE idusuario=" + idusuario;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }

}
