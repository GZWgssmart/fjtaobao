package com.ht.dao;

import com.ht.bean.Product;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by ArrayBin on 2017/3/20.
 */
public class ProductDAOImpl extends BaseDAO implements ProductDAO {
    @Override
    public void addProduct(Product product) {
        getConn();
        String sql = "insert into t_product(productno, days, fileid, name,brand,status,price,totalsales,totalstock,bjsales" +
                ",bjstock,shsales,shstock,gzsales,gzstock,cdsales,cdstock,whsales,whstock,sysales,systock,xasales,xastock,gasales,gastock) values(?,?" +
                ",?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, product.getProductNo());
            ps.setInt(2, product.getDays());
            ps.setInt(3, product.getFileId());
            ps.setString(4,product.getName());
            ps.setString(5, product.getBrand());
            ps.setString(6, product.getStatus());
            ps.setDouble(7,product.getPrice());
            ps.setInt(8,product.getTotalSales());
            ps.setInt(9,product.getTotalStock());
            ps.setInt(10, product.getBjSales());
            ps.setInt(11,product.getBjStock());
            ps.setInt(12,product.getShSales());
            ps.setInt(13, product.getShStock());
            ps.setInt(14,product.getGzSales());
            ps.setInt(15,product.getGzStock());
            ps.setInt(16, product.getCdSales());
            ps.setInt(17,product.getCdStock());
            ps.setInt(18,product.getWhSales());
            ps.setInt(19, product.getWhStock());
            ps.setInt(20,product.getSySales());
            ps.setInt(21,product.getSyStock());
            ps.setInt(22, product.getXaSales());
            ps.setInt(23,product.getXaStock());
            ps.setInt(24,product.getGzSales());
            ps.setInt(25, product.getGaStock());
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }

    }
}
