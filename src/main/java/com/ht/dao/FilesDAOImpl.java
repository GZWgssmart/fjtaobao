package com.ht.dao;

import com.ht.bean.Files;
import com.ht.common.bean.Pager4EasyUI;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ArrayBin on 2017/3/17.
 */
public class FilesDAOImpl extends BaseDAO implements FilesDAO {

    private Files setFiles(Files files, ResultSet rs) throws SQLException {
        files.setId(rs.getInt("id"));
        files.setFileNo(rs.getString("fileno"));
        files.setName(rs.getString("name"));
        files.setDays(rs.getInt("days"));
        files.setBrand(rs.getString("brand"));
        files.setpType(rs.getString("ptype"));
        files.setpStatus(rs.getString("pstatus"));
        files.setfType(rs.getString("ftype"));
        files.setfStatus(rs.getInt("fstatus"));
        files.setfPath(rs.getString("fpath"));
        files.setCreateTime(rs.getDate("createtime"));
        return files;
    }

    @Override
    public void addFiles(Files files) {
        getConn();
        String sql = "insert into t_file (fileno,name, days, brand, ptype, pstatus, ftype, fstatus, fpath, createtime) " +
                "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, files.getFileNo());
            ps.setString(2, files.getName());
            ps.setInt(3,files.getDays());
            ps.setString(4,files.getBrand());
            ps.setString(5, files.getpType());
            ps.setString(6, files.getpStatus());
            ps.setString(7, files.getfType());
            ps.setInt(8, files.getfStatus());
            ps.setString(9, files.getfPath());
            ps.setDate(10,  files.getCreateTime());
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }

    }

    @Override
    public List<Files> queryAll(int pageNo, int pageSize) {
        getConn();
        String sql = "select * from t_file limit ?, ?";
        List<Files> filesList = new ArrayList<>();
        try {
           PreparedStatement ps  =  conn.prepareStatement(sql);
           ps.setInt(1,pageNo);
           ps.setInt(2,pageSize);
           ResultSet rs = ps.executeQuery();
           while (rs.next()) {
                Files files = new Files();
                setFiles(files, rs);
                filesList.add(files);
           }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        close();
        return filesList;
    }

    @Override
    public int count() {
        getConn();
        String sql = "select count(id) from t_file";
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
        return count;
    }

    @Override
    public Pager4EasyUI<Files> pager(Pager4EasyUI<Files> pager) {
        getConn();
        String sql = "select * from t_file order by createtime desc limit " + pager.getBeginIndex() + ", " + pager.getPageSize();
        List<Files> filesList = new ArrayList<>();
        try {
            PreparedStatement ps  =  conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Files files = new Files();
                setFiles(files, rs);
                filesList.add(files);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        pager.setRows(filesList);
        close();
        return pager;
    }

    /**
     * 根据path去查询filesId
     * @return
     */
    @Override
    public Files queryByFilesId(String path) {
        getConn();
        Files files = null;
        String sql = "select * from t_file where fileno = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, path);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                files = new Files();
                setFiles(files, rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return files;
    }

    @Override
    public void deleteFileByIds(String ids) {
        getConn();
        String sql = "delete from t_file where id in (" + ids + ")";
        String sql1 = "delete from t_product where fileid in(" + ids + ")";
        try {
            PreparedStatement ps  =  conn.prepareStatement(sql);
            ps.execute();
            PreparedStatement ps1 = conn.prepareStatement(sql1);
            ps1.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        close();
    }


}
