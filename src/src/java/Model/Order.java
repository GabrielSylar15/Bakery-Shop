/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author long4
 */
public class Order {

    private int oderID;
    private User userId;
    private int saleId;
    private int orderStatus;
    private Date orderDate;
    private String saleNote;
    private Date Updated;
    private float totalMoney;
    private String status;
    private ArrayList<Order_Details> listOder_Details;

    public float getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(float totalMoney) {
        this.totalMoney = totalMoney;
    }

    public Order() {
    }

    public ArrayList<Order_Details> getListOder_Details() {
        return listOder_Details;
    }

    public void setListOder_Details(ArrayList<Order_Details> listOder_Details) {
        this.listOder_Details = listOder_Details;
    }

    public Order(int oderID, User userId, int saleId, int orderStatus, Date orderDate, String saleNote, Date Updated, float totalMoney, String status, ArrayList<Order_Details> listOder_Details) {
        this.oderID = oderID;
        this.userId = userId;
        this.saleId = saleId;
        this.orderStatus = orderStatus;
        this.orderDate = orderDate;
        this.saleNote = saleNote;
        this.Updated = Updated;
        this.totalMoney = totalMoney;
        this.status = status;
        this.listOder_Details = listOder_Details;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }




    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }

    @Override
    public String toString() {
        return "Order{" + "oderID=" + oderID + ", userId=" + userId + ", saleId=" + saleId + ", orderStatus=" + orderStatus + ", orderDate=" + orderDate + ", saleNote=" + saleNote + ", Updated=" + Updated + ", totalMoney=" + totalMoney + ", status=" + status + ", listOder_Details=" + listOder_Details + '}';
    }

    public int getOderID() {
        return oderID;
    }

    public void setOderID(int oderID) {
        this.oderID = oderID;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public int getSaleId() {
        return saleId;
    }

    public void setSaleId(int saleId) {
        this.saleId = saleId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getSaleNote() {
        return saleNote;
    }

    public void setSaleNote(String saleNote) {
        this.saleNote = saleNote;
    }

    public Date getUpdated() {
        return Updated;
    }

    public void setUpdated(Date Updated) {
        this.Updated = Updated;
    }

}
