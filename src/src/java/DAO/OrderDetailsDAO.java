/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Order;
import Model.Order_Details;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class OrderDetailsDAO extends DBContext{
    public ArrayList<Order_Details> getOrder_Details(ResultSet rs){
        try {
            ArrayList<Order_Details> listOrder_Details = new ArrayList<>();
            while(rs.next()){
                Order_Details od = new Order_Details();
                Order o = new Order();
                o.setOderID(rs.getInt("OrderId"));
                od.setOrderId(o);
                ProductDAO productDAO = new ProductDAO();
                od.setProductId(productDAO.getProductbyID(rs.getInt("productId")));
                od.setDiscount(rs.getFloat("discount"));
                od.setPrice(rs.getFloat("price"));
                od.setQuantity(rs.getInt("quantity"));
                listOrder_Details.add(od);
            }
            return listOrder_Details;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ArrayList<Order_Details> getOrder_DetailsByOrderId(int id){
        try {
            String sql = "select *from OrderDetail where OrderId=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            return getOrder_Details(rs);
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
  
    
    
    public static void main(String[] args) {
        OrderDAO odao = new OrderDAO();
        List<Order_Details> ls = odao.getAllOrderID();
        
        OrderDetailsDAO odDao = new OrderDetailsDAO();
         ArrayList<Order_Details> lsod;
        for (Order_Details l : ls) {
            System.out.println(l.getOrderId().getOderID());
            System.out.println("-------------------------");
         
        }
       
    }
    
    
   
}
