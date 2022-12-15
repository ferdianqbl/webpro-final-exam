/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javatpoint.data;

/**
 *
 * @author Ferdian Iqbal
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.User;

public class UserData {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud-jsp", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int save(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into user(name,username,password) values(?,?,?)");
            ps.setString(1, u.getName());
            ps.setString(2, u.getUsername());
            ps.setString(3, u.getPassword());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update user set name=?,username=?,password=? where id=?");
            ps.setString(1, u.getName());
            ps.setString(2, u.getUsername());
            ps.setString(3, u.getPassword());
            ps.setInt(6, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from user where id=?");
            ps.setInt(1, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<User> getAllRecords() {
        List<User> list = new ArrayList<User>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from user");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static User getRecordById(int id) {
        User u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from user where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setName(rs.getString("username"));
                u.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }

    public static int getValidation(User u) {
        int status = 0;
        User users = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from user where username=? && password=?");
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                users = new User();
                users.setId(rs.getInt("id"));
                users.setName(rs.getString("name"));
                users.setUsername(rs.getString("username"));
                users.setPassword(rs.getString("password"));
            }
            
            if(users != null) status = 1;

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
