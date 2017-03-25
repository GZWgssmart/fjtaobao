package com.ht.dao;

import com.ht.bean.Product;
import com.ht.bean.ProductInfo;
import com.ht.common.bean.Pager4EasyUI;

/**
 * Created by ArrayBin on 2017/3/20.
 */
public interface ProductDAO  {

    public void addProduct(Product product);

    public Pager4EasyUI<ProductInfo> pager(Pager4EasyUI<ProductInfo> pager, String fileId, String fType, String days1);

    public int count(String fileId);

}

