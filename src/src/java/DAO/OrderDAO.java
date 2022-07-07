/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Order;
import Model.Order_Details;
import Model.User;
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
public class OrderDAO extends DBContext {

    public ArrayList<Order> getListOrders(ResultSet rs) {
        ArrayList<Order> listOrders = new ArrayList<>();
        try {
            while (rs.next()) {
                Order o = new Order();
                o.setOderID(rs.getInt("OrderId"));
                o.setSaleId(rs.getInt("SaleId"));
                o.setOrderDate(rs.getDate("OrderDate"));
                o.setSaleNote(rs.getString("SaleNote"));
//                o.setOrderStatus(rs.getNString("OrderStatus"));
                o.setOrderStatus(rs.getInt("OrderStatus"));
                o.setStatus(rs.getString("status"));
                User u = new User();
                u.setId(rs.getInt("UserId"));
                o.setUserId(u);
                OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
                o.setListOder_Details(orderDetailsDAO.getOrder_DetailsByOrderId(o.getOderID()));
                o.setUpdated(rs.getDate("LastUpdated"));
                listOrders.add(o);
            }
            return listOrders;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Order> getOrdersByUserId(int userId) {
        try {
            String sql = "select *from [Order] as a join Order_Status as b on a.OrderStatus = b.OrderStatusID where UserId=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userId);
            ResultSet rs = st.executeQuery();
            return getListOrders(rs);
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Order> getListOrders(int page_size, int page_index, int userId) {
        try {
            String sql = "select *from (select *, ROW_NUMBER() OVER(order by OrderId asc) as row_index from [Order] as a join Order_Status as b on a.OrderStatus = b.OrderStatusID where UserId=?) as tbl\n"
                    + "where row_index>=?*(?-1)+1 and row_index<=?*?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userId);
            st.setInt(2, page_size);
            st.setInt(3, page_index);
            st.setInt(4, page_size);
            st.setInt(5, page_index);
            ResultSet rs = st.executeQuery();
            return getListOrders(rs);
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

//    Get number of records by (userId, total numbers records,....)
    public int getNumberOfRecordsOrdersByCondition(String sql) {
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int count = rs.getInt("total");
                return count;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public int getNumberOfRecordsOrdersByUserId(int userId) {
        String sql = "Select Count (*) as total from [Order] where userId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int count = rs.getInt("total");
                return count;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public Order getOrdersByOrderId(int orderId) {
        try {
            String sql = "select *from [Order] as a join Order_Status as b on a.OrderStatus = b.OrderStatusID where OrderId = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, orderId);
            ResultSet rs = st.executeQuery();
            return getListOrders(rs).get(0);
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public List<Order_Details> getAllOrderID(){
       List<Order_Details> ls = new ArrayList<>();
        try {
            
            String sql = "select orderid from [order]";
            PreparedStatement stm = connection.prepareCall(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setOderID(rs.getInt(1));
                Order_Details od = new Order_Details();
                od.setOrderId(o);
                ls.add(od);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    
    public static void main(String[] args) {
        OrderDAO o = new OrderDAO();
        for (Order x : o.getListOrders(2, 1, 2)) {
            System.out.println(x.getStatus());
        }

    }
}
