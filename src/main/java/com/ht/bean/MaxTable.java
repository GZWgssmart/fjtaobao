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

    private int shStock; // 上海库存

    private int gzStock; // 广州库存

    private int cdStock; // 成都库存

    private int whStock; // 武汉库存

    private int syStock; // 沈阳库存

    private int xaStock; // 西安库存

    private int gaStock; // 固安库存

    private int bjSales1;
    private int shSales1;
    private int gzSales1;
    private int cdSales1;
    private int whSales1;
    private int sySales1;
    private int xaSales1;
    private int gaSales1;
    private int bjSales2;
    private int shSales2;
    private int gzSales2;
    private int cdSales2;
    private int whSales2;
    private int sySales2;
    private int xaSales2;
    private int gaSales2;
    private int bjSales3;
    private int shSales3;
    private int gzSales3;
    private int cdSales3;
    private int whSales3;
    private int sySales3;
    private int xaSales3;
    private int gaSales3;
    private int bjSales4;
    private int shSales4;
    private int gzSales4;
    private int cdSales4;
    private int whSales4;
    private int sySales4;
    private int xaSales4;
    private int gaSales4;
    private int bjSales5;
    private int shSales5;
    private int gzSales5;
    private int cdSales5;
    private int whSales5;
    private int sySales5;
    private int xaSales5;
    private int gaSales5;
    private int bjSales6;
    private int shSales6;
    private int gzSales6;
    private int cdSales6;
    private int whSales6;
    private int sySales6;
    private int xaSales6;
    private int gaSales6;
    private int bjSales7;
    private int shSales7;
    private int gzSales7;
    private int cdSales7;
    private int whSales7;
    private int sySales7;
    private int xaSales7;
    private int gaSales7;
    private int bjSales8;
    private int shSales8;
    private int gzSales8;
    private int cdSales8;
    private int whSales8;
    private int sySales8;
    private int xaSales8;
    private int gaSales8;
    private int bjSales9;
    private int shSales9;
    private int gzSales9;
    private int cdSales9;
    private int whSales9;
    private int sySales9;
    private int xaSales9;
    private int gaSales9;
    private int bjSales10;
    private int shSales10;
    private int gzSales10;
    private int cdSales10;
    private int whSales10;
    private int sySales10;
    private int xaSales10;
    private int gaSales10;
    private int bjSales11;
    private int shSales11;
    private int gzSales11;
    private int cdSales11;
    private int whSales11;
    private int sySales11;
    private int xaSales11;
    private int gaSales11;
    private int bjSales12;
    private int shSales12;
    private int gzSales12;
    private int cdSales12;
    private int whSales12;
    private int sySales12;
    private int xaSales12;
    private int gaSales12;
    private int bjSales13;
    private int shSales13;
    private int gzSales13;
    private int cdSales13;
    private int whSales13;
    private int sySales13;
    private int xaSales13;
    private int gaSales13;
    private int bjSales14;
    private int shSales14;
    private int gzSales14;
    private int cdSales14;
    private int whSales14;
    private int sySales14;
    private int xaSales14;
    private int gaSales14;
    private int bjSales15;
    private int shSales15;
    private int gzSales15;
    private int cdSales15;
    private int whSales15;
    private int sySales15;
    private int xaSales15;
    private int gaSales15;
    private int bjSales16;
    private int shSales16;
    private int gzSales16;
    private int cdSales16;
    private int whSales16;
    private int sySales16;
    private int xaSales16;
    private int gaSales16;
    private int bjSales17;
    private int shSales17;
    private int gzSales17;
    private int cdSales17;
    private int whSales17;
    private int sySales17;
    private int xaSales17;
    private int gaSales17;
    private int bjSales18;
    private int shSales18;
    private int gzSales18;
    private int cdSales18;
    private int whSales18;
    private int sySales18;
    private int xaSales18;
    private int gaSales18;
    private int bjSales19;
    private int shSales19;
    private int gzSales19;
    private int cdSales19;
    private int whSales19;
    private int sySales19;
    private int xaSales19;
    private int gaSales19;
    private int bjSales20;
    private int shSales20;
    private int gzSales20;
    private int cdSales20;
    private int whSales20;
    private int sySales20;
    private int xaSales20;
    private int gaSales20;
    private int bjSales21;
    private int shSales21;
    private int gzSales21;
    private int cdSales21;
    private int whSales21;
    private int sySales21;
    private int xaSales21;
    private int gaSales21;
    private int bjSales22;
    private int shSales22;
    private int gzSales22;
    private int cdSales22;
    private int whSales22;
    private int sySales22;
    private int xaSales22;
    private int gaSales22;
    private int bjSales23;
    private int shSales23;
    private int gzSales23;
    private int cdSales23;
    private int whSales23;
    private int sySales23;
    private int xaSales23;
    private int gaSales23;
    private int bjSales24;
    private int shSales24;
    private int gzSales24;
    private int cdSales24;
    private int whSales24;
    private int sySales24;
    private int xaSales24;
    private int gaSales24;
    private int bjSales25;
    private int shSales25;
    private int gzSales25;
    private int cdSales25;
    private int whSales25;
    private int sySales25;
    private int xaSales25;
    private int gaSales25;
    private int bjSales26;
    private int shSales26;
    private int gzSales26;
    private int cdSales26;
    private int whSales26;
    private int sySales26;
    private int xaSales26;
    private int gaSales26;
    private int bjSales27;
    private int shSales27;
    private int gzSales27;
    private int cdSales27;
    private int whSales27;
    private int sySales27;
    private int xaSales27;
    private int gaSales27;
    private int bjSales28;
    private int shSales28;
    private int gzSales28;
    private int cdSales28;
    private int whSales28;
    private int sySales28;
    private int xaSales28;
    private int gaSales28;
    private int bjSales29;
    private int shSales29;
    private int gzSales29;
    private int cdSales29;
    private int whSales29;
    private int sySales29;
    private int xaSales29;
    private int gaSales29;
    private int bjSales30;
    private int shSales30;
    private int gzSales30;
    private int cdSales30;
    private int whSales30;
    private int sySales30;
    private int xaSales30;
    private int gaSales30;
    private int bjSales31;
    private int shSales31;
    private int gzSales31;
    private int cdSales31;
    private int whSales31;
    private int sySales31;
    private int xaSales31;
    private int gaSales31;


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

    public int getShStock() {
        return shStock;
    }

    public void setShStock(int shStock) {
        this.shStock = shStock;
    }

    public int getGzStock() {
        return gzStock;
    }

    public void setGzStock(int gzStock) {
        this.gzStock = gzStock;
    }

    public int getCdStock() {
        return cdStock;
    }

    public void setCdStock(int cdStock) {
        this.cdStock = cdStock;
    }

    public int getWhStock() {
        return whStock;
    }

    public void setWhStock(int whStock) {
        this.whStock = whStock;
    }

    public int getSyStock() {
        return syStock;
    }

    public void setSyStock(int syStock) {
        this.syStock = syStock;
    }

    public int getXaStock() {
        return xaStock;
    }

    public void setXaStock(int xaStock) {
        this.xaStock = xaStock;
    }

    public int getGaStock() {
        return gaStock;
    }

    public void setGaStock(int gaStock) {
        this.gaStock = gaStock;
    }

    public int getBjSales1() {
        return bjSales1;
    }

    public void setBjSales1(int bjSales1) {
        this.bjSales1 = bjSales1;
    }

    public int getShSales1() {
        return shSales1;
    }

    public void setShSales1(int shSales1) {
        this.shSales1 = shSales1;
    }

    public int getGzSales1() {
        return gzSales1;
    }

    public void setGzSales1(int gzSales1) {
        this.gzSales1 = gzSales1;
    }

    public int getCdSales1() {
        return cdSales1;
    }

    public void setCdSales1(int cdSales1) {
        this.cdSales1 = cdSales1;
    }

    public int getWhSales1() {
        return whSales1;
    }

    public void setWhSales1(int whSales1) {
        this.whSales1 = whSales1;
    }

    public int getSySales1() {
        return sySales1;
    }

    public void setSySales1(int sySales1) {
        this.sySales1 = sySales1;
    }

    public int getXaSales1() {
        return xaSales1;
    }

    public void setXaSales1(int xaSales1) {
        this.xaSales1 = xaSales1;
    }

    public int getGaSales1() {
        return gaSales1;
    }

    public void setGaSales1(int gaSales1) {
        this.gaSales1 = gaSales1;
    }

    public int getBjSales2() {
        return bjSales2;
    }

    public void setBjSales2(int bjSales2) {
        this.bjSales2 = bjSales2;
    }

    public int getShSales2() {
        return shSales2;
    }

    public void setShSales2(int shSales2) {
        this.shSales2 = shSales2;
    }

    public int getGzSales2() {
        return gzSales2;
    }

    public void setGzSales2(int gzSales2) {
        this.gzSales2 = gzSales2;
    }

    public int getCdSales2() {
        return cdSales2;
    }

    public void setCdSales2(int cdSales2) {
        this.cdSales2 = cdSales2;
    }

    public int getWhSales2() {
        return whSales2;
    }

    public void setWhSales2(int whSales2) {
        this.whSales2 = whSales2;
    }

    public int getSySales2() {
        return sySales2;
    }

    public void setSySales2(int sySales2) {
        this.sySales2 = sySales2;
    }

    public int getXaSales2() {
        return xaSales2;
    }

    public void setXaSales2(int xaSales2) {
        this.xaSales2 = xaSales2;
    }

    public int getGaSales2() {
        return gaSales2;
    }

    public void setGaSales2(int gaSales2) {
        this.gaSales2 = gaSales2;
    }

    public int getBjSales3() {
        return bjSales3;
    }

    public void setBjSales3(int bjSales3) {
        this.bjSales3 = bjSales3;
    }

    public int getShSales3() {
        return shSales3;
    }

    public void setShSales3(int shSales3) {
        this.shSales3 = shSales3;
    }

    public int getGzSales3() {
        return gzSales3;
    }

    public void setGzSales3(int gzSales3) {
        this.gzSales3 = gzSales3;
    }

    public int getCdSales3() {
        return cdSales3;
    }

    public void setCdSales3(int cdSales3) {
        this.cdSales3 = cdSales3;
    }

    public int getWhSales3() {
        return whSales3;
    }

    public void setWhSales3(int whSales3) {
        this.whSales3 = whSales3;
    }

    public int getSySales3() {
        return sySales3;
    }

    public void setSySales3(int sySales3) {
        this.sySales3 = sySales3;
    }

    public int getXaSales3() {
        return xaSales3;
    }

    public void setXaSales3(int xaSales3) {
        this.xaSales3 = xaSales3;
    }

    public int getGaSales3() {
        return gaSales3;
    }

    public void setGaSales3(int gaSales3) {
        this.gaSales3 = gaSales3;
    }

    public int getBjSales4() {
        return bjSales4;
    }

    public void setBjSales4(int bjSales4) {
        this.bjSales4 = bjSales4;
    }

    public int getShSales4() {
        return shSales4;
    }

    public void setShSales4(int shSales4) {
        this.shSales4 = shSales4;
    }

    public int getGzSales4() {
        return gzSales4;
    }

    public void setGzSales4(int gzSales4) {
        this.gzSales4 = gzSales4;
    }

    public int getCdSales4() {
        return cdSales4;
    }

    public void setCdSales4(int cdSales4) {
        this.cdSales4 = cdSales4;
    }

    public int getWhSales4() {
        return whSales4;
    }

    public void setWhSales4(int whSales4) {
        this.whSales4 = whSales4;
    }

    public int getSySales4() {
        return sySales4;
    }

    public void setSySales4(int sySales4) {
        this.sySales4 = sySales4;
    }

    public int getXaSales4() {
        return xaSales4;
    }

    public void setXaSales4(int xaSales4) {
        this.xaSales4 = xaSales4;
    }

    public int getGaSales4() {
        return gaSales4;
    }

    public void setGaSales4(int gaSales4) {
        this.gaSales4 = gaSales4;
    }

    public int getBjSales5() {
        return bjSales5;
    }

    public void setBjSales5(int bjSales5) {
        this.bjSales5 = bjSales5;
    }

    public int getShSales5() {
        return shSales5;
    }

    public void setShSales5(int shSales5) {
        this.shSales5 = shSales5;
    }

    public int getGzSales5() {
        return gzSales5;
    }

    public void setGzSales5(int gzSales5) {
        this.gzSales5 = gzSales5;
    }

    public int getCdSales5() {
        return cdSales5;
    }

    public void setCdSales5(int cdSales5) {
        this.cdSales5 = cdSales5;
    }

    public int getWhSales5() {
        return whSales5;
    }

    public void setWhSales5(int whSales5) {
        this.whSales5 = whSales5;
    }

    public int getSySales5() {
        return sySales5;
    }

    public void setSySales5(int sySales5) {
        this.sySales5 = sySales5;
    }

    public int getXaSales5() {
        return xaSales5;
    }

    public void setXaSales5(int xaSales5) {
        this.xaSales5 = xaSales5;
    }

    public int getGaSales5() {
        return gaSales5;
    }

    public void setGaSales5(int gaSales5) {
        this.gaSales5 = gaSales5;
    }

    public int getBjSales6() {
        return bjSales6;
    }

    public void setBjSales6(int bjSales6) {
        this.bjSales6 = bjSales6;
    }

    public int getShSales6() {
        return shSales6;
    }

    public void setShSales6(int shSales6) {
        this.shSales6 = shSales6;
    }

    public int getGzSales6() {
        return gzSales6;
    }

    public void setGzSales6(int gzSales6) {
        this.gzSales6 = gzSales6;
    }

    public int getCdSales6() {
        return cdSales6;
    }

    public void setCdSales6(int cdSales6) {
        this.cdSales6 = cdSales6;
    }

    public int getWhSales6() {
        return whSales6;
    }

    public void setWhSales6(int whSales6) {
        this.whSales6 = whSales6;
    }

    public int getSySales6() {
        return sySales6;
    }

    public void setSySales6(int sySales6) {
        this.sySales6 = sySales6;
    }

    public int getXaSales6() {
        return xaSales6;
    }

    public void setXaSales6(int xaSales6) {
        this.xaSales6 = xaSales6;
    }

    public int getGaSales6() {
        return gaSales6;
    }

    public void setGaSales6(int gaSales6) {
        this.gaSales6 = gaSales6;
    }

    public int getBjSales7() {
        return bjSales7;
    }

    public void setBjSales7(int bjSales7) {
        this.bjSales7 = bjSales7;
    }

    public int getShSales7() {
        return shSales7;
    }

    public void setShSales7(int shSales7) {
        this.shSales7 = shSales7;
    }

    public int getGzSales7() {
        return gzSales7;
    }

    public void setGzSales7(int gzSales7) {
        this.gzSales7 = gzSales7;
    }

    public int getCdSales7() {
        return cdSales7;
    }

    public void setCdSales7(int cdSales7) {
        this.cdSales7 = cdSales7;
    }

    public int getWhSales7() {
        return whSales7;
    }

    public void setWhSales7(int whSales7) {
        this.whSales7 = whSales7;
    }

    public int getSySales7() {
        return sySales7;
    }

    public void setSySales7(int sySales7) {
        this.sySales7 = sySales7;
    }

    public int getXaSales7() {
        return xaSales7;
    }

    public void setXaSales7(int xaSales7) {
        this.xaSales7 = xaSales7;
    }

    public int getGaSales7() {
        return gaSales7;
    }

    public void setGaSales7(int gaSales7) {
        this.gaSales7 = gaSales7;
    }

    public int getBjSales8() {
        return bjSales8;
    }

    public void setBjSales8(int bjSales8) {
        this.bjSales8 = bjSales8;
    }

    public int getShSales8() {
        return shSales8;
    }

    public void setShSales8(int shSales8) {
        this.shSales8 = shSales8;
    }

    public int getGzSales8() {
        return gzSales8;
    }

    public void setGzSales8(int gzSales8) {
        this.gzSales8 = gzSales8;
    }

    public int getCdSales8() {
        return cdSales8;
    }

    public void setCdSales8(int cdSales8) {
        this.cdSales8 = cdSales8;
    }

    public int getWhSales8() {
        return whSales8;
    }

    public void setWhSales8(int whSales8) {
        this.whSales8 = whSales8;
    }

    public int getSySales8() {
        return sySales8;
    }

    public void setSySales8(int sySales8) {
        this.sySales8 = sySales8;
    }

    public int getXaSales8() {
        return xaSales8;
    }

    public void setXaSales8(int xaSales8) {
        this.xaSales8 = xaSales8;
    }

    public int getGaSales8() {
        return gaSales8;
    }

    public void setGaSales8(int gaSales8) {
        this.gaSales8 = gaSales8;
    }

    public int getBjSales9() {
        return bjSales9;
    }

    public void setBjSales9(int bjSales9) {
        this.bjSales9 = bjSales9;
    }

    public int getShSales9() {
        return shSales9;
    }

    public void setShSales9(int shSales9) {
        this.shSales9 = shSales9;
    }

    public int getGzSales9() {
        return gzSales9;
    }

    public void setGzSales9(int gzSales9) {
        this.gzSales9 = gzSales9;
    }

    public int getCdSales9() {
        return cdSales9;
    }

    public void setCdSales9(int cdSales9) {
        this.cdSales9 = cdSales9;
    }

    public int getWhSales9() {
        return whSales9;
    }

    public void setWhSales9(int whSales9) {
        this.whSales9 = whSales9;
    }

    public int getSySales9() {
        return sySales9;
    }

    public void setSySales9(int sySales9) {
        this.sySales9 = sySales9;
    }

    public int getXaSales9() {
        return xaSales9;
    }

    public void setXaSales9(int xaSales9) {
        this.xaSales9 = xaSales9;
    }

    public int getGaSales9() {
        return gaSales9;
    }

    public void setGaSales9(int gaSales9) {
        this.gaSales9 = gaSales9;
    }

    public int getBjSales10() {
        return bjSales10;
    }

    public void setBjSales10(int bjSales10) {
        this.bjSales10 = bjSales10;
    }

    public int getShSales10() {
        return shSales10;
    }

    public void setShSales10(int shSales10) {
        this.shSales10 = shSales10;
    }

    public int getGzSales10() {
        return gzSales10;
    }

    public void setGzSales10(int gzSales10) {
        this.gzSales10 = gzSales10;
    }

    public int getCdSales10() {
        return cdSales10;
    }

    public void setCdSales10(int cdSales10) {
        this.cdSales10 = cdSales10;
    }

    public int getWhSales10() {
        return whSales10;
    }

    public void setWhSales10(int whSales10) {
        this.whSales10 = whSales10;
    }

    public int getSySales10() {
        return sySales10;
    }

    public void setSySales10(int sySales10) {
        this.sySales10 = sySales10;
    }

    public int getXaSales10() {
        return xaSales10;
    }

    public void setXaSales10(int xaSales10) {
        this.xaSales10 = xaSales10;
    }

    public int getGaSales10() {
        return gaSales10;
    }

    public void setGaSales10(int gaSales10) {
        this.gaSales10 = gaSales10;
    }

    public int getBjSales11() {
        return bjSales11;
    }

    public void setBjSales11(int bjSales11) {
        this.bjSales11 = bjSales11;
    }

    public int getShSales11() {
        return shSales11;
    }

    public void setShSales11(int shSales11) {
        this.shSales11 = shSales11;
    }

    public int getGzSales11() {
        return gzSales11;
    }

    public void setGzSales11(int gzSales11) {
        this.gzSales11 = gzSales11;
    }

    public int getCdSales11() {
        return cdSales11;
    }

    public void setCdSales11(int cdSales11) {
        this.cdSales11 = cdSales11;
    }

    public int getWhSales11() {
        return whSales11;
    }

    public void setWhSales11(int whSales11) {
        this.whSales11 = whSales11;
    }

    public int getSySales11() {
        return sySales11;
    }

    public void setSySales11(int sySales11) {
        this.sySales11 = sySales11;
    }

    public int getXaSales11() {
        return xaSales11;
    }

    public void setXaSales11(int xaSales11) {
        this.xaSales11 = xaSales11;
    }

    public int getGaSales11() {
        return gaSales11;
    }

    public void setGaSales11(int gaSales11) {
        this.gaSales11 = gaSales11;
    }

    public int getBjSales12() {
        return bjSales12;
    }

    public void setBjSales12(int bjSales12) {
        this.bjSales12 = bjSales12;
    }

    public int getShSales12() {
        return shSales12;
    }

    public void setShSales12(int shSales12) {
        this.shSales12 = shSales12;
    }

    public int getGzSales12() {
        return gzSales12;
    }

    public void setGzSales12(int gzSales12) {
        this.gzSales12 = gzSales12;
    }

    public int getCdSales12() {
        return cdSales12;
    }

    public void setCdSales12(int cdSales12) {
        this.cdSales12 = cdSales12;
    }

    public int getWhSales12() {
        return whSales12;
    }

    public void setWhSales12(int whSales12) {
        this.whSales12 = whSales12;
    }

    public int getSySales12() {
        return sySales12;
    }

    public void setSySales12(int sySales12) {
        this.sySales12 = sySales12;
    }

    public int getXaSales12() {
        return xaSales12;
    }

    public void setXaSales12(int xaSales12) {
        this.xaSales12 = xaSales12;
    }

    public int getGaSales12() {
        return gaSales12;
    }

    public void setGaSales12(int gaSales12) {
        this.gaSales12 = gaSales12;
    }

    public int getBjSales13() {
        return bjSales13;
    }

    public void setBjSales13(int bjSales13) {
        this.bjSales13 = bjSales13;
    }

    public int getShSales13() {
        return shSales13;
    }

    public void setShSales13(int shSales13) {
        this.shSales13 = shSales13;
    }

    public int getGzSales13() {
        return gzSales13;
    }

    public void setGzSales13(int gzSales13) {
        this.gzSales13 = gzSales13;
    }

    public int getCdSales13() {
        return cdSales13;
    }

    public void setCdSales13(int cdSales13) {
        this.cdSales13 = cdSales13;
    }

    public int getWhSales13() {
        return whSales13;
    }

    public void setWhSales13(int whSales13) {
        this.whSales13 = whSales13;
    }

    public int getSySales13() {
        return sySales13;
    }

    public void setSySales13(int sySales13) {
        this.sySales13 = sySales13;
    }

    public int getXaSales13() {
        return xaSales13;
    }

    public void setXaSales13(int xaSales13) {
        this.xaSales13 = xaSales13;
    }

    public int getGaSales13() {
        return gaSales13;
    }

    public void setGaSales13(int gaSales13) {
        this.gaSales13 = gaSales13;
    }

    public int getBjSales14() {
        return bjSales14;
    }

    public void setBjSales14(int bjSales14) {
        this.bjSales14 = bjSales14;
    }

    public int getShSales14() {
        return shSales14;
    }

    public void setShSales14(int shSales14) {
        this.shSales14 = shSales14;
    }

    public int getGzSales14() {
        return gzSales14;
    }

    public void setGzSales14(int gzSales14) {
        this.gzSales14 = gzSales14;
    }

    public int getCdSales14() {
        return cdSales14;
    }

    public void setCdSales14(int cdSales14) {
        this.cdSales14 = cdSales14;
    }

    public int getWhSales14() {
        return whSales14;
    }

    public void setWhSales14(int whSales14) {
        this.whSales14 = whSales14;
    }

    public int getSySales14() {
        return sySales14;
    }

    public void setSySales14(int sySales14) {
        this.sySales14 = sySales14;
    }

    public int getXaSales14() {
        return xaSales14;
    }

    public void setXaSales14(int xaSales14) {
        this.xaSales14 = xaSales14;
    }

    public int getGaSales14() {
        return gaSales14;
    }

    public void setGaSales14(int gaSales14) {
        this.gaSales14 = gaSales14;
    }

    public int getBjSales15() {
        return bjSales15;
    }

    public void setBjSales15(int bjSales15) {
        this.bjSales15 = bjSales15;
    }

    public int getShSales15() {
        return shSales15;
    }

    public void setShSales15(int shSales15) {
        this.shSales15 = shSales15;
    }

    public int getGzSales15() {
        return gzSales15;
    }

    public void setGzSales15(int gzSales15) {
        this.gzSales15 = gzSales15;
    }

    public int getCdSales15() {
        return cdSales15;
    }

    public void setCdSales15(int cdSales15) {
        this.cdSales15 = cdSales15;
    }

    public int getWhSales15() {
        return whSales15;
    }

    public void setWhSales15(int whSales15) {
        this.whSales15 = whSales15;
    }

    public int getSySales15() {
        return sySales15;
    }

    public void setSySales15(int sySales15) {
        this.sySales15 = sySales15;
    }

    public int getXaSales15() {
        return xaSales15;
    }

    public void setXaSales15(int xaSales15) {
        this.xaSales15 = xaSales15;
    }

    public int getGaSales15() {
        return gaSales15;
    }

    public void setGaSales15(int gaSales15) {
        this.gaSales15 = gaSales15;
    }

    public int getBjSales16() {
        return bjSales16;
    }

    public void setBjSales16(int bjSales16) {
        this.bjSales16 = bjSales16;
    }

    public int getShSales16() {
        return shSales16;
    }

    public void setShSales16(int shSales16) {
        this.shSales16 = shSales16;
    }

    public int getGzSales16() {
        return gzSales16;
    }

    public void setGzSales16(int gzSales16) {
        this.gzSales16 = gzSales16;
    }

    public int getCdSales16() {
        return cdSales16;
    }

    public void setCdSales16(int cdSales16) {
        this.cdSales16 = cdSales16;
    }

    public int getWhSales16() {
        return whSales16;
    }

    public void setWhSales16(int whSales16) {
        this.whSales16 = whSales16;
    }

    public int getSySales16() {
        return sySales16;
    }

    public void setSySales16(int sySales16) {
        this.sySales16 = sySales16;
    }

    public int getXaSales16() {
        return xaSales16;
    }

    public void setXaSales16(int xaSales16) {
        this.xaSales16 = xaSales16;
    }

    public int getGaSales16() {
        return gaSales16;
    }

    public void setGaSales16(int gaSales16) {
        this.gaSales16 = gaSales16;
    }

    public int getBjSales17() {
        return bjSales17;
    }

    public void setBjSales17(int bjSales17) {
        this.bjSales17 = bjSales17;
    }

    public int getShSales17() {
        return shSales17;
    }

    public void setShSales17(int shSales17) {
        this.shSales17 = shSales17;
    }

    public int getGzSales17() {
        return gzSales17;
    }

    public void setGzSales17(int gzSales17) {
        this.gzSales17 = gzSales17;
    }

    public int getCdSales17() {
        return cdSales17;
    }

    public void setCdSales17(int cdSales17) {
        this.cdSales17 = cdSales17;
    }

    public int getWhSales17() {
        return whSales17;
    }

    public void setWhSales17(int whSales17) {
        this.whSales17 = whSales17;
    }

    public int getSySales17() {
        return sySales17;
    }

    public void setSySales17(int sySales17) {
        this.sySales17 = sySales17;
    }

    public int getXaSales17() {
        return xaSales17;
    }

    public void setXaSales17(int xaSales17) {
        this.xaSales17 = xaSales17;
    }

    public int getGaSales17() {
        return gaSales17;
    }

    public void setGaSales17(int gaSales17) {
        this.gaSales17 = gaSales17;
    }

    public int getBjSales18() {
        return bjSales18;
    }

    public void setBjSales18(int bjSales18) {
        this.bjSales18 = bjSales18;
    }

    public int getShSales18() {
        return shSales18;
    }

    public void setShSales18(int shSales18) {
        this.shSales18 = shSales18;
    }

    public int getGzSales18() {
        return gzSales18;
    }

    public void setGzSales18(int gzSales18) {
        this.gzSales18 = gzSales18;
    }

    public int getCdSales18() {
        return cdSales18;
    }

    public void setCdSales18(int cdSales18) {
        this.cdSales18 = cdSales18;
    }

    public int getWhSales18() {
        return whSales18;
    }

    public void setWhSales18(int whSales18) {
        this.whSales18 = whSales18;
    }

    public int getSySales18() {
        return sySales18;
    }

    public void setSySales18(int sySales18) {
        this.sySales18 = sySales18;
    }

    public int getXaSales18() {
        return xaSales18;
    }

    public void setXaSales18(int xaSales18) {
        this.xaSales18 = xaSales18;
    }

    public int getGaSales18() {
        return gaSales18;
    }

    public void setGaSales18(int gaSales18) {
        this.gaSales18 = gaSales18;
    }

    public int getBjSales19() {
        return bjSales19;
    }

    public void setBjSales19(int bjSales19) {
        this.bjSales19 = bjSales19;
    }

    public int getShSales19() {
        return shSales19;
    }

    public void setShSales19(int shSales19) {
        this.shSales19 = shSales19;
    }

    public int getGzSales19() {
        return gzSales19;
    }

    public void setGzSales19(int gzSales19) {
        this.gzSales19 = gzSales19;
    }

    public int getCdSales19() {
        return cdSales19;
    }

    public void setCdSales19(int cdSales19) {
        this.cdSales19 = cdSales19;
    }

    public int getWhSales19() {
        return whSales19;
    }

    public void setWhSales19(int whSales19) {
        this.whSales19 = whSales19;
    }

    public int getSySales19() {
        return sySales19;
    }

    public void setSySales19(int sySales19) {
        this.sySales19 = sySales19;
    }

    public int getXaSales19() {
        return xaSales19;
    }

    public void setXaSales19(int xaSales19) {
        this.xaSales19 = xaSales19;
    }

    public int getGaSales19() {
        return gaSales19;
    }

    public void setGaSales19(int gaSales19) {
        this.gaSales19 = gaSales19;
    }

    public int getBjSales20() {
        return bjSales20;
    }

    public void setBjSales20(int bjSales20) {
        this.bjSales20 = bjSales20;
    }

    public int getShSales20() {
        return shSales20;
    }

    public void setShSales20(int shSales20) {
        this.shSales20 = shSales20;
    }

    public int getGzSales20() {
        return gzSales20;
    }

    public void setGzSales20(int gzSales20) {
        this.gzSales20 = gzSales20;
    }

    public int getCdSales20() {
        return cdSales20;
    }

    public void setCdSales20(int cdSales20) {
        this.cdSales20 = cdSales20;
    }

    public int getWhSales20() {
        return whSales20;
    }

    public void setWhSales20(int whSales20) {
        this.whSales20 = whSales20;
    }

    public int getSySales20() {
        return sySales20;
    }

    public void setSySales20(int sySales20) {
        this.sySales20 = sySales20;
    }

    public int getXaSales20() {
        return xaSales20;
    }

    public void setXaSales20(int xaSales20) {
        this.xaSales20 = xaSales20;
    }

    public int getGaSales20() {
        return gaSales20;
    }

    public void setGaSales20(int gaSales20) {
        this.gaSales20 = gaSales20;
    }

    public int getBjSales21() {
        return bjSales21;
    }

    public void setBjSales21(int bjSales21) {
        this.bjSales21 = bjSales21;
    }

    public int getShSales21() {
        return shSales21;
    }

    public void setShSales21(int shSales21) {
        this.shSales21 = shSales21;
    }

    public int getGzSales21() {
        return gzSales21;
    }

    public void setGzSales21(int gzSales21) {
        this.gzSales21 = gzSales21;
    }

    public int getCdSales21() {
        return cdSales21;
    }

    public void setCdSales21(int cdSales21) {
        this.cdSales21 = cdSales21;
    }

    public int getWhSales21() {
        return whSales21;
    }

    public void setWhSales21(int whSales21) {
        this.whSales21 = whSales21;
    }

    public int getSySales21() {
        return sySales21;
    }

    public void setSySales21(int sySales21) {
        this.sySales21 = sySales21;
    }

    public int getXaSales21() {
        return xaSales21;
    }

    public void setXaSales21(int xaSales21) {
        this.xaSales21 = xaSales21;
    }

    public int getGaSales21() {
        return gaSales21;
    }

    public void setGaSales21(int gaSales21) {
        this.gaSales21 = gaSales21;
    }

    public int getBjSales22() {
        return bjSales22;
    }

    public void setBjSales22(int bjSales22) {
        this.bjSales22 = bjSales22;
    }

    public int getShSales22() {
        return shSales22;
    }

    public void setShSales22(int shSales22) {
        this.shSales22 = shSales22;
    }

    public int getGzSales22() {
        return gzSales22;
    }

    public void setGzSales22(int gzSales22) {
        this.gzSales22 = gzSales22;
    }

    public int getCdSales22() {
        return cdSales22;
    }

    public void setCdSales22(int cdSales22) {
        this.cdSales22 = cdSales22;
    }

    public int getWhSales22() {
        return whSales22;
    }

    public void setWhSales22(int whSales22) {
        this.whSales22 = whSales22;
    }

    public int getSySales22() {
        return sySales22;
    }

    public void setSySales22(int sySales22) {
        this.sySales22 = sySales22;
    }

    public int getXaSales22() {
        return xaSales22;
    }

    public void setXaSales22(int xaSales22) {
        this.xaSales22 = xaSales22;
    }

    public int getGaSales22() {
        return gaSales22;
    }

    public void setGaSales22(int gaSales22) {
        this.gaSales22 = gaSales22;
    }

    public int getBjSales23() {
        return bjSales23;
    }

    public void setBjSales23(int bjSales23) {
        this.bjSales23 = bjSales23;
    }

    public int getShSales23() {
        return shSales23;
    }

    public void setShSales23(int shSales23) {
        this.shSales23 = shSales23;
    }

    public int getGzSales23() {
        return gzSales23;
    }

    public void setGzSales23(int gzSales23) {
        this.gzSales23 = gzSales23;
    }

    public int getCdSales23() {
        return cdSales23;
    }

    public void setCdSales23(int cdSales23) {
        this.cdSales23 = cdSales23;
    }

    public int getWhSales23() {
        return whSales23;
    }

    public void setWhSales23(int whSales23) {
        this.whSales23 = whSales23;
    }

    public int getSySales23() {
        return sySales23;
    }

    public void setSySales23(int sySales23) {
        this.sySales23 = sySales23;
    }

    public int getXaSales23() {
        return xaSales23;
    }

    public void setXaSales23(int xaSales23) {
        this.xaSales23 = xaSales23;
    }

    public int getGaSales23() {
        return gaSales23;
    }

    public void setGaSales23(int gaSales23) {
        this.gaSales23 = gaSales23;
    }

    public int getBjSales24() {
        return bjSales24;
    }

    public void setBjSales24(int bjSales24) {
        this.bjSales24 = bjSales24;
    }

    public int getShSales24() {
        return shSales24;
    }

    public void setShSales24(int shSales24) {
        this.shSales24 = shSales24;
    }

    public int getGzSales24() {
        return gzSales24;
    }

    public void setGzSales24(int gzSales24) {
        this.gzSales24 = gzSales24;
    }

    public int getCdSales24() {
        return cdSales24;
    }

    public void setCdSales24(int cdSales24) {
        this.cdSales24 = cdSales24;
    }

    public int getWhSales24() {
        return whSales24;
    }

    public void setWhSales24(int whSales24) {
        this.whSales24 = whSales24;
    }

    public int getSySales24() {
        return sySales24;
    }

    public void setSySales24(int sySales24) {
        this.sySales24 = sySales24;
    }

    public int getXaSales24() {
        return xaSales24;
    }

    public void setXaSales24(int xaSales24) {
        this.xaSales24 = xaSales24;
    }

    public int getGaSales24() {
        return gaSales24;
    }

    public void setGaSales24(int gaSales24) {
        this.gaSales24 = gaSales24;
    }

    public int getBjSales25() {
        return bjSales25;
    }

    public void setBjSales25(int bjSales25) {
        this.bjSales25 = bjSales25;
    }

    public int getShSales25() {
        return shSales25;
    }

    public void setShSales25(int shSales25) {
        this.shSales25 = shSales25;
    }

    public int getGzSales25() {
        return gzSales25;
    }

    public void setGzSales25(int gzSales25) {
        this.gzSales25 = gzSales25;
    }

    public int getCdSales25() {
        return cdSales25;
    }

    public void setCdSales25(int cdSales25) {
        this.cdSales25 = cdSales25;
    }

    public int getWhSales25() {
        return whSales25;
    }

    public void setWhSales25(int whSales25) {
        this.whSales25 = whSales25;
    }

    public int getSySales25() {
        return sySales25;
    }

    public void setSySales25(int sySales25) {
        this.sySales25 = sySales25;
    }

    public int getXaSales25() {
        return xaSales25;
    }

    public void setXaSales25(int xaSales25) {
        this.xaSales25 = xaSales25;
    }

    public int getGaSales25() {
        return gaSales25;
    }

    public void setGaSales25(int gaSales25) {
        this.gaSales25 = gaSales25;
    }

    public int getBjSales26() {
        return bjSales26;
    }

    public void setBjSales26(int bjSales26) {
        this.bjSales26 = bjSales26;
    }

    public int getShSales26() {
        return shSales26;
    }

    public void setShSales26(int shSales26) {
        this.shSales26 = shSales26;
    }

    public int getGzSales26() {
        return gzSales26;
    }

    public void setGzSales26(int gzSales26) {
        this.gzSales26 = gzSales26;
    }

    public int getCdSales26() {
        return cdSales26;
    }

    public void setCdSales26(int cdSales26) {
        this.cdSales26 = cdSales26;
    }

    public int getWhSales26() {
        return whSales26;
    }

    public void setWhSales26(int whSales26) {
        this.whSales26 = whSales26;
    }

    public int getSySales26() {
        return sySales26;
    }

    public void setSySales26(int sySales26) {
        this.sySales26 = sySales26;
    }

    public int getXaSales26() {
        return xaSales26;
    }

    public void setXaSales26(int xaSales26) {
        this.xaSales26 = xaSales26;
    }

    public int getGaSales26() {
        return gaSales26;
    }

    public void setGaSales26(int gaSales26) {
        this.gaSales26 = gaSales26;
    }

    public int getBjSales27() {
        return bjSales27;
    }

    public void setBjSales27(int bjSales27) {
        this.bjSales27 = bjSales27;
    }

    public int getShSales27() {
        return shSales27;
    }

    public void setShSales27(int shSales27) {
        this.shSales27 = shSales27;
    }

    public int getGzSales27() {
        return gzSales27;
    }

    public void setGzSales27(int gzSales27) {
        this.gzSales27 = gzSales27;
    }

    public int getCdSales27() {
        return cdSales27;
    }

    public void setCdSales27(int cdSales27) {
        this.cdSales27 = cdSales27;
    }

    public int getWhSales27() {
        return whSales27;
    }

    public void setWhSales27(int whSales27) {
        this.whSales27 = whSales27;
    }

    public int getSySales27() {
        return sySales27;
    }

    public void setSySales27(int sySales27) {
        this.sySales27 = sySales27;
    }

    public int getXaSales27() {
        return xaSales27;
    }

    public void setXaSales27(int xaSales27) {
        this.xaSales27 = xaSales27;
    }

    public int getGaSales27() {
        return gaSales27;
    }

    public void setGaSales27(int gaSales27) {
        this.gaSales27 = gaSales27;
    }

    public int getBjSales28() {
        return bjSales28;
    }

    public void setBjSales28(int bjSales28) {
        this.bjSales28 = bjSales28;
    }

    public int getShSales28() {
        return shSales28;
    }

    public void setShSales28(int shSales28) {
        this.shSales28 = shSales28;
    }

    public int getGzSales28() {
        return gzSales28;
    }

    public void setGzSales28(int gzSales28) {
        this.gzSales28 = gzSales28;
    }

    public int getCdSales28() {
        return cdSales28;
    }

    public void setCdSales28(int cdSales28) {
        this.cdSales28 = cdSales28;
    }

    public int getWhSales28() {
        return whSales28;
    }

    public void setWhSales28(int whSales28) {
        this.whSales28 = whSales28;
    }

    public int getSySales28() {
        return sySales28;
    }

    public void setSySales28(int sySales28) {
        this.sySales28 = sySales28;
    }

    public int getXaSales28() {
        return xaSales28;
    }

    public void setXaSales28(int xaSales28) {
        this.xaSales28 = xaSales28;
    }

    public int getGaSales28() {
        return gaSales28;
    }

    public void setGaSales28(int gaSales28) {
        this.gaSales28 = gaSales28;
    }

    public int getBjSales29() {
        return bjSales29;
    }

    public void setBjSales29(int bjSales29) {
        this.bjSales29 = bjSales29;
    }

    public int getShSales29() {
        return shSales29;
    }

    public void setShSales29(int shSales29) {
        this.shSales29 = shSales29;
    }

    public int getGzSales29() {
        return gzSales29;
    }

    public void setGzSales29(int gzSales29) {
        this.gzSales29 = gzSales29;
    }

    public int getCdSales29() {
        return cdSales29;
    }

    public void setCdSales29(int cdSales29) {
        this.cdSales29 = cdSales29;
    }

    public int getWhSales29() {
        return whSales29;
    }

    public void setWhSales29(int whSales29) {
        this.whSales29 = whSales29;
    }

    public int getSySales29() {
        return sySales29;
    }

    public void setSySales29(int sySales29) {
        this.sySales29 = sySales29;
    }

    public int getXaSales29() {
        return xaSales29;
    }

    public void setXaSales29(int xaSales29) {
        this.xaSales29 = xaSales29;
    }

    public int getGaSales29() {
        return gaSales29;
    }

    public void setGaSales29(int gaSales29) {
        this.gaSales29 = gaSales29;
    }

    public int getBjSales30() {
        return bjSales30;
    }

    public void setBjSales30(int bjSales30) {
        this.bjSales30 = bjSales30;
    }

    public int getShSales30() {
        return shSales30;
    }

    public void setShSales30(int shSales30) {
        this.shSales30 = shSales30;
    }

    public int getGzSales30() {
        return gzSales30;
    }

    public void setGzSales30(int gzSales30) {
        this.gzSales30 = gzSales30;
    }

    public int getCdSales30() {
        return cdSales30;
    }

    public void setCdSales30(int cdSales30) {
        this.cdSales30 = cdSales30;
    }

    public int getWhSales30() {
        return whSales30;
    }

    public void setWhSales30(int whSales30) {
        this.whSales30 = whSales30;
    }

    public int getSySales30() {
        return sySales30;
    }

    public void setSySales30(int sySales30) {
        this.sySales30 = sySales30;
    }

    public int getXaSales30() {
        return xaSales30;
    }

    public void setXaSales30(int xaSales30) {
        this.xaSales30 = xaSales30;
    }

    public int getGaSales30() {
        return gaSales30;
    }

    public void setGaSales30(int gaSales30) {
        this.gaSales30 = gaSales30;
    }

    public int getBjSales31() {
        return bjSales31;
    }

    public void setBjSales31(int bjSales31) {
        this.bjSales31 = bjSales31;
    }

    public int getShSales31() {
        return shSales31;
    }

    public void setShSales31(int shSales31) {
        this.shSales31 = shSales31;
    }

    public int getGzSales31() {
        return gzSales31;
    }

    public void setGzSales31(int gzSales31) {
        this.gzSales31 = gzSales31;
    }

    public int getCdSales31() {
        return cdSales31;
    }

    public void setCdSales31(int cdSales31) {
        this.cdSales31 = cdSales31;
    }

    public int getWhSales31() {
        return whSales31;
    }

    public void setWhSales31(int whSales31) {
        this.whSales31 = whSales31;
    }

    public int getSySales31() {
        return sySales31;
    }

    public void setSySales31(int sySales31) {
        this.sySales31 = sySales31;
    }

    public int getXaSales31() {
        return xaSales31;
    }

    public void setXaSales31(int xaSales31) {
        this.xaSales31 = xaSales31;
    }

    public int getGaSales31() {
        return gaSales31;
    }

    public void setGaSales31(int gaSales31) {
        this.gaSales31 = gaSales31;
    }
}
