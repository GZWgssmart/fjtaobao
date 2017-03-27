package com.ht.service;

import com.ht.bean.Files;
import com.ht.common.bean.Pager4EasyUI;
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

    @Override
    public Pager4EasyUI<Files> pager(Pager4EasyUI<Files> pager) {
        pager = filesDAO.pager(pager);
        pager.setTotal(filesDAO.count());
        return pager;
    }

    @Override
    public Files queryByFilesId(String path) {
        return filesDAO.queryByFilesId(path);
    }

    @Override
    public void deleteFileByIds(String ids) {
        filesDAO.deleteFileByIds(ids);
    }
}
