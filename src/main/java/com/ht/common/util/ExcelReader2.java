package com.ht.common.util;

import com.ht.bean.Product;
import com.ht.common.Methods;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import javax.servlet.http.HttpServletRequest;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.*;

/**
 * Created by ArrayBin on 2017/3/23.
 */
public class ExcelReader2 {

    private POIFSFileSystem fs;
    private XSSFWorkbook wb;
    private XSSFSheet sheet;
    private XSSFRow row;

    public List<Product> readProducts1(String path, HttpServletRequest req) {
        try {
            wb = new XSSFWorkbook(path);
        } catch (IOException e) {
            e.printStackTrace();
        }
        sheet = wb.getSheetAt(0);

        List<Product> products = new ArrayList<Product>();
        Properties properties = new Properties();
        try {
            properties.load(new FileInputStream(Methods.getRootPath(req) + "WEB-INF/config/da_column.properties"));
        } catch (IOException e) {

            e.printStackTrace();
        }
        String productNo = properties.getProperty("productNo");
        String name = properties.getProperty("name");
        String brand = properties.getProperty("brand");
        String status = properties.getProperty("status");
        String price = properties.getProperty("price");

        String totalSales7 = properties.getProperty("totalSales7");
        String totalSales14 = properties.getProperty("totalSales14");
        String totalSales15 = properties.getProperty("totalSales15");
        String totalSales28 = properties.getProperty("totalSales28");
        String totalSales90 = properties.getProperty("totalSales90");
        String totalSales = properties.getProperty("totalSales");

        String bjSales7 = properties.getProperty("bjSales7");
        String bjSales14 = properties.getProperty("bjSales14");
        String bjSales15 = properties.getProperty("bjSales15");
        String bjSales28 = properties.getProperty("bjSales28");
        String bjSales90 = properties.getProperty("bjSales90");
        String bjSales = properties.getProperty("bjSales");

        String shSales7 = properties.getProperty("shSales7");
        String shSales14 = properties.getProperty("shSales14");
        String shSales15 = properties.getProperty("shSales15");
        String shSales28 = properties.getProperty("shSales28");
        String shSales90 = properties.getProperty("shSales90");
        String shSales = properties.getProperty("shSales");


        String gzSales7 = properties.getProperty("gzSales7");
        String gzSales14 = properties.getProperty("gzSales14");
        String gzSales15 = properties.getProperty("gzSales15");
        String gzSales28 = properties.getProperty("gzSales28");
        String gzSales90 = properties.getProperty("gzSales90");
        String gzSales = properties.getProperty("gzSales");

        String cdSales7 = properties.getProperty("cdSales7");
        String cdSales14 = properties.getProperty("cdSales14");
        String cdSales15 = properties.getProperty("cdSales15");
        String cdSales28 = properties.getProperty("cdSales28");
        String cdSales90 = properties.getProperty("cdSales90");
        String cdSales = properties.getProperty("cdSales");

        String whSales7 = properties.getProperty("whSales7");
        String whSales14 = properties.getProperty("whSales14");
        String whSales15 = properties.getProperty("whSales15");
        String whSales28 = properties.getProperty("whSales28");
        String whSales90 = properties.getProperty("whSales90");
        String whSales = properties.getProperty("whSales");

        String sySales7 = properties.getProperty("sySales7");
        String sySales14 = properties.getProperty("sySales14");
        String sySales15 = properties.getProperty("sySales15");
        String sySales28 = properties.getProperty("sySales28");
        String sySales90 = properties.getProperty("sySales90");
        String sySales = properties.getProperty("sySales");

        String xaSales7 = properties.getProperty("xaSales7");
        String xaSales14 = properties.getProperty("xaSales14");
        String xaSales15 = properties.getProperty("xaSales15");
        String xaSales28 = properties.getProperty("xaSales28");
        String xaSales90 = properties.getProperty("xaSales90");
        String xaSales = properties.getProperty("xaSales");

        String gaSales7 = properties.getProperty("gaSales7");
        String gaSales14 = properties.getProperty("gaSales14");
        String gaSales15 = properties.getProperty("gaSales15");
        String gaSales28 = properties.getProperty("gaSales28");
        String gaSales90 = properties.getProperty("gaSales90");
        String gaSales = properties.getProperty("gaSales");

        int rowNum = sheet.getLastRowNum();
        sheet.getLeftCol();
        XSSFRow titleRow = sheet.getRow(0);
        int totalCol = titleRow.getLastCellNum();
        Map<String, Integer> colMap = new HashMap<String, Integer>();
        for (int i = 0; i < totalCol; i++) {
            String content = titleRow.getCell(i).getStringCellValue();
            if (productNo.contains(content)) {
                colMap.put(productNo, i);
            } else if (name.equals(content)) {
                colMap.put(name, i);
            } else if (brand.equals(content)) {
                colMap.put(brand, i);
            } else if (status.equals(content)) {
                colMap.put(status, i);
            } else if (price.contains(content)) {
                colMap.put(price, i);
            } else if (totalSales7.contains(content)) {
                colMap.put(totalSales7, i);
            } else if (totalSales14.equals(content)) {
                colMap.put(totalSales14, i);
            } else if (totalSales15.equals(content)) {
                colMap.put(totalSales15, i);
            } else if (totalSales28.contains(content)) {
                colMap.put(totalSales28, i);
            } else if (totalSales90.equals(content)) {
                colMap.put(totalSales90, i);
            } else if (totalSales.contains(content)) {
                colMap.put(totalSales, i);
            } else if (bjSales7.contains(content)) {
                colMap.put(bjSales7, i);
            } else if (bjSales14.equals(content)) {
                colMap.put(bjSales14, i);
            } else if (bjSales15.equals(content)) {
                colMap.put(bjSales15, i);
            } else if (bjSales28.contains(content)) {
                colMap.put(bjSales28, i);
            } else if (bjSales90.equals(content)) {
                colMap.put(bjSales90, i);
            } else if (bjSales.contains(content)) {
                colMap.put(bjSales, i);
            } else if (shSales7.contains(content)) {
                colMap.put(shSales7, i);
            } else if (shSales14.equals(content)) {
                colMap.put(shSales14, i);
            } else if (shSales15.equals(content)) {
                colMap.put(shSales15, i);
            } else if (shSales28.contains(content)) {
                colMap.put(shSales28, i);
            } else if (shSales90.equals(content)) {
                colMap.put(shSales90, i);
            } else if (shSales.contains(content)) {
                colMap.put(shSales, i);
            } else if (gzSales7.contains(content)) {
                colMap.put(gzSales7, i);
            } else if (gzSales14.equals(content)) {
                colMap.put(gzSales14, i);
            } else if (gzSales15.equals(content)) {
                colMap.put(gzSales15, i);
            } else if (gzSales28.contains(content)) {
                colMap.put(gzSales28, i);
            } else if (gzSales90.equals(content)) {
                colMap.put(gzSales90, i);
            } else if (gzSales.contains(content)) {
                colMap.put(gzSales, i);
            } else if (cdSales7.contains(content)) {
                colMap.put(cdSales7, i);
            } else if (cdSales14.equals(content)) {
                colMap.put(cdSales14, i);
            } else if (cdSales15.equals(content)) {
                colMap.put(cdSales15, i);
            } else if (cdSales28.contains(content)) {
                colMap.put(cdSales28, i);
            } else if (cdSales90.equals(content)) {
                colMap.put(cdSales90, i);
            } else if (cdSales.contains(content)) {
                colMap.put(cdSales, i);
            } else if (whSales7.contains(content)) {
                colMap.put(whSales7, i);
            } else if (whSales14.equals(content)) {
                colMap.put(whSales14, i);
            } else if (whSales15.equals(content)) {
                colMap.put(whSales15, i);
            } else if (whSales28.contains(content)) {
                colMap.put(whSales28, i);
            } else if (whSales90.equals(content)) {
                colMap.put(whSales90, i);
            } else if (whSales.contains(content)) {
                colMap.put(whSales, i);
            } else if (sySales7.contains(content)) {
                colMap.put(sySales7, i);
            } else if (sySales14.equals(content)) {
                colMap.put(sySales14, i);
            } else if (sySales15.equals(content)) {
                colMap.put(sySales15, i);
            } else if (sySales28.contains(content)) {
                colMap.put(sySales28, i);
            } else if (sySales90.equals(content)) {
                colMap.put(sySales90, i);
            } else if (sySales.contains(content)) {
                colMap.put(sySales, i);
            } else if (xaSales7.contains(content)) {
                colMap.put(xaSales7, i);
            } else if (xaSales14.equals(content)) {
                colMap.put(xaSales14, i);
            } else if (xaSales15.equals(content)) {
                colMap.put(xaSales15, i);
            } else if (xaSales28.contains(content)) {
                colMap.put(xaSales28, i);
            } else if (xaSales90.equals(content)) {
                colMap.put(xaSales90, i);
            } else if (xaSales.contains(content)) {
                colMap.put(xaSales, i);
            } else if (gaSales7.contains(content)) {
                colMap.put(gaSales7, i);
            } else if (gaSales14.equals(content)) {
                colMap.put(gaSales14, i);
            } else if (gaSales15.equals(content)) {
                colMap.put(gaSales15, i);
            } else if (gaSales28.contains(content)) {
                colMap.put(gaSales28, i);
            } else if (gaSales90.equals(content)) {
                colMap.put(gaSales90, i);
            } else if (gaSales.contains(content)) {
                colMap.put(gaSales, i);
            }
        }
        for (int i = 1; i < rowNum; i++) {
            Product product = new Product();
            // 内容部分
            XSSFRow row = sheet.getRow(i);
            if (colMap.get(productNo) != null) {
                row.getCell(colMap.get(productNo)).setCellType(Cell.CELL_TYPE_STRING);
                product.setProductNo(String.valueOf(row.getCell(colMap.get(productNo)).getStringCellValue()));
            }
            if (colMap.get(name) != null) {

                product.setName(String.valueOf(row.getCell(colMap.get(name)).getStringCellValue()));
            }
            if (colMap.get(brand) != null) {

                product.setBrand(String.valueOf(row.getCell(colMap.get(brand)).getStringCellValue()));
            }
            if (colMap.get(status) != null) {

                product.setStatus(String.valueOf(row.getCell(colMap.get(status)).getStringCellValue()));
            }
            if (colMap.get(price) != null) {
                try {

                    product.setPrice(Double.valueOf(row.getCell(colMap.get(price)).getNumericCellValue()));
                } catch (NumberFormatException e) {
                    product.setPrice(0);
                }
            }
            if (colMap.get(totalSales7) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setTotalSales((int) row.getCell(colMap.get(totalSales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setTotalSales(0);
                }
                products.add(p);
            }
            if (colMap.get(totalSales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setTotalSales((int) row.getCell(colMap.get(totalSales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setTotalSales(0);
                }
                products.add(p);
            }
            if (colMap.get(totalSales15) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setTotalSales((int) row.getCell(colMap.get(totalSales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setTotalSales(0);
                }
                products.add(p);
            }
            if (colMap.get(totalSales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setTotalSales((int) row.getCell(colMap.get(totalSales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setTotalSales(0);
                }
                products.add(p);
            }
            if (colMap.get(totalSales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setTotalSales((int) row.getCell(colMap.get(totalSales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setTotalSales(0);
                }
                products.add(p);
            }
            if (colMap.get(totalSales) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setTotalSales((int) row.getCell(colMap.get(totalSales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setTotalSales(0);
                }
                products.add(p);
            }
            if (colMap.get(bjSales7) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setBjSales((int) row.getCell(colMap.get(bjSales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setBjSales(0);
                }
                products.add(p);
            }
            if (colMap.get(bjSales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setBjSales((int) row.getCell(colMap.get(bjSales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setBjSales(0);
                }
                products.add(p);
            }
            if (colMap.get(bjSales15) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setBjSales((int) row.getCell(colMap.get(bjSales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setBjSales(0);
                }
                products.add(p);
            }
            if (colMap.get(bjSales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setBjSales((int) row.getCell(colMap.get(bjSales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setBjSales(0);
                }
                products.add(p);
            }
            if (colMap.get(bjSales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setBjSales((int) row.getCell(colMap.get(bjSales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setBjSales(0);
                }
                products.add(p);
            }
            if (colMap.get(bjSales) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setBjSales((int) row.getCell(colMap.get(bjSales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setBjSales(0);
                }
                products.add(p);
            }
            if (colMap.get(shSales7) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setShSales((int) row.getCell(colMap.get(shSales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setShSales(0);
                }
                products.add(p);
            }
            if (colMap.get(shSales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setShSales((int) row.getCell(colMap.get(shSales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setShSales(0);
                }
                products.add(p);
            }
            if (colMap.get(shSales15) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setShSales((int) row.getCell(colMap.get(shSales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setShSales(0);
                }
                products.add(p);
            }
            if (colMap.get(shSales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setShSales((int) row.getCell(colMap.get(shSales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setShSales(0);
                }
                products.add(p);
            }
            if (colMap.get(shSales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setShSales((int) row.getCell(colMap.get(shSales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setShSales(0);
                }
                products.add(p);
            }

            if (colMap.get(shSales) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setShSales((int) row.getCell(colMap.get(shSales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setShSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gzSales7) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGzSales((int) row.getCell(colMap.get(gzSales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setGzSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gzSales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGzSales((int) row.getCell(colMap.get(gzSales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setGzSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gzSales15) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGzSales((int) row.getCell(colMap.get(gzSales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setGzSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gzSales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGzSales((int) row.getCell(colMap.get(gzSales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setGzSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gzSales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGzSales((int) row.getCell(colMap.get(gzSales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setGzSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gzSales) != null) {
                Product p = null;
                try {
                    p = product.copy();

                    p.setGzSales((int) row.getCell(colMap.get(gzSales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setGzSales(0);
                }
                products.add(p);
            }
            if (colMap.get(cdSales7) != null) {
                Product p = null;
                try {
                    p = product.copy();

                    p.setCdSales((int) row.getCell(colMap.get(cdSales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setCdSales(0);
                }
                products.add(p);
            }
            if (colMap.get(cdSales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setCdSales((int) row.getCell(colMap.get(cdSales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setCdSales(0);
                }
                products.add(p);
            }
            if (colMap.get(cdSales15) != null) {

                Product p = null;
                try {
                    p = product.copy();
                    p.setCdSales((int) row.getCell(colMap.get(cdSales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setCdSales(0);
                }
                products.add(p);
            }
            if (colMap.get(cdSales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setCdSales((int) row.getCell(colMap.get(cdSales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setCdSales(0);
                }
                products.add(p);
            }
            if (colMap.get(cdSales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setCdSales((int) row.getCell(colMap.get(cdSales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setCdSales(0);
                }
                products.add(p);
            }
            if (colMap.get(cdSales) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setCdSales((int) row.getCell(colMap.get(cdSales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setCdSales(0);
                }
                products.add(p);
            }
            if (colMap.get(whSales7) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setWhSales((int) row.getCell(colMap.get(whSales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setWhSales(0);
                }
                products.add(p);
            }
            if (colMap.get(whSales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setWhSales((int) row.getCell(colMap.get(whSales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setWhSales(0);
                }
                products.add(p);
            }
            if (colMap.get(whSales15) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setWhSales((int) row.getCell(colMap.get(whSales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setWhSales(0);
                }
                products.add(p);
            }
            if (colMap.get(whSales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setWhSales((int) row.getCell(colMap.get(whSales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setWhSales(0);
                }
                products.add(p);
            }
            if (colMap.get(whSales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setWhSales((int) row.getCell(colMap.get(whSales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setWhSales(0);
                }
                products.add(p);
            }
            if (colMap.get(whSales) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setWhSales((int) row.getCell(colMap.get(whSales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setWhSales(0);
                }
                products.add(p);
            }
            if (colMap.get(sySales7) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setSySales((int) row.getCell(colMap.get(sySales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setSySales(0);
                }
                products.add(p);
            }
            if (colMap.get(sySales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setSySales((int) row.getCell(colMap.get(sySales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setSySales(0);
                }
                products.add(p);
            }
            if (colMap.get(sySales15) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setSySales((int) row.getCell(colMap.get(sySales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setSySales(0);
                }
                products.add(p);
            }
            if (colMap.get(sySales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setSySales((int) row.getCell(colMap.get(sySales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setSySales(0);
                }
                products.add(p);
            }
            if (colMap.get(sySales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setSySales((int) row.getCell(colMap.get(sySales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setSySales(0);
                }
                products.add(p);
            }
            if (colMap.get(sySales) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setSySales((int) row.getCell(colMap.get(sySales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setSySales(0);
                }
                products.add(p);
            }
            if (colMap.get(xaSales7) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setXaSales((int) row.getCell(colMap.get(xaSales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setXaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(xaSales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setXaSales((int) row.getCell(colMap.get(xaSales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setXaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(xaSales15) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setXaSales((int) row.getCell(colMap.get(xaSales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setXaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(xaSales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setXaSales((int) row.getCell(colMap.get(xaSales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setXaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(xaSales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setXaSales((int) row.getCell(colMap.get(xaSales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setXaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(xaSales) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setXaSales((int) row.getCell(colMap.get(xaSales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setXaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gaSales7) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGaSales((int) row.getCell(colMap.get(gaSales7)).getNumericCellValue());
                    p.setDays(7);
                } catch (NumberFormatException e) {
                    p.setGaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gaSales14) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGaSales((int) row.getCell(colMap.get(gaSales14)).getNumericCellValue());
                    p.setDays(14);
                } catch (NumberFormatException e) {
                    p.setGaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gaSales15) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGaSales((int) row.getCell(colMap.get(gaSales15)).getNumericCellValue());
                    p.setDays(15);
                } catch (NumberFormatException e) {
                    p.setGaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gaSales28) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGaSales((int) row.getCell(colMap.get(gaSales28)).getNumericCellValue());
                    p.setDays(28);
                } catch (NumberFormatException e) {
                    p.setGaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gaSales90) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGaSales((int) row.getCell(colMap.get(gaSales90)).getNumericCellValue());
                    p.setDays(90);
                } catch (NumberFormatException e) {
                    p.setGaSales(0);
                }
                products.add(p);
            }
            if (colMap.get(gaSales) != null) {
                Product p = null;
                try {
                    p = product.copy();
                    p.setGaSales((int) row.getCell(colMap.get(gaSales)).getNumericCellValue());
                    p.setDays(0);
                } catch (NumberFormatException e) {
                    p.setGaSales(0);
                }
                products.add(p);
            }
            products.add(product);

        }
        return products;
    }
}
