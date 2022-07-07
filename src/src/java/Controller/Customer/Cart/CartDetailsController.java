/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Customer.Cart;

import DAO.CartDAO;
import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Cart;
import Model.Cart_Detail;
import Model.Category;
import Model.Product;
import Model.User;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class CartDetailsController extends HttpServlet {

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
        String ckeyword = request.getParameter("categorykeyword");
        String skeyword = request.getParameter("searchkeyword");

        ProductDAO Pdao = new ProductDAO();
        List<Product> topProduct = Pdao.getTopProduct(true);
        List<Product> listProduct = null;
        HttpSession session = request.getSession();
        CategoryDAO Cdao = new CategoryDAO();

        String pageCate = request.getParameter("pageCate");

        User user = (User) session.getAttribute("user");
        CartDAO cartdao = new CartDAO();
        Cart cartUser = cartdao.getCartByUserID(user);
        if (user == null) {
            request.setAttribute("mess", "LoginForCart");
            request.getRequestDispatcher("../View/Homepage.jsp").forward(request, response);

        } else {
            Cart cart = null;
            if (pageCate == null) {
                pageCate = "1";
            }
            int pageCategory = Integer.parseInt(pageCate);
            final int CA_PAZE_SIZE = 3;
            int totalCategory = Cdao.getTotalCategoryByCartId(true, cartUser.getCartID());
            int endCaPage = totalCategory / CA_PAZE_SIZE;
            if (totalCategory % CA_PAZE_SIZE != 0) {
                endCaPage += 1;
            }
            List<Category> listCategoryCart = Cdao.getListCategoryPagingByCartId(true, cartUser.getCartID(), pageCategory, CA_PAZE_SIZE);

            int page = 1;
            int endPage = 0;
            int totalProduct = 0;
            String pageStr = request.getParameter("page");
            //check data of page exist
            if (pageStr != null) {
                page = Integer.parseInt(pageStr);
            }
            final int PAZE_SIZE = 30;
            //check list category by id exist and pagging
            if (ckeyword != null) {
                int keywordInt = Integer.parseInt(ckeyword);
                totalProduct = Pdao.getTotalProductByCidAndCartId(true, keywordInt, cartUser.getCartID());
                endPage = totalProduct / PAZE_SIZE;
                if (totalProduct % PAZE_SIZE != 0) {
                    endPage += 1;
                }
                cart = cartdao.getCartByCidAndCartIdPaging(user, keywordInt, page, PAZE_SIZE);
            } //check list search by name exist and pagging
            else if (skeyword != null) {
                totalProduct = Pdao.getTotalProductBySearchNameAndCartId(skeyword, cartUser.getCartID());
                endPage = totalProduct / PAZE_SIZE;
                if (totalProduct % PAZE_SIZE != 0) {
                    endPage += 1;
                }
                cart = cartdao.getCartBySearchNamAndCartIdPaging(user, skeyword, page, PAZE_SIZE);
            } else {//all product list and pagging
                cart = cartdao.getCartByUserIdPaging(user, page, PAZE_SIZE);
                totalProduct = Pdao.getTotalProductByCartId(cartUser.getCartID());
                endPage = totalProduct / PAZE_SIZE;
                int to = totalProduct % PAZE_SIZE;
                if (to != 0) {
                    endPage += 1;
                }
            }
            
            double totalPrice = 0;
            for (Map.Entry<Integer, Cart_Detail> entry : cartUser.getCarts().entrySet()) {
                Integer key = entry.getKey();
                Cart_Detail value = entry.getValue();
                Product product = value.getProduct();
                totalPrice += product.getPrice()*(1- product.getDiscount()) * value.getQuantity();
            }
            
            request.setAttribute("totalPrice", totalPrice);
            request.setAttribute("categorykeyword", ckeyword);
            request.setAttribute("searchkeyword", skeyword);
            request.setAttribute("PAZE_SIZE", PAZE_SIZE);
            request.setAttribute("CA_PAZE_SIZE", CA_PAZE_SIZE);
            request.setAttribute("totalProduct", totalProduct);
            request.setAttribute("page", page);
            request.setAttribute("endPage", endPage);
            request.setAttribute("pageCate", pageCate);
            request.setAttribute("endCaPage", endCaPage);
            request.setAttribute("listCategoryCart", listCategoryCart);
            request.setAttribute("listProduct", listProduct);
            session.setAttribute("cartUser", cartUser);
            request.setAttribute("cart", cart);
            request.setAttribute("topProduct", topProduct);
            request.getRequestDispatcher("/View/Customer/Cart/CartDetails.jsp").forward(request, response);
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

}
