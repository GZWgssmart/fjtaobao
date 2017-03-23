package com.ht.common.util;

/**
 * Created by ArrayBin on 2017/3/20.
 */

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

import com.ht.bean.Product;
import com.ht.common.Methods;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;

import javax.servlet.http.HttpServletRequest;

public class ExcelReader {
    private POIFSFileSystem fs;
    private HSSFWorkbook wb;
    private HSSFSheet sheet;
    private HSSFRow row;


    public List<Product> readProducts(InputStream in, HttpServletRequest req) {
        try {
            fs = new POIFSFileSystem(in);
            wb = new HSSFWorkbook(fs);
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
        HSSFRow titleRow = sheet.getRow(0);
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
            HSSFRow row = sheet.getRow(i);
            if (colMap.get(productNo) != null) {
                row.getCell(colMap.get(productNo)).setCellType(Cell.CELL_TYPE_STRING);
                product.setProductNo(String.valueOf(row.getCell(colMap.get(productNo)).getStringCellValue()));
            }
            if (colMap.get(name) != null) {
                row.getCell(colMap.get(name)).setCellType(Cell.CELL_TYPE_STRING);
                product.setName(String.valueOf(row.getCell(colMap.get(name)).getStringCellValue()));
            }
            if (colMap.get(brand) != null) {
                row.getCell(colMap.get(brand)).setCellType(Cell.CELL_TYPE_STRING);
                product.setBrand(String.valueOf(row.getCell(colMap.get(brand)).getStringCellValue()));
            }
            if (colMap.get(status) != null) {
                row.getCell(colMap.get(status)).setCellType(Cell.CELL_TYPE_STRING);
                product.setStatus(String.valueOf(row.getCell(colMap.get(status)).getStringCellValue()));
            }
            if (colMap.get(price) != null) {
                try {
                    row.getCell(colMap.get(price)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setPrice(Double.parseDouble(row.getCell(colMap.get(price)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setPrice(0);
                }
            }
            if (colMap.get(totalSales) != null) {
                try {
                    row.getCell(colMap.get(totalSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setTotalSales(Integer.valueOf(row.getCell(colMap.get(totalSales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setTotalSales(0);
                }
            }
            if (colMap.get(totalStock) != null) {
                try {
                    row.getCell(colMap.get(totalStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setTotalStock(Integer.valueOf(row.getCell(colMap.get(totalStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setTotalStock(0);
                }
            }
            if (colMap.get(bjSales) != null) {
                try {
                    row.getCell(colMap.get(bjSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setBjSales(Integer.valueOf(row.getCell(colMap.get(bjSales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setBjSales(0);
                }
            }
            if (colMap.get(bjStock) != null) {
                try {
                    row.getCell(colMap.get(bjStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setBjStock(Integer.valueOf(row.getCell(colMap.get(bjStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setBjStock(0);
                }
            }
            if (colMap.get(shSales) != null) {
                try {
                    row.getCell(colMap.get(shSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setShSales(Integer.valueOf(row.getCell(colMap.get(shSales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(shStock) != null) {
                try {
                    row.getCell(colMap.get(shStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setShStock(Integer.valueOf(row.getCell(colMap.get(shStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setShStock(0);
                }
            }
            if (colMap.get(gzSales) != null) {
                try {
                    row.getCell(colMap.get(gzSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGzSales(Integer.valueOf(row.getCell(colMap.get(gzSales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setGzSales(0);
                }
            }
            if (colMap.get(gzStock) != null) {
                try {
                    row.getCell(colMap.get(gzStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGzStock(Integer.valueOf(row.getCell(colMap.get(gzStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setGzStock(0);
                }
            }
            if (colMap.get(cdSales) != null) {
                try {
                    row.getCell(colMap.get(cdSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setCdSales(Integer.valueOf(row.getCell(colMap.get(cdSales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setCdSales(0);
                }
            }
            if (colMap.get(cdStock) != null) {
                try {
                    row.getCell(colMap.get(cdStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setCdStock(Integer.valueOf(row.getCell(colMap.get(cdStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setCdStock(0);
                }
            }
            if (colMap.get(whSales) != null) {
                try {
                    row.getCell(colMap.get(whSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setWhSales(Integer.valueOf(row.getCell(colMap.get(whSales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setWhSales(0);
                }
            }
            if (colMap.get(whStock) != null) {
                try {
                    row.getCell(colMap.get(whStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setWhStock(Integer.valueOf(row.getCell(colMap.get(whStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setWhStock(0);
                }
            }
            if (colMap.get(sySales) != null) {
                try {
                    row.getCell(colMap.get(sySales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setSySales(Integer.valueOf(row.getCell(colMap.get(sySales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(syStock) != null) {
                try {
                    row.getCell(colMap.get(syStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setSyStock(Integer.valueOf(row.getCell(colMap.get(syStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setSyStock(0);
                }

            }
            if (colMap.get(xaSales) != null) {
                try {
                    row.getCell(colMap.get(xaSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setXaSales(Integer.valueOf(row.getCell(colMap.get(xaSales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setXaSales(0);
                }
            }
            if (colMap.get(xaStock) != null) {
                try {
                    row.getCell(colMap.get(xaStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setXaStock(Integer.valueOf(row.getCell(colMap.get(xaStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setXaStock(0);
                }
            }
            if (colMap.get(gaSales) != null) {
                try {
                    row.getCell(colMap.get(gaSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGaSales(Integer.valueOf(row.getCell(colMap.get(gaSales)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setGaSales(0);
                }
            }
            if (colMap.get(gaStock) != null) {
                try {
                    row.getCell(colMap.get(gaStock)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGaStock(Integer.valueOf(row.getCell(colMap.get(gaStock)).getStringCellValue()));
                } catch (NumberFormatException e) {
                    product.setGaStock(0);
                }
            }
            products.add(product);
        }

        return products;
    }

}
