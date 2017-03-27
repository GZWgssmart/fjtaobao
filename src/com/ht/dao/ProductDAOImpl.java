package com.ht.dao;

import com.ht.bean.Product;
import com.ht.bean.ProductInfo;
import com.ht.common.bean.Pager4EasyUI;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ArrayBin on 2017/3/20.
 */
public class ProductDAOImpl extends BaseDAO implements ProductDAO {

    private ProductInfo setProduct(ProductInfo product, ResultSet rs) throws SQLException {
        product.setId(rs.getInt("id"));
        product.setProductNo(rs.getString("productno"));
        product.setName(rs.getString("name"));
        product.setPrice(rs.getDouble("price"));
        product.setStatus(rs.getString("status"));
        product.setDays(rs.getInt("days"));
        product.setBrand(rs.getString("brand"));
        product.setFileId(rs.getInt("fileid"));
        product.setTotalSales(rs.getInt("totalsales"));
        product.setTotalStock(rs.getInt("totalstock"));
        product.setBjSales(rs.getInt("bjsales"));
        product.setBjStock(rs.getInt("bjstock"));
        product.setShSales(rs.getInt("shsales"));
        product.setShStock(rs.getInt("shstock"));
        product.setGzSales(rs.getInt("gzsales"));
        product.setGzStock(rs.getInt("gzstock"));
        product.setCdSales(rs.getInt("cdsales"));
        product.setCdStock(rs.getInt("cdstock"));
        product.setWhSales(rs.getInt("whsales"));
        product.setWhStock(rs.getInt("whstock"));
        product.setSySales(rs.getInt("sysales"));
        product.setSyStock(rs.getInt("systock"));
        product.setXaSales(rs.getInt("xasales"));
        product.setXaStock(rs.getInt("xastock"));
        product.setGaSales(rs.getInt("gasales"));
        product.setGaStock(rs.getInt("gastock"));
        return product;
    }

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

    @Override
    public Pager4EasyUI<ProductInfo> pager(Pager4EasyUI<ProductInfo> pager, String fileId, String fType, String days1) {
        getConn();
        String sql = "";
        if (fType.equals("xc")) {
            sql = "select * from t_product where fileid in ("+ fileId +") order by days group by productno desc limit " + pager.getBeginIndex() + ", " + pager.getPageSize();
        } else {
            if (days1 != null && !"".equals(days1)) {
                sql = "select * from t_product where fileid in (" + fileId + ") and days in (" + days1 + ") group by productno desc limit " + pager.getBeginIndex() + ", " + pager.getPageSize();
            } else {
                sql = "select * from t_product where fileid in (" + fileId + ") group by productno desc limit " + pager.getBeginIndex() + ", " + pager.getPageSize();
            }
        }
        List<ProductInfo> productList = new ArrayList<ProductInfo>();
        try {
            PreparedStatement ps  =  conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductInfo product = new ProductInfo();
                setProduct(product, rs);
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        pager.setRows(productList);
        close();
        return pager;
    }

    @Override
    public int count(String fileId) {
        getConn();
        String sql = "select count(*) from t_product where fileid in (" + fileId + ")";
        int count = 0;
        try {
            PreparedStatement ps  =  conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        close();
        return count;
    }

    @Override
    public void addProducts(List<Product> products) {

    }
}
