/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Shopping.Product;
import Shopping.ProductDAO;

/**
 *
 * @author Admin
 */
@WebServlet(name = "EditProductController", urlPatterns = {"/EditProduct"})
public class EditProductController extends HttpServlet {


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
        try {
            response.setContentType("text/html;charset=UTF-8");
            int id = Integer.valueOf(request.getParameter("id"));
            String price = request.getParameter("price");
            int stock = Integer.valueOf(request.getParameter("stock"));
            String img = request.getParameter("image");
            String descri = request.getParameter("description");
            String name = request.getParameter("name");
            String creDate = request.getParameter("creDate");
            ProductDAO pdao = new ProductDAO();
            pdao.UpdateProduct(id, name, price, stock, descri, img);
            response.sendRedirect("./ManagerProduct");
        } catch (Exception e) {
            response.sendRedirect("./404.html");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        ProductDAO dao = new ProductDAO();
        Product product = dao.getProductById(id);
        req.setAttribute("o", product);
        req.getRequestDispatcher("update.jsp").forward(req, resp);
        
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
