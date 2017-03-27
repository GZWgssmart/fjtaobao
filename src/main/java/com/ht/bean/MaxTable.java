package com.ht.bean;

import java.io.*;

/**
 * Created by Administrator on 2017/3/27.
 */
public class MaxTable implements Serializable {
    private int id; // 商品id
    private String productNo; // 商品编号
    private String name; // 商品名称
    private String brand; // 商品品牌
    private String status; //状态
    private double price; //商品价格
    private int totalStock; //全国总库存
    private int totalSales; //全国总销量
    private int totalStockCount; // 全国总库存额
    private int totalSalesCount; // 全国总销售额

    private int bjStock; // 北京库存
    private int bjSales7; // 北京7天销量
    private double bjTurnoverDays7; // 北京7天周转天数
    private  int bjCount7; // 北京7天补货数
    private int bjSales15; // 北京15天销量
    private double bjTurnoverDays15; // 北京15天周转天数
    private  int bjCount15; // 北京15天补货数
    private int bjSales30; // 北京30天销量
    private String bjGrowthRate7to15; // 北京7到15天的增长率
    private String bjGrowthRate15to30; // 北京15到30天的增长率

    private int shStock; // 上海库存
    private int shSales7; // 上海7天销量
    private double shTurnoverDays7; // 上海7天周转天数
    private  int shCount7; // 上海7天补货数
    private int shSales15; // 上海15天销量
    private double shTurnoverDays15; // 上海15天周转天数
    private  int shCount15; // 上海15天补货数
    private int shSales30; // 上海30天销量
    private String shGrowthRate7to15; // 上海7到15天的增长率
    private String shGrowthRate15to30; // 上海15到30天的增长率

    private int gzStock; // 广州库存
    private int gzSales7; // 广州7天销量
    private double gzTurnoverDays7; // 广州7天周转天数
    private  int gzCount7; // 广州7天补货数
    private int gzSales15; // 广州15天销量
    private double gzTurnoverDays15; // 广州15天周转天数
    private  int gzCount15; // 广州15天补货数
    private int gzSales30; // 广州30天销量
    private String gzGrowthRate7to15; // 广州7到15天的增长率
    private String gzGrowthRate15to30; // 广州15到30天的增长率

    private int cdStock; // 成都库存
    private int cdSales7; // 成都7天销量
    private double cdTurnoverDays7; // 成都7天周转天数
    private  int cdCount7; // 成都7天补货数
    private int cdSales15; // 成都15天销量
    private double cdTurnoverDays15; // 成都15天周转天数
    private  int cdCount15; // 成都15天补货数
    private int cdSales30; // 成都30天销量
    private String cdGrowthRate7to15; // 成都7到15天的增长率
    private String cdGrowthRate15to30; // 成都15到30天的增长率

    private int whStock; // 武汉库存
    private int whSales7; // 武汉7天销量
    private double whTurnoverDays7; // 武汉7天周转天数
    private  int whCount7; // 武汉7天补货数
    private int whSales15; // 武汉15天销量
    private double whTurnoverDays15; // 武汉15天周转天数
    private  int whCount15; // 武汉15天补货数
    private int whSales30; // 武汉30天销量
    private String whGrowthRate7to15; // 武汉7到15天的增长率
    private String whGrowthRate15to30; // 武汉15到30天的增长率

    private int syStock; // 沈阳库存
    private int sySales7; // 沈阳7天销量
    private double syTurnoverDays7; // 沈阳7天周转天数
    private  int syCount7; // 沈阳7天补货数
    private int sySales15; // 沈阳15天销量
    private double syTurnoverDays15; // 沈阳15天周转天数
    private  int syCount15; // 沈阳15天补货数
    private int sySales30; // 沈阳30天销量
    private String syGrowthRate7to15; // 沈阳7到15天的增长率
    private String syGrowthRate15to30; // 沈阳15到30天的增长率

    private int xaStock; // 西安库存
    private int xaSales7; // 西安7天销量
    private double xaTurnoverDays7; // 西安7天周转天数
    private  int xaCount7; // 西安7天补货数
    private int xaSales15; // 西安15天销量
    private double xaTurnoverDays15; // 西安15天周转天数
    private  int xaCount15; // 西安15天补货数
    private int xaSales30; // 西安30天销量
    private String xaGrowthRate7to15; // 西安7到15天的增长率
    private String xaGrowthRate15to30; // 西安15到30天的增长率

    private int gaStock; // 固安库存
    private int gaSales7; // 固安7天销量
    private double gaTurnoverDays7; // 固安7天周转天数
    private  int gaCount7; // 固安7天补货数
    private int gaSales15; // 固安15天销量
    private double gaTurnoverDays15; // 固安15天周转天数
    private  int gaCount15; // 固安15天补货数
    private int gaSales30; // 固安30天销量
    private String gaGrowthRate7to15; // 固安7到15天的增长率
    private String gaGrowthRate15to30; // 固安15到30天的增长率

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

    public int getTotalStock() {
        return totalStock;
    }

    public void setTotalStock(int totalStock) {
        this.totalStock = totalStock;
    }

    public int getTotalSales() {
        return totalSales;
    }

    public void setTotalSales(int totalSales) {
        this.totalSales = totalSales;
    }

    public int getTotalStockCount() {
        return totalStockCount;
    }

    public void setTotalStockCount(int totalStockCount) {
        this.totalStockCount = totalStockCount;
    }

    public int getTotalSalesCount() {
        return totalSalesCount;
    }

    public void setTotalSalesCount(int totalSalesCount) {
        this.totalSalesCount = totalSalesCount;
    }

    public int getBjStock() {
        return bjStock;
    }

    public void setBjStock(int bjStock) {
        this.bjStock = bjStock;
    }

    public int getBjSales7() {
        return bjSales7;
    }

    public void setBjSales7(int bjSales7) {
        this.bjSales7 = bjSales7;
    }

    public double getBjTurnoverDays7() {
        return bjTurnoverDays7;
    }

    public void setBjTurnoverDays7(double bjTurnoverDays7) {
        this.bjTurnoverDays7 = bjTurnoverDays7;
    }

    public int getBjCount7() {
        return bjCount7;
    }

    public void setBjCount7(int bjCount7) {
        this.bjCount7 = bjCount7;
    }

    public int getBjSales15() {
        return bjSales15;
    }

    public void setBjSales15(int bjSales15) {
        this.bjSales15 = bjSales15;
    }

    public double getBjTurnoverDays15() {
        return bjTurnoverDays15;
    }

    public void setBjTurnoverDays15(double bjTurnoverDays15) {
        this.bjTurnoverDays15 = bjTurnoverDays15;
    }

    public int getBjCount15() {
        return bjCount15;
    }

    public void setBjCount15(int bjCount15) {
        this.bjCount15 = bjCount15;
    }

    public int getBjSales30() {
        return bjSales30;
    }

    public void setBjSales30(int bjSales30) {
        this.bjSales30 = bjSales30;
    }

    public String getBjGrowthRate7to15() {
        return bjGrowthRate7to15;
    }

    public void setBjGrowthRate7to15(String bjGrowthRate7to15) {
        this.bjGrowthRate7to15 = bjGrowthRate7to15;
    }

    public String getBjGrowthRate15to30() {
        return bjGrowthRate15to30;
    }

    public void setBjGrowthRate15to30(String bjGrowthRate15to30) {
        this.bjGrowthRate15to30 = bjGrowthRate15to30;
    }

    public int getShStock() {
        return shStock;
    }

    public void setShStock(int shStock) {
        this.shStock = shStock;
    }

    public int getShSales7() {
        return shSales7;
    }

    public void setShSales7(int shSales7) {
        this.shSales7 = shSales7;
    }

    public double getShTurnoverDays7() {
        return shTurnoverDays7;
    }

    public void setShTurnoverDays7(double shTurnoverDays7) {
        this.shTurnoverDays7 = shTurnoverDays7;
    }

    public int getShCount7() {
        return shCount7;
    }

    public void setShCount7(int shCount7) {
        this.shCount7 = shCount7;
    }

    public int getShSales15() {
        return shSales15;
    }

    public void setShSales15(int shSales15) {
        this.shSales15 = shSales15;
    }

    public double getShTurnoverDays15() {
        return shTurnoverDays15;
    }

    public void setShTurnoverDays15(double shTurnoverDays15) {
        this.shTurnoverDays15 = shTurnoverDays15;
    }

    public int getShCount15() {
        return shCount15;
    }

    public void setShCount15(int shCount15) {
        this.shCount15 = shCount15;
    }

    public int getShSales30() {
        return shSales30;
    }

    public void setShSales30(int shSales30) {
        this.shSales30 = shSales30;
    }

    public String getShGrowthRate7to15() {
        return shGrowthRate7to15;
    }

    public void setShGrowthRate7to15(String shGrowthRate7to15) {
        this.shGrowthRate7to15 = shGrowthRate7to15;
    }

    public String getShGrowthRate15to30() {
        return shGrowthRate15to30;
    }

    public void setShGrowthRate15to30(String shGrowthRate15to30) {
        this.shGrowthRate15to30 = shGrowthRate15to30;
    }

    public int getGzStock() {
        return gzStock;
    }

    public void setGzStock(int gzStock) {
        this.gzStock = gzStock;
    }

    public int getGzSales7() {
        return gzSales7;
    }

    public void setGzSales7(int gzSales7) {
        this.gzSales7 = gzSales7;
    }

    public double getGzTurnoverDays7() {
        return gzTurnoverDays7;
    }

    public void setGzTurnoverDays7(double gzTurnoverDays7) {
        this.gzTurnoverDays7 = gzTurnoverDays7;
    }

    public int getGzCount7() {
        return gzCount7;
    }

    public void setGzCount7(int gzCount7) {
        this.gzCount7 = gzCount7;
    }

    public int getGzSales15() {
        return gzSales15;
    }

    public void setGzSales15(int gzSales15) {
        this.gzSales15 = gzSales15;
    }

    public double getGzTurnoverDays15() {
        return gzTurnoverDays15;
    }

    public void setGzTurnoverDays15(double gzTurnoverDays15) {
        this.gzTurnoverDays15 = gzTurnoverDays15;
    }

    public int getGzCount15() {
        return gzCount15;
    }

    public void setGzCount15(int gzCount15) {
        this.gzCount15 = gzCount15;
    }

    public int getGzSales30() {
        return gzSales30;
    }

    public void setGzSales30(int gzSales30) {
        this.gzSales30 = gzSales30;
    }

    public String getGzGrowthRate7to15() {
        return gzGrowthRate7to15;
    }

    public void setGzGrowthRate7to15(String gzGrowthRate7to15) {
        this.gzGrowthRate7to15 = gzGrowthRate7to15;
    }

    public String getGzGrowthRate15to30() {
        return gzGrowthRate15to30;
    }

    public void setGzGrowthRate15to30(String gzGrowthRate15to30) {
        this.gzGrowthRate15to30 = gzGrowthRate15to30;
    }

    public int getCdStock() {
        return cdStock;
    }

    public void setCdStock(int cdStock) {
        this.cdStock = cdStock;
    }

    public int getCdSales7() {
        return cdSales7;
    }

    public void setCdSales7(int cdSales7) {
        this.cdSales7 = cdSales7;
    }

    public double getCdTurnoverDays7() {
        return cdTurnoverDays7;
    }

    public void setCdTurnoverDays7(double cdTurnoverDays7) {
        this.cdTurnoverDays7 = cdTurnoverDays7;
    }

    public int getCdCount7() {
        return cdCount7;
    }

    public void setCdCount7(int cdCount7) {
        this.cdCount7 = cdCount7;
    }

    public int getCdSales15() {
        return cdSales15;
    }

    public void setCdSales15(int cdSales15) {
        this.cdSales15 = cdSales15;
    }

    public double getCdTurnoverDays15() {
        return cdTurnoverDays15;
    }

    public void setCdTurnoverDays15(double cdTurnoverDays15) {
        this.cdTurnoverDays15 = cdTurnoverDays15;
    }

    public int getCdCount15() {
        return cdCount15;
    }

    public void setCdCount15(int cdCount15) {
        this.cdCount15 = cdCount15;
    }

    public int getCdSales30() {
        return cdSales30;
    }

    public void setCdSales30(int cdSales30) {
        this.cdSales30 = cdSales30;
    }

    public String getCdGrowthRate7to15() {
        return cdGrowthRate7to15;
    }

    public void setCdGrowthRate7to15(String cdGrowthRate7to15) {
        this.cdGrowthRate7to15 = cdGrowthRate7to15;
    }

    public String getCdGrowthRate15to30() {
        return cdGrowthRate15to30;
    }

    public void setCdGrowthRate15to30(String cdGrowthRate15to30) {
        this.cdGrowthRate15to30 = cdGrowthRate15to30;
    }

    public int getWhStock() {
        return whStock;
    }

    public void setWhStock(int whStock) {
        this.whStock = whStock;
    }

    public int getWhSales7() {
        return whSales7;
    }

    public void setWhSales7(int whSales7) {
        this.whSales7 = whSales7;
    }

    public double getWhTurnoverDays7() {
        return whTurnoverDays7;
    }

    public void setWhTurnoverDays7(double whTurnoverDays7) {
        this.whTurnoverDays7 = whTurnoverDays7;
    }

    public int getWhCount7() {
        return whCount7;
    }

    public void setWhCount7(int whCount7) {
        this.whCount7 = whCount7;
    }

    public int getWhSales15() {
        return whSales15;
    }

    public void setWhSales15(int whSales15) {
        this.whSales15 = whSales15;
    }

    public double getWhTurnoverDays15() {
        return whTurnoverDays15;
    }

    public void setWhTurnoverDays15(double whTurnoverDays15) {
        this.whTurnoverDays15 = whTurnoverDays15;
    }

    public int getWhCount15() {
        return whCount15;
    }

    public void setWhCount15(int whCount15) {
        this.whCount15 = whCount15;
    }

    public int getWhSales30() {
        return whSales30;
    }

    public void setWhSales30(int whSales30) {
        this.whSales30 = whSales30;
    }

    public String getWhGrowthRate7to15() {
        return whGrowthRate7to15;
    }

    public void setWhGrowthRate7to15(String whGrowthRate7to15) {
        this.whGrowthRate7to15 = whGrowthRate7to15;
    }

    public String getWhGrowthRate15to30() {
        return whGrowthRate15to30;
    }

    public void setWhGrowthRate15to30(String whGrowthRate15to30) {
        this.whGrowthRate15to30 = whGrowthRate15to30;
    }

    public int getSyStock() {
        return syStock;
    }

    public void setSyStock(int syStock) {
        this.syStock = syStock;
    }

    public int getSySales7() {
        return sySales7;
    }

    public void setSySales7(int sySales7) {
        this.sySales7 = sySales7;
    }

    public double getSyTurnoverDays7() {
        return syTurnoverDays7;
    }

    public void setSyTurnoverDays7(double syTurnoverDays7) {
        this.syTurnoverDays7 = syTurnoverDays7;
    }

    public int getSyCount7() {
        return syCount7;
    }

    public void setSyCount7(int syCount7) {
        this.syCount7 = syCount7;
    }

    public int getSySales15() {
        return sySales15;
    }

    public void setSySales15(int sySales15) {
        this.sySales15 = sySales15;
    }

    public double getSyTurnoverDays15() {
        return syTurnoverDays15;
    }

    public void setSyTurnoverDays15(double syTurnoverDays15) {
        this.syTurnoverDays15 = syTurnoverDays15;
    }

    public int getSyCount15() {
        return syCount15;
    }

    public void setSyCount15(int syCount15) {
        this.syCount15 = syCount15;
    }

    public int getSySales30() {
        return sySales30;
    }

    public void setSySales30(int sySales30) {
        this.sySales30 = sySales30;
    }

    public String getSyGrowthRate7to15() {
        return syGrowthRate7to15;
    }

    public void setSyGrowthRate7to15(String syGrowthRate7to15) {
        this.syGrowthRate7to15 = syGrowthRate7to15;
    }

    public String getSyGrowthRate15to30() {
        return syGrowthRate15to30;
    }

    public void setSyGrowthRate15to30(String syGrowthRate15to30) {
        this.syGrowthRate15to30 = syGrowthRate15to30;
    }

    public int getXaStock() {
        return xaStock;
    }

    public void setXaStock(int xaStock) {
        this.xaStock = xaStock;
    }

    public int getXaSales7() {
        return xaSales7;
    }

    public void setXaSales7(int xaSales7) {
        this.xaSales7 = xaSales7;
    }

    public double getXaTurnoverDays7() {
        return xaTurnoverDays7;
    }

    public void setXaTurnoverDays7(double xaTurnoverDays7) {
        this.xaTurnoverDays7 = xaTurnoverDays7;
    }

    public int getXaCount7() {
        return xaCount7;
    }

    public void setXaCount7(int xaCount7) {
        this.xaCount7 = xaCount7;
    }

    public int getXaSales15() {
        return xaSales15;
    }

    public void setXaSales15(int xaSales15) {
        this.xaSales15 = xaSales15;
    }

    public double getXaTurnoverDays15() {
        return xaTurnoverDays15;
    }

    public void setXaTurnoverDays15(double xaTurnoverDays15) {
        this.xaTurnoverDays15 = xaTurnoverDays15;
    }

    public int getXaCount15() {
        return xaCount15;
    }

    public void setXaCount15(int xaCount15) {
        this.xaCount15 = xaCount15;
    }

    public int getXaSales30() {
        return xaSales30;
    }

    public void setXaSales30(int xaSales30) {
        this.xaSales30 = xaSales30;
    }

    public String getXaGrowthRate7to15() {
        return xaGrowthRate7to15;
    }

    public void setXaGrowthRate7to15(String xaGrowthRate7to15) {
        this.xaGrowthRate7to15 = xaGrowthRate7to15;
    }

    public String getXaGrowthRate15to30() {
        return xaGrowthRate15to30;
    }

    public void setXaGrowthRate15to30(String xaGrowthRate15to30) {
        this.xaGrowthRate15to30 = xaGrowthRate15to30;
    }

    public int getGaStock() {
        return gaStock;
    }

    public void setGaStock(int gaStock) {
        this.gaStock = gaStock;
    }

    public int getGaSales7() {
        return gaSales7;
    }

    public void setGaSales7(int gaSales7) {
        this.gaSales7 = gaSales7;
    }

    public double getGaTurnoverDays7() {
        return gaTurnoverDays7;
    }

    public void setGaTurnoverDays7(double gaTurnoverDays7) {
        this.gaTurnoverDays7 = gaTurnoverDays7;
    }

    public int getGaCount7() {
        return gaCount7;
    }

    public void setGaCount7(int gaCount7) {
        this.gaCount7 = gaCount7;
    }

    public int getGaSales15() {
        return gaSales15;
    }

    public void setGaSales15(int gaSales15) {
        this.gaSales15 = gaSales15;
    }

    public double getGaTurnoverDays15() {
        return gaTurnoverDays15;
    }

    public void setGaTurnoverDays15(double gaTurnoverDays15) {
        this.gaTurnoverDays15 = gaTurnoverDays15;
    }

    public int getGaCount15() {
        return gaCount15;
    }

    public void setGaCount15(int gaCount15) {
        this.gaCount15 = gaCount15;
    }

    public int getGaSales30() {
        return gaSales30;
    }

    public void setGaSales30(int gaSales30) {
        this.gaSales30 = gaSales30;
    }

    public String getGaGrowthRate7to15() {
        return gaGrowthRate7to15;
    }

    public void setGaGrowthRate7to15(String gaGrowthRate7to15) {
        this.gaGrowthRate7to15 = gaGrowthRate7to15;
    }

    public String getGaGrowthRate15to30() {
        return gaGrowthRate15to30;
    }

    public void setGaGrowthRate15to30(String gaGrowthRate15to30) {
        this.gaGrowthRate15to30 = gaGrowthRate15to30;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * deep clone this object
     * 深度复制对象，把属性全部复到一个新对象中
     * @return
     * @throws CloneNotSupportedException
     */
    public MaxTable copy() {
        try {
            ByteArrayOutputStream baos =new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(baos);
            oos.writeObject(this);
            ByteArrayInputStream bais =new ByteArrayInputStream(baos.toByteArray());
            ObjectInputStream oi=new ObjectInputStream(bais);
            return (MaxTable) oi.readObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;

    }

    @Override
    public String toString() {
        return "MaxTable{" +
                "id=" + id +
                ", productNo='" + productNo + '\'' +
                ", brand='" + brand + '\'' +
                ", status='" + status + '\'' +
                ", price=" + price +
                ", totalStock=" + totalStock +
                ", totalSales=" + totalSales +
                ", totalStockCount=" + totalStockCount +
                ", totalSalesCount=" + totalSalesCount +
                ", bjStock=" + bjStock +
                ", bjSales7=" + bjSales7 +
                ", bjTurnoverDays7=" + bjTurnoverDays7 +
                ", bjCount7=" + bjCount7 +
                ", bjSales15=" + bjSales15 +
                ", bjTurnoverDays15=" + bjTurnoverDays15 +
                ", bjCount15=" + bjCount15 +
                ", bjSales30=" + bjSales30 +
                ", bjGrowthRate7to15='" + bjGrowthRate7to15 + '\'' +
                ", bjGrowthRate15to30='" + bjGrowthRate15to30 + '\'' +
                ", shStock=" + shStock +
                ", shSales7=" + shSales7 +
                ", shTurnoverDays7=" + shTurnoverDays7 +
                ", shCount7=" + shCount7 +
                ", shSales15=" + shSales15 +
                ", shTurnoverDays15=" + shTurnoverDays15 +
                ", shCount15=" + shCount15 +
                ", shSales30=" + shSales30 +
                ", shGrowthRate7to15='" + shGrowthRate7to15 + '\'' +
                ", shGrowthRate15to30='" + shGrowthRate15to30 + '\'' +
                ", gzStock=" + gzStock +
                ", gzSales7=" + gzSales7 +
                ", gzTurnoverDays7=" + gzTurnoverDays7 +
                ", gzCount7=" + gzCount7 +
                ", gzSales15=" + gzSales15 +
                ", gzTurnoverDays15=" + gzTurnoverDays15 +
                ", gzCount15=" + gzCount15 +
                ", gzSales30=" + gzSales30 +
                ", gzGrowthRate7to15='" + gzGrowthRate7to15 + '\'' +
                ", gzGrowthRate15to30='" + gzGrowthRate15to30 + '\'' +
                ", cdStock=" + cdStock +
                ", cdSales7=" + cdSales7 +
                ", cdTurnoverDays7=" + cdTurnoverDays7 +
                ", cdCount7=" + cdCount7 +
                ", cdSales15=" + cdSales15 +
                ", cdTurnoverDays15=" + cdTurnoverDays15 +
                ", cdCount15=" + cdCount15 +
                ", cdSales30=" + cdSales30 +
                ", cdGrowthRate7to15='" + cdGrowthRate7to15 + '\'' +
                ", cdGrowthRate15to30='" + cdGrowthRate15to30 + '\'' +
                ", whStock=" + whStock +
                ", whSales7=" + whSales7 +
                ", whTurnoverDays7=" + whTurnoverDays7 +
                ", whCount7=" + whCount7 +
                ", whSales15=" + whSales15 +
                ", whTurnoverDays15=" + whTurnoverDays15 +
                ", whCount15=" + whCount15 +
                ", whSales30=" + whSales30 +
                ", whGrowthRate7to15='" + whGrowthRate7to15 + '\'' +
                ", whGrowthRate15to30='" + whGrowthRate15to30 + '\'' +
                ", syStock=" + syStock +
                ", sySales7=" + sySales7 +
                ", syTurnoverDays7=" + syTurnoverDays7 +
                ", syCount7=" + syCount7 +
                ", sySales15=" + sySales15 +
                ", syTurnoverDays15=" + syTurnoverDays15 +
                ", syCount15=" + syCount15 +
                ", sySales30=" + sySales30 +
                ", syGrowthRate7to15='" + syGrowthRate7to15 + '\'' +
                ", syGrowthRate15to30='" + syGrowthRate15to30 + '\'' +
                ", xaStock=" + xaStock +
                ", xaSales7=" + xaSales7 +
                ", xaTurnoverDays7=" + xaTurnoverDays7 +
                ", xaCount7=" + xaCount7 +
                ", xaSales15=" + xaSales15 +
                ", xaTurnoverDays15=" + xaTurnoverDays15 +
                ", xaCount15=" + xaCount15 +
                ", xaSales30=" + xaSales30 +
                ", xaGrowthRate7to15='" + xaGrowthRate7to15 + '\'' +
                ", xaGrowthRate15to30='" + xaGrowthRate15to30 + '\'' +
                ", gaStock=" + gaStock +
                ", gaSales7=" + gaSales7 +
                ", gaTurnoverDays7=" + gaTurnoverDays7 +
                ", gaCount7=" + gaCount7 +
                ", gaSales15=" + gaSales15 +
                ", gaTurnoverDays15=" + gaTurnoverDays15 +
                ", gaCount15=" + gaCount15 +
                ", gaSales30=" + gaSales30 +
                ", gaGrowthRate7to15='" + gaGrowthRate7to15 + '\'' +
                ", gaGrowthRate15to30='" + gaGrowthRate15to30 + '\'' +
                '}';
    }
}
