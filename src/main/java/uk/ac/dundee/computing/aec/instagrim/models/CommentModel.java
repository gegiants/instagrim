/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uk.ac.dundee.computing.aec.instagrim.models;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import java.util.*;
import java.util.Date;
import uk.ac.dundee.computing.aec.instagrim.stores.*;

/**
 *
 * @author George
 */
public class CommentModel {
    
    Cluster cluster;

    public void CommentModel() {

    }

    public void setCluster(Cluster cluster) {
        this.cluster = cluster;
    }
    
    
    
    public void setComment(java.util.UUID picid, String comment, String name){
           
        try{
           Session session = cluster.connect("instagrim");
           Date timestamp = new Date();
           PreparedStatement psInsertComment = session.prepare("insert into commentslist (picid, user, post_time, comment) values(?,?,?,?)");
           
           BoundStatement bsInsertComment = new BoundStatement(psInsertComment);
           session.execute(bsInsertComment.bind(picid,name,timestamp,comment));
           session.close();
        } catch(Exception e)   {
            System.out.println("Error --> " + e);
        }
    }
    
    
    public java.util.LinkedList<String> getCommentsForPic(java.util.LinkedList<Pic> lsPics) {
        Iterator<Pic> iterator = lsPics.iterator();
        
        
        //java.util.UUID picID = java.util.UUID.fromString("c7f33250-78c6-11e5-8c14-208984479511");
        java.util.LinkedList<String> Comments = new java.util.LinkedList<>();
        
        Session session = cluster.connect("instagrim");
        while (iterator.hasNext()){
            
           Pic p = (Pic) iterator.next();
           java.util.UUID ID = UUID.fromString(p.getSUUID());
            
        PreparedStatement ps = session.prepare("select comment from commentslist where picid =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        ID));
        if (rs.isExhausted()) {
            System.out.println("No comments to add");
            
        } else {
            String string;
            for (Row row : rs) {
                
               
                
                string = row.getString("comment");             
                
                Comments.add(string);

            }
        }
         
        
        
        
        }
        return Comments;
    }
    
}
