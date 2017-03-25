package com.ht.common.util;

/**
 * Created by ArrayBin on 2017/3/20.
 */

import com.ht.bean.Product;
import com.ht.common.Methods;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import javax.servlet.http.HttpServletRequest;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.*;

public class ExcelReader1 {
    private XSSFWorkbook wb;
    private XSSFSheet sheet;
    private XSSFRow row;


    public List<Product> readProducts(String path, HttpServletRequest req) {
        try {
            wb = new XSSFWorkbook(path);
        } catch (IOException e) {
            e.printStackTrace();
        }
        sheet = wb.getSheetAt(0);
        List<Product> products = new ArrayList<Product>();
        Properties properties = new Properties();
        System.out.printf(Methods.getRootPath(req) + "WEB-INF/config/xiao_column.properties");
        try {
            properties.load(new FileInputStream(Methods.getRootPath(req) + "WEB-INF/config/xiao_column.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String productNo = properties.getProperty("productNo");
        String name = properties.getProperty("name");
        String brand = properties.getProperty("brand");
        String status = properties.getProperty("status");
        String price = properties.getProperty("price");
        String totalSales = properties.getProperty("totalSales");
        String totalStock = properties.getProperty("totalStock");
        String bjSales = properties.getProperty("bjSales");
        String bjStock = properties.getProperty("bjStock");
        String shSales = properties.getProperty("shSales");
        String shStock = properties.getProperty("shStock");
        String gzSales = properties.getProperty("gzSales");
        String gzStock = properties.getProperty("gzStock");
        String cdSales = properties.getProperty("cdSales");
        String cdStock = properties.getProperty("cdStock");
        String whSales = properties.getProperty("whSales");
        String whStock = properties.getProperty("whStock");
        String sySales = properties.getProperty("sySales");
        String syStock = properties.getProperty("syStock");
        String xaSales = properties.getProperty("xaSales");
        String xaStock = properties.getProperty("xaStock");
        String gaSales = properties.getProperty("gaSales");
        String gaStock = properties.getProperty("gaStock");

        int rowNum = sheet.getLastRowNum();
        XSSFRow titleRow = sheet.getRow(0);
        int totalCol = titleRow.getLastCellNum();
        Map<String, Integer> colMap = new HashMap<String, Integer>();
        for (int i = 0; i < totalCol; i++) {
            String content = titleRow.getCell(i).getStringCellValue();
            if (productNo.equals(content)) {
                colMap.put(productNo, i);
            } else if (name.equals(content)) {
                colMap.put(name, i);
            } else if (brand.equals(content)) {
                colMap.put(brand, i);
            } else if (status.equals(content)) {
                colMap.put(status, i);
            } else if (price.equals(content)) {
                colMap.put(price, i);
            } else if (totalSales.equals(content)) {
                colMap.put(totalSales, i);
            } else if (totalStock.equals(content)) {
                colMap.put(totalStock, i);
            } else if (bjSales.equals(content)) {
                colMap.put(bjSales, i);
            } else if (bjStock.equals(content)) {
                colMap.put(bjStock, i);
            } else if (shSales.equals(content)) {
                colMap.put(shSales, i);
            } else if (shStock.equals(content)) {
                colMap.put(shStock, i);
            } else if (gzSales.equals(content)) {
                colMap.put(gzSales, i);
            } else if (gzStock.equals(content)) {
                colMap.put(gzStock, i);
            } else if (cdSales.equals(content)) {
                colMap.put(cdSales, i);
            } else if (cdStock.equals(content)) {
                colMap.put(cdStock, i);
            } else if (whSales.equals(content)) {
                colMap.put(whSales, i);
            } else if (whStock.equals(content)) {
                colMap.put(whStock, i);
            } else if (sySales.equals(content)) {
                colMap.put(sySales, i);
            } else if (syStock.equals(content)) {
                colMap.put(syStock, i);
            } else if (xaSales.equals(content)) {
                colMap.put(xaSales, i);
            } else if (xaStock.equals(content)) {
                colMap.put(xaStock, i);
            } else if (gaSales.equals(content)) {
                colMap.put(gaSales, i);
            } else if (gaStock.equals(content)) {
                colMap.put(gaStock, i);
            }
        }
        for (int i = 1; i < rowNum; i++) {
            Product product = new Product();
            // 内容部分
            XSSFRow row = sheet.getRow(i);
            if (colMap.get(productNo) != null) {

                product.setProductNo(String.valueOf(row.getCell(colMap.get(productNo)).getNumericCellValue()));
            }
            if (colMap.get(name) != null) {

                product.setName(String.valueOf(row.getCell(colMap.get(name)).getNumericCellValue()));
            }
            if (colMap.get(brand) != null) {

                product.setBrand(String.valueOf(row.getCell(colMap.get(brand)).getNumericCellValue()));
            }
            if (colMap.get(status) != null) {
                product.setStatus(String.valueOf(row.getCell(colMap.get(status)).getNumericCellValue()));
            }
            if (colMap.get(price) != null) {
                try {
                    product.setPrice((int)(row.getCell(colMap.get(price)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setPrice(0);
                }
            }
            if (colMap.get(totalSales) != null) {
                try {
                    product.setTotalSales((int)(row.getCell(colMap.get(totalSales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setTotalSales(0);
                }
            }
            if (colMap.get(totalStock) != null) {
                try {

                    product.setTotalStock((int)(row.getCell(colMap.get(totalStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setTotalStock(0);
                }
            }
            if (colMap.get(bjSales) != null) {
                try {

                    product.setBjSales((int)(row.getCell(colMap.get(bjSales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setBjSales(0);
                }
            }
            if (colMap.get(bjStock) != null) {
                try {

                    product.setBjStock((int)(row.getCell(colMap.get(bjStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setBjStock(0);
                }
            }
            if (colMap.get(shSales) != null) {
                try {

                    product.setShSales((int)(row.getCell(colMap.get(shSales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(shStock) != null) {
                try {

                    product.setShStock((int)(row.getCell(colMap.get(shStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setShStock(0);
                }
            }
            if (colMap.get(gzSales) != null) {
                try {

                    product.setGzSales((int)(row.getCell(colMap.get(gzSales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setGzSales(0);
                }
            }
            if (colMap.get(gzStock) != null) {
                try {

                    product.setGzStock((int)(row.getCell(colMap.get(gzStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setGzStock(0);
                }
            }
            if (colMap.get(cdSales) != null) {
                try {

                    product.setCdSales((int)(row.getCell(colMap.get(cdSales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setCdSales(0);
                }
            }
            if (colMap.get(cdStock) != null) {
                try {

                    product.setCdStock((int)(row.getCell(colMap.get(cdStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setCdStock(0);
                }
            }
            if (colMap.get(whSales) != null) {
                try {

                    product.setWhSales((int)(row.getCell(colMap.get(whSales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setWhSales(0);
                }
            }
            if (colMap.get(whStock) != null) {
                try {

                    product.setWhStock((int)(row.getCell(colMap.get(whStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setWhStock(0);
                }
            }
            if (colMap.get(sySales) != null) {
                try {

                    product.setSySales((int)(row.getCell(colMap.get(sySales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(syStock) != null) {
                try {

                    product.setSyStock((int)(row.getCell(colMap.get(syStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setSyStock(0);
                }

            }
            if (colMap.get(xaSales) != null) {
                try {

                    product.setXaSales((int)(row.getCell(colMap.get(xaSales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setXaSales(0);
                }
            }
            if (colMap.get(xaStock) != null) {
                try {

                    product.setXaStock((int)(row.getCell(colMap.get(xaStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setXaStock(0);
                }
            }
            if (colMap.get(gaSales) != null) {
                try {

                    product.setGaSales((int)(row.getCell(colMap.get(gaSales)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setGaSales(0);
                }
            }
            if (colMap.get(gaStock) != null) {
                try {

                    product.setGaStock((int)(row.getCell(colMap.get(gaStock)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setGaStock(0);
                }
            }
            products.add(product);
        }

        return products;
    }

}
