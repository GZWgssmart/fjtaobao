package com.ht.dao;

import com.ht.bean.Files;

import java.util.List;

/**
 * Created by ArrayBin on 2017/3/17.
 */
public interface FilesDAO {


    /**
     * 添加文档
     */
    public void addFiles(Files files);

    /**
     * 查询所有的文档
     */

    public List<Files> queryAll();
}
