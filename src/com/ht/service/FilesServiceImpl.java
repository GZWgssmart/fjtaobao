package com.ht.service;

import com.ht.bean.Files;
import com.ht.dao.FilesDAO;
import com.ht.dao.FilesDAOImpl;

import java.util.List;

/**
 * Created by ArrayBin on 2017/3/23.
 */
public class FilesServiceImpl implements FilesService {

    private FilesDAO filesDAO;

    public FilesServiceImpl() {
        filesDAO = new FilesDAOImpl();
    }

    @Override
    public void addFiles(Files files) {
        filesDAO.addFiles(files);
    }

    @Override
    public List<Files> queryAll(int pageNo, int pageSize) {
        return filesDAO.queryAll(pageNo, pageSize);
    }

    @Override
    public int count() {
        return filesDAO.count();
    }
}
