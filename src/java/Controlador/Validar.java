/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Athena
 */
public class Validar extends HttpServlet {
    
    EmpleadoDAO edao = new EmpleadoDAO();
    Empleado em = new Empleado();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String accion = request.getParameter("accion");
        if(accion.equalsIgnoreCase("Ingresar")){
            String idusuario= request.getParameter("txtuser");
             String password=request.getParameter("txtpass");
             em=edao.validar(idusuario, password);
             if(em.getIdusuario()!= null){
                 request.setAttribute("usuario", em);
                 request.getRequestDispatcher("Principal.jsp").forward(request, response);
             }else{
                 request.getRequestDispatcher("index.jsp").forward(request, response);
             }
        }else{
              request.getRequestDispatcher("index.jsp").forward(request, response);
        }
     
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
