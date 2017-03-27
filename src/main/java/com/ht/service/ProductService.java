package com.ht.service;

import com.ht.bean.Product;
import com.ht.bean.ProductInfo;
import com.ht.common.bean.Pager4EasyUI;

/**
 * Created by ArrayBin on 2017/3/21.
 */
public interface ProductService {

    public void addProduct(Product product);

    public Pager4EasyUI<ProductInfo> pager(Pager4EasyUI<ProductInfo> pager, String fileId, String fType, String days1);


}
