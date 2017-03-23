package com.ht.service;

import com.ht.bean.Product;
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
}
