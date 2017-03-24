package com.ht.bean;

import java.io.*;

/**
 * Created by ArrayBin on 2017/3/17.
 */
public class Product implements Serializable {
    private int id; //主键
    private String productNo; //商品编号
    private int days;
    private int fileId; //文件id
    private String name; //商品名称
    private String brand; //商品品牌
    private String status; //状态
    private double price; //商品价格
    private int totalSales; //全国总销量
    private int totalStock; //全国总库存
    private int bjSales; //北京销量
    private int bjStock; //北京库存
    private int shSales; //上海销量
    private int shStock; //上海库存
    private int gzSales; //广州销量
    private int gzStock; //广州库存
    private int cdSales; //成都销量
    private int cdStock; //成都库存
    private int whSales; //武汉销量
    private int whStock; //武汉库存
    private int sySales; //沈阳销量
    private int syStock; //沈阳库存
    private int xaSales; //西安销量
    private int xaStock; //西安库存
    private int gaSales; //固安销量
    private int gaStock; //固安库存

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductNo() {
        return productNo;
    }

    public void setProductNo(String productNo) {
        this.productNo = productNo;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public int getFileId() {
        return fileId;
    }

    public void setFileId(int fileId) {
        this.fileId = fileId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getTotalSales() {
        return totalSales;
    }

    public void setTotalSales(int totalSales) {
        this.totalSales = totalSales;
    }

    public int getTotalStock() {
        return totalStock;
    }

    public void setTotalStock(int totalStock) {
        this.totalStock = totalStock;
    }

    public int getBjSales() {
        return bjSales;
    }

    public void setBjSales(int bjSales) {
        this.bjSales = bjSales;
    }

    public int getBjStock() {
        return bjStock;
    }

    public void setBjStock(int bjStock) {
        this.bjStock = bjStock;
    }

    public int getShSales() {
        return shSales;
    }

    public void setShSales(int shSales) {
        this.shSales = shSales;
    }

    public int getShStock() {
        return shStock;
    }

    public void setShStock(int shStock) {
        this.shStock = shStock;
    }

    public int getGzSales() {
        return gzSales;
    }

    public void setGzSales(int gzSales) {
        this.gzSales = gzSales;
    }

    public int getGzStock() {
        return gzStock;
    }

    public void setGzStock(int gzStock) {
        this.gzStock = gzStock;
    }

    public int getCdSales() {
        return cdSales;
    }

    public void setCdSales(int cdSales) {
        this.cdSales = cdSales;
    }

    public int getCdStock() {
        return cdStock;
    }

    public void setCdStock(int cdStock) {
        this.cdStock = cdStock;
    }

    public int getWhSales() {
        return whSales;
    }

    public void setWhSales(int whSales) {
        this.whSales = whSales;
    }

    public int getWhStock() {
        return whStock;
    }

    public void setWhStock(int whStock) {
        this.whStock = whStock;
    }

    public int getSySales() {
        return sySales;
    }

    public void setSySales(int sySales) {
        this.sySales = sySales;
    }

    public int getSyStock() {
        return syStock;
    }

    public void setSyStock(int syStock) {
        this.syStock = syStock;
    }

    public int getXaSales() {
        return xaSales;
    }

    public void setXaSales(int xaSales) {
        this.xaSales = xaSales;
    }

    public int getXaStock() {
        return xaStock;
    }

    public void setXaStock(int xaStock) {
        this.xaStock = xaStock;
    }

    public int getGaSales() {
        return gaSales;
    }

    public void setGaSales(int gaSales) {
        this.gaSales = gaSales;
    }

    public int getGaStock() {
        return gaStock;
    }

    public void setGaStock(int gaStock) {
        this.gaStock = gaStock;
    }

    /**
     * deep clone this object
     * 深度复制对象，把属性全部复到一个新对象中
     * @return
     * @throws CloneNotSupportedException
     */
    public Product copy() {
        try {
            ByteArrayOutputStream baos =new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(baos);
            oos.writeObject(this);
            ByteArrayInputStream bais =new ByteArrayInputStream(baos.toByteArray());
            ObjectInputStream oi=new ObjectInputStream(bais);
            Product p = new Product();
            p = (Product) oi.readObject();
            return p;
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;

    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", productNo='" + productNo + '\'' +
                ", days=" + days +
                ", fileId=" + fileId +
                ", name='" + name + '\'' +
                ", brand='" + brand + '\'' +
                ", status='" + status + '\'' +
                ", price=" + price +
                ", totalSales=" + totalSales +
                ", totalStock=" + totalStock +
                ", bjSales=" + bjSales +
                ", bjStock=" + bjStock +
                ", shSales=" + shSales +
                ", shStock=" + shStock +
                ", gzSales=" + gzSales +
                ", gzStock=" + gzStock +
                ", cdSales=" + cdSales +
                ", cdStock=" + cdStock +
                ", whSales=" + whSales +
                ", whStock=" + whStock +
                ", sySales=" + sySales +
                ", syStock=" + syStock +
                ", xaSales=" + xaSales +
                ", xaStock=" + xaStock +
                ", gaSales=" + gaSales +
                ", gaStock=" + gaStock +
                '}';
    }
}
