package com.ht.bean;

/**
 * Created by Administrator on 2017/3/23.
 */
public class ProductInfo extends Product {

    private int totalStockCount; // 全国总库存额
    private int totalSalesCount; // 全国总销售额
    private double turnoverDays; // 周转天数
    private int growthRate; // 增长率
    private  int count; // 补货数

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

    public double getTurnoverDays() {
        return turnoverDays;
    }

    public void setTurnoverDays(double turnoverDays) {
        this.turnoverDays = turnoverDays;
    }

    public int getGrowthRate() {
        return growthRate;
    }

    public void setGrowthRate(int growthRate) {
        this.growthRate = growthRate;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
