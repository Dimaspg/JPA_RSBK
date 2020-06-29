/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Form;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session.FormFacade;

/**
 *
 * @author rafli
 */
public class Servlet extends HttpServlet {
@EJB
FormFacade formFacade;
private Form form;
private List<Form> listSurvey = new ArrayList<Form>();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String action = request.getParameter("action") == null? "list":request.getParameter("action");
           
           RequestDispatcher dis;
           
           if(action.equals("add")){
               String nama = request.getParameter("nama");
               String jenis_kelamin = request.getParameter("gender");
               int umur = Integer.parseInt(request.getParameter("umur"));
               String alamat = request.getParameter("alamat");
               String riwayat = request.getParameter("riwayat");
               String pertanyaan1 = request.getParameter("pertanyaan1");
               String pertanyaan2 = request.getParameter("pertanyaan2");
               String pertanyaan3 = request.getParameter("pertanyaan3");
               String pertanyaan4 = request.getParameter("pertanyaan4");
               String pertanyaan5 = request.getParameter("pertanyaan5");
               
               form = new Form();
               form.setNama(nama);
               form.setUmur(umur);
               form.setJenisKelamin(jenis_kelamin);
               form.setAlamat(alamat);
               form.setRiwayatSakit(riwayat);
               form.setPertanyaan1(pertanyaan1);
               form.setPertanyaan2(pertanyaan2);
               form.setPertanyaan3(pertanyaan3);
               form.setPertanyaan4(pertanyaan4);
               form.setPertanyaan5(pertanyaan5);
               
               formFacade.create(form);
               getListForm(request, response);
               dis = request.getRequestDispatcher("index.jsp");
               dis.forward(request, response);
           } else {
               getListForm(request, response);
               dis = request.getRequestDispatcher("index.jsp");
               dis.forward(request, response);
           }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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

    private void getListForm(HttpServletRequest request, HttpServletResponse response) {
        listSurvey = formFacade.findAll();
        request.setAttribute("listSurvey", listSurvey);    
    }

}
