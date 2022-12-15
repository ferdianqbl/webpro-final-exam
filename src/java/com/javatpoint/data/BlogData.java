package com.javatpoint.data;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.Blog;

/**
 *
 * @author Ferdian Iqbal
 */
public class BlogData {


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

    public static int save(Blog u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into blog(title,body) values(?,?)");
            ps.setString(1, u.getTitle());
            ps.setString(2, u.getBody());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Blog u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update blog set title=?,body=? where id=?");
            ps.setString(1, u.getTitle());
            ps.setString(2, u.getBody());
            ps.setInt(3, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Blog u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from blog where id=?");
            ps.setInt(1, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Blog> getAllRecords() {
        List<Blog> list = new ArrayList<Blog>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from blog");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog u = new Blog();
                u.setId(rs.getInt("id"));
                u.setTitle(rs.getString("title"));
                u.setBody(rs.getString("body"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Blog getRecordById(int id) {
        Blog u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from blog where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Blog();
                u.setId(rs.getInt("id"));
                u.setTitle(rs.getString("name"));
                u.setBody(rs.getString("body"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
}
