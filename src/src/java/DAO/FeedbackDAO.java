/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Feedback;
import Model.Feedback_Images;
import Model.Product;
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
 * @author long4
 */
public class FeedbackDAO extends DBContext {

    /**
     * set data for feedback of each product
     *
     * @param pid
     * @return
     */
    public List<Feedback> getProductFeedback(int pid) {
        String sql = "select f.RatedStar, f.UpdateDate, f.Note, u.Name, u.Image from Feedback f inner join [User] u\n"
                + "on f.UserId = u.Id\n"
                + "where f.ProductId = ?";
        List<Feedback> ls = new ArrayList<>();
        //check preparedStatement not be failed
        try {

            PreparedStatement stm = connection.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            stm.setInt(1, pid);
            ResultSet rs = stm.executeQuery();
            // loop all Result set to excute query and set data for feedback of each product
            while (rs.next()) {
                Feedback feedback = new Feedback();
                feedback.setRatedStar(rs.getFloat("ratedStar"));
                feedback.setUpdateDate(rs.getDate("updateDate"));
                feedback.setNote(rs.getString("note"));
                User users = new User();
                users.setName(rs.getString("name"));
                users.setImage(rs.getString("image"));
                feedback.setUserId(users);
                ls.add(feedback);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    /**
     * get the average of rating of product
     *
     * @param productId
     * @return
     */
    public float getAvgRateOfProduct(int productId) {
        String sql = "SELECT AVG(RatedStar)\n"
                + "FROM Feedback\n"
                + "WHERE ProductId=?";
        //check preparedStatement not be failed
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
            ResultSet rs = stm.executeQuery();
            // loop all Result set to excute query and get the average of rating of product
            while (rs.next()) {
                return rs.getFloat(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<Feedback> getListFeedbacks(ResultSet rs) {
        try {
            ArrayList<Feedback> listFeedbacks = new ArrayList<>();
            while (rs.next()) {
                Feedback fb = new Feedback();
                fb.setFeedbackId(rs.getInt("FeedbackId"));
                fb.setRatedStar(rs.getInt("RatedStar"));
                fb.setFeedbackStatus(rs.getBoolean("FeedbackStatus"));
                fb.setUpdateDate(rs.getDate("UpdateDate"));
                fb.setNote(rs.getString("Note"));
                fb.setTittle(rs.getString("Tittle"));
                ProductDAO productDAO = new ProductDAO();
                fb.setProductId(productDAO.getProductbyID(rs.getInt("ProductId")));
                UserDAO userDAO = new UserDAO();
                fb.setUserId(userDAO.GetUserById(rs.getInt("UserId")));
                OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
                String sql_image = "select *from [Feedback_Images] where FeedbackId=?";
                PreparedStatement stm = connection.prepareStatement(sql_image);
                stm.setInt(1, fb.getFeedbackId());
                ResultSet rs_image = stm.executeQuery();
                ArrayList<Feedback_Images> listImages = new ArrayList<>();
                while (rs_image.next()) {
                    Feedback_Images feedback_Images = new Feedback_Images();
                    feedback_Images.setFeedbackId(fb.getFeedbackId());
                    feedback_Images.setFeedbackImageId(rs_image.getInt("FeedbackImageId"));
                    feedback_Images.setStatus(rs_image.getBoolean("Status"));
                    feedback_Images.setImageName(rs_image.getString("ImageName"));
                    listImages.add(feedback_Images);
                }
                fb.setListImages(listImages);
                listFeedbacks.add(fb);
            }
            return listFeedbacks;
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Feedback getFeedbackById(int feedbackId) {
        try {
            String sql = "select *from Feedback where FeedbackId=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, feedbackId);
            ResultSet rs = st.executeQuery();
            return getListFeedbacks(rs).get(0);
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateStatusFeedback(int feedbackId, boolean status) {
        try {
            String sql = "UPDATE [Feedback]\n"
                    + "   SET [FeedbackStatus] = ?\n"
                    + " WHERE FeedbackId=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setBoolean(1, status);
            st.setInt(2, feedbackId);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateStatusImages(int imageId, boolean imageStatus) {
        try {
            String sql = "UPDATE [Feedback_Images]\n" +
                        "   SET [Status] = ?\n" +
                        " WHERE FeedbackImageId = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setBoolean(1, imageStatus);
            st.setInt(2, imageId);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        FeedbackDAO p = new FeedbackDAO();
//        List<Feedback> pt = p.getProductFeedback(1);
//        for (Feedback post_Category : pt) {
//            System.out.println(post_Category);
//        }
        Feedback fb = p.getFeedbackById(1);
        System.out.println(fb);
    }
}
