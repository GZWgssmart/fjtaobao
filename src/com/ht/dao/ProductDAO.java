package com.ht.dao;

import com.ht.bean.Product;
import com.ht.bean.ProductInfo;
import com.ht.common.bean.Pager4EasyUI;

import java.util.List;

/**
 * Created by ArrayBin on 2017/3/20.
 */
public interface ProductDAO  {

    /**
     * 添加商品
     * @param product
     */
    public void addProduct(Product product);

    /**
     * 分页查询
     * @param pager
     * @param fileId
     * @param fType
     * @param days1
     * @return
     */
    public Pager4EasyUI<ProductInfo> pager(Pager4EasyUI<ProductInfo> pager, String fileId, String fType, String days1);

    /**
     * 计数
     * @param fileId
     * @return
     */
    public int count(String fileId);

    /**
     * 批量添加
     */
    public void addProducts(List<Product> products);

}

