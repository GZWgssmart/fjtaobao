package com.ht.bean;


import java.sql.Date;

/**
 * Created by ArrayBin on 2017/3/17.
 */
public class Files {

    private int id;//文档主键
    private String name; //文档名字
    private String fileNo;
    private int days; //查询天数
    private String brand; //商品品牌
    private String pType; //商品类型
    private String pStatus; //商品状态
    private String fType; //文档类型
    private int fStatus; //文档状态
    private String fPath; //文件路径
    private Date createTime; //文件创建时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFileNo() {
        return fileNo;
    }

    public void setFileNo(String fileNo) {
        this.fileNo = fileNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }

    public String getpStatus() {
        return pStatus;
    }

    public void setpStatus(String pStatus) {
        this.pStatus = pStatus;
    }

    public String getfType() {
        return fType;
    }

    public void setfType(String fType) {
        this.fType = fType;
    }

    public int getfStatus() {
        return fStatus;
    }

    public void setfStatus(int fStatus) {
        this.fStatus = fStatus;
    }

    public String getfPath() {
        return fPath;
    }

    public void setfPath(String fPath) {
        this.fPath = fPath;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Files{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", days=" + days +
                ", brand='" + brand + '\'' +
                ", pType='" + pType + '\'' +
                ", pStatus='" + pStatus + '\'' +
                ", fType='" + fType + '\'' +
                ", fStatus='" + fStatus + '\'' +
                ", fPath='" + fPath + '\'' +
                ", createTime=" + createTime +
                '}';
    }



}
