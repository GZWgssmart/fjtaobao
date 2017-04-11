package com.ht.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by ArrayBin on 2017/3/17.
 */
public class BaseDAO {
    protected Connection conn;

    public void getConn() {
        try {
            Context context = new InitialContext();
            Object obj = context.lookup("java:comp/env/goods/mysql");
            if (obj instanceof DataSource) {
                DataSource dataSource = (DataSource) obj;
                conn = dataSource.getConnection();
            }
        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
