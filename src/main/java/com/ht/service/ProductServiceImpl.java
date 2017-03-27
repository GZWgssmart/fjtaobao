package com.ht.service;

import com.ht.bean.Product;
import com.ht.bean.ProductInfo;
import com.ht.common.bean.Pager4EasyUI;
import com.ht.dao.ProductDAO;
import com.ht.dao.ProductDAOImpl;

/**
 * Created by ArrayBin on 2017/3/21.
 */
public class ProductServiceImpl implements ProductService {
    private ProductDAO productDAO;

    public ProductServiceImpl() {
        productDAO = new ProductDAOImpl();
    }


    @Override
    public void addProduct(Product product) {
        productDAO.addProduct(product);
    }

    @Override
    public Pager4EasyUI<ProductInfo> pager(Pager4EasyUI<ProductInfo> pager, String fileId, String fType) {
        pager = productDAO.pager(pager,  fileId, fType);
        pager.setTotal(productDAO.count(fileId));
        return pager;
    }
}
