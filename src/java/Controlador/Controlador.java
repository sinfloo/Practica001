package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.Equipo;
import Modelo.EquipoDAO;
import Modelo.Marca;
import Modelo.Prestamo;
import config.Fecha;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {

    Empleado em = new Empleado();
    EmpleadoDAO edao = new EmpleadoDAO();
    EquipoDAO eqdao = new EquipoDAO();
    int ide;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Equipos")) {
            switch (accion) {
                case "Listar":
                    request.setAttribute("Equipos", eqdao.getEquipos());
                    request.setAttribute("Marcas", eqdao.getMarcas());
                    request.setAttribute("EquipoEdit", new Equipo());
                    request.getRequestDispatcher("Equipos.jsp").forward(request, response);
                    break;
                case "Agregar":
                    String idE = request.getParameter("txtId");
                    String des = request.getParameter("txtDescripcion");
                    String marca = request.getParameter("txtMarca");
                    String fechaA = request.getParameter("txtFechaA");
                    String fechaB = request.getParameter("txtFechaB");
                    Equipo e = new Equipo(Integer.valueOf(idE), des, new Marca(Integer.valueOf(marca), null), fechaA, fechaB, 1);
                    eqdao.addEquipo(e);
                    request.getRequestDispatcher("Controlador?menu=Equipos&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    int ideq = Integer.valueOf(request.getParameter("id"));
                    request.setAttribute("EquipoEdit", eqdao.getEquipoId(ideq));
                    request.setAttribute("Marcas", eqdao.getMarcas());
                    request.getRequestDispatcher("Equipos.jsp").forward(request, response);
                    break;
                case "Actualizar":
                    String idEs = request.getParameter("txtId");
                    String dess = request.getParameter("txtDescripcion");
                    String marcas = request.getParameter("txtMarca");
                    String fechaAs = request.getParameter("txtFechaA");
                    String fechaBs = request.getParameter("txtFechaB");
                    Equipo es = new Equipo(Integer.valueOf(idEs), dess, new Marca(Integer.valueOf(marcas), null), fechaAs, fechaBs, 1);
                    eqdao.updateEquipo(es);
                    request.getRequestDispatcher("Controlador?menu=Equipos&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    eqdao.deleteEquipo(Integer.valueOf(request.getParameter("id")));
                    request.getRequestDispatcher("Controlador?menu=Equipos&accion=Listar").forward(request, response);
                    break;
                case "SolicitarPrestamo":
                    String ides = request.getParameter("idequipo");
                    request.setAttribute("Equipo", eqdao.getEquipoId(Integer.valueOf(ides)));
                    request.getRequestDispatcher("Prestar.jsp").forward(request, response);
                    break;
                case "VerDetalle":
                    Map<String, Object> parametros = new HashMap<>();
                    parametros.put("idE", request.getParameter("idE"));
                    request.setAttribute("Prestamo", eqdao.getPrestamoD(parametros));
                    request.getRequestDispatcher("Prestamo.jsp").forward(request, response);
                    break;
                case "Prestar":
                    int txtEquipo = Integer.valueOf(request.getParameter("txtIDE"));
                    int txtHoras = Integer.valueOf(request.getParameter("txtHoras"));
                    int txtRespon = Integer.valueOf(request.getParameter("txtIdUser"));
                    String txtFechaDev = request.getParameter("txtFechaDev");
                    Prestamo p = new Prestamo();
                    p.setHorasEquipo(txtHoras);
                    p.setHorasEntrega(0.0);
                    p.setFechaentrega(Fecha.FechaBD());
                    p.setFechaDevo(txtFechaDev);
                    if (edao.listarId(txtRespon).getIdusuario() != null) {
                        eqdao.addPrestamo(p, txtRespon, txtEquipo);
                        eqdao.updateEquipoEstado(txtEquipo,2);
                        request.getRequestDispatcher("Controlador?menu=Equipos&accion=Listar").forward(request, response);
                    } else {
                        request.getRequestDispatcher("Error.jsp").forward(request, response);
                    }
                    break;
                case "DevolverEquipo":
                    int txtEquipoP = Integer.valueOf(request.getParameter("txtIDE"));
                    int txtHorasE = Integer.valueOf(request.getParameter("txtHorasE"));
                    int txtIDP = Integer.valueOf(request.getParameter("txtIDP"));
                    eqdao.updatePrestamo(txtHorasE, txtIDP);
                    eqdao.updateEquipoEstado(txtEquipoP,1);
                    eqdao.updateEquipoHoras(txtEquipoP,txtHorasE);
                    request.getRequestDispatcher("Controlador?menu=Equipos&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Equipos.jsp").forward(request, response);
        }
        if (menu.equals("Profesion")) {
            switch (accion) {
                case "Listar":
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Eliminar":
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Profesion.jsp").forward(request, response);
        }
        if (menu.equals("Rol")) {
            switch (accion) {
                case "Listar":
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Eliminar":
                    break;
                default:
                    throw new AssertionError();
            }

            request.getRequestDispatcher("Rol.jsp").forward(request, response);
        }
        if (menu.equals("Departamento")) {
            switch (accion) {
                case "Listar":
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Eliminar":
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Departamento.jsp").forward(request, response);

        }
        if (menu.equals("Marca")) {
            switch (accion) {
                case "Listar":
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Eliminar":
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Marca.jsp").forward(request, response);

        }
        if (menu.equals("Usuario")) {
            switch (accion) {
                case "Listar":
                    List lista = edao.listar();
                    request.setAttribute("empleados", lista);
                    break;
                case "Agregar":
                    String idusuario = request.getParameter("txtidusuario");
                    String password = request.getParameter("txtpassword");
                    String nombre = request.getParameter("txtnombre");
                    String apellido = request.getParameter("txtapellido");
                    int profesion = Integer.parseInt(request.getParameter("txtprofesion"));
                    int rol = Integer.parseInt(request.getParameter("txtrol"));
                    String email = request.getParameter("txtemail");
                    int departamento = Integer.parseInt(request.getParameter("txtdep"));
                    String fechai = request.getParameter("txtfechai");
                    String fechacese = request.getParameter("txtfechac");
                    em.setIdusuario(idusuario);
                    em.setPassword(password);
                    em.setNombre(nombre);
                    em.setApellido(apellido);
                    em.setProfesion(profesion);
                    em.setRol(rol);
                    em.setEmail(email);
                    em.setDepartamento(departamento);
                    em.setFechaingreso(fechai);
                    em.setFechacese(fechacese);
                    edao.agregar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);

                    break;
                case "Editar":
                    ide = Integer.parseInt(request.getParameter("idusuario"));
                    Empleado e = edao.listarId(ide);
                    request.setAttribute("Usuario", e);
                    break;
                case "Actualizar":
                    String idusuario1 = request.getParameter("txtidusuario");
                    String password1 = request.getParameter("txtpassword");
                    String nombre1 = request.getParameter("txtnombre");
                    String apellido1 = request.getParameter("txtapellido");
                    int profesion1 = Integer.parseInt(request.getParameter("txtprofesion"));
                    int rol1 = Integer.parseInt(request.getParameter("txtrol"));
                    String email1 = request.getParameter("txtemail");
                    int departamento1 = Integer.parseInt(request.getParameter("txtdep"));
                    String fechai1 = request.getParameter("txtfechai");
                    String fechacese1 = request.getParameter("txtfechac");

                    em.setPassword(password1);
                    em.setNombre(nombre1);
                    em.setApellido(apellido1);
                    em.setProfesion(profesion1);
                    em.setRol(rol1);
                    em.setEmail(email1);
                    em.setDepartamento(departamento1);
                    em.setFechaingreso(fechai1);
                    em.setFechacese(fechacese1);
                    em.setIdusuario(idusuario1);
                    edao.actualizar(em);
                    request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    ide = Integer.parseInt(request.getParameter("idusuario"));

                    edao.delete(ide);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Usuario.jsp").forward(request, response);
        }
        if (menu.equals("Prestamo")) {
            request.getRequestDispatcher("Prestamo.jsp").forward(request, response);

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
