package com.ht.dao;

import com.ht.bean.Files;
import com.ht.common.bean.Pager4EasyUI;

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
    public List<Files> queryAll(int pageNo, int pageSize);

    /**
     * 查询所有的文档总数
     */
    public int count();

    /**
     * 分页查询所有文档
     * @param pager
     * @return
     */
    public Pager4EasyUI<Files> pager(Pager4EasyUI<Files> pager);

    /**
     * 根据path查找fileId
     */
    public Files queryByFilesId(String path);

    /**
     * 根据文件id删除文件
     * @param ids
     */
    public void deleteFileByIds(String ids);



}
