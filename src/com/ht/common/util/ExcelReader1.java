package com.ht.common.util;

import com.ht.bean.Product;
import com.ht.common.Methods;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;

import javax.servlet.http.HttpServletRequest;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

/**
 * Created by ArrayBin on 2017/3/23.
 */
public class ExcelReader1 {

    private POIFSFileSystem fs;
    private HSSFWorkbook wb;
    private HSSFSheet sheet;
    private HSSFRow row;

    public List<Product> readProducts1(InputStream in, HttpServletRequest req) {
        try {
            fs = new POIFSFileSystem(in);
            wb = new HSSFWorkbook(fs);
        } catch (IOException e) {
            e.printStackTrace();
        }
        sheet = wb.getSheetAt(0);

        List<Product> products = new ArrayList<Product>();
        Properties properties = new Properties();
        System.out.printf(Methods.getRootPath(req) + "WEB-INF/config/da_column.properties");
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
            } else if (totalSales7.equals(content)) {
                colMap.put(totalSales7, i);
            } else if (totalSales14.equals(content)) {
                colMap.put(totalSales14, i);
            } else if (totalSales15.equals(content)) {
                colMap.put(totalSales15, i);
            } else if (totalSales28.equals(content)) {
                colMap.put(totalSales28, i);
            } else if (totalSales90.equals(content)) {
                colMap.put(totalSales90, i);
            } else if (totalSales.equals(content)) {
                colMap.put(totalSales, i);
            } else if (bjSales7.equals(content)) {
                colMap.put(bjSales7, i);
            } else if (bjSales14.equals(content)) {
                colMap.put(bjSales14, i);
            } else if (bjSales15.equals(content)) {
                colMap.put(bjSales15, i);
            } else if (bjSales28.equals(content)) {
                colMap.put(bjSales28, i);
            } else if (bjSales90.equals(content)) {
                colMap.put(bjSales90, i);
            } else if (bjSales.equals(content)) {
                colMap.put(bjSales, i);
            } else if (shSales7.equals(content)) {
                colMap.put(shSales7, i);
            } else if (shSales14.equals(content)) {
                colMap.put(shSales14, i);
            } else if (shSales15.equals(content)) {
                colMap.put(shSales15, i);
            } else if (shSales28.equals(content)) {
                colMap.put(shSales28, i);
            } else if (shSales90.equals(content)) {
                colMap.put(shSales90, i);
            } else if (shSales.equals(content)) {
                colMap.put(shSales, i);
            } else if (gzSales7.equals(content)) {
                colMap.put(gzSales7, i);
            } else if (gzSales14.equals(content)) {
                colMap.put(gzSales14, i);
            } else if (gzSales15.equals(content)) {
                colMap.put(gzSales15, i);
            } else if (gzSales28.equals(content)) {
                colMap.put(gzSales28, i);
            } else if (gzSales90.equals(content)) {
                colMap.put(gzSales90, i);
            } else if (gzSales.equals(content)) {
                colMap.put(gzSales, i);
            } else if (cdSales7.equals(content)) {
                colMap.put(cdSales7, i);
            } else if (cdSales14.equals(content)) {
                colMap.put(cdSales14, i);
            } else if (cdSales15.equals(content)) {
                colMap.put(cdSales15, i);
            } else if (cdSales28.equals(content)) {
                colMap.put(cdSales28, i);
            } else if (cdSales90.equals(content)) {
                colMap.put(cdSales90, i);
            } else if (cdSales.equals(content)) {
                colMap.put(cdSales, i);
            } else if (whSales7.equals(content)) {
                colMap.put(whSales7, i);
            } else if (whSales14.equals(content)) {
                colMap.put(whSales14, i);
            } else if (whSales15.equals(content)) {
                colMap.put(whSales15, i);
            } else if (whSales28.equals(content)) {
                colMap.put(whSales28, i);
            } else if (whSales90.equals(content)) {
                colMap.put(whSales90, i);
            } else if (whSales.equals(content)) {
                colMap.put(whSales, i);
            } else if (sySales7.equals(content)) {
                colMap.put(sySales7, i);
            } else if (sySales14.equals(content)) {
                colMap.put(sySales14, i);
            } else if (sySales15.equals(content)) {
                colMap.put(sySales15, i);
            } else if (sySales28.equals(content)) {
                colMap.put(sySales28, i);
            } else if (sySales90.equals(content)) {
                colMap.put(sySales90, i);
            } else if (sySales.equals(content)) {
                colMap.put(sySales, i);
            } else if (xaSales7.equals(content)) {
                colMap.put(xaSales7, i);
            } else if (xaSales14.equals(content)) {
                colMap.put(xaSales14, i);
            } else if (xaSales15.equals(content)) {
                colMap.put(xaSales15, i);
            } else if (xaSales28.equals(content)) {
                colMap.put(xaSales28, i);
            } else if (xaSales90.equals(content)) {
                colMap.put(xaSales90, i);
            } else if (xaSales.equals(content)) {
                colMap.put(xaSales, i);
            } else if (gaSales7.equals(content)) {
                colMap.put(gaSales7, i);
            } else if (gaSales14.equals(content)) {
                colMap.put(gaSales14, i);
            } else if (gaSales15.equals(content)) {
                colMap.put(gaSales15, i);
            } else if (gaSales28.equals(content)) {
                colMap.put(gaSales28, i);
            } else if (gaSales90.equals(content)) {
                colMap.put(gaSales90, i);
            } else if (gaSales.equals(content)) {
                colMap.put(gaSales, i);
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
            if (colMap.get(totalSales7) != null) {
                try {
                    row.getCell(colMap.get(totalSales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setTotalSales(Integer.valueOf(row.getCell(colMap.get(totalSales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setTotalSales(0);
                }
            }
            if (colMap.get(totalSales14) != null) {
                try {
                    row.getCell(colMap.get(totalSales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setTotalSales(Integer.valueOf(row.getCell(colMap.get(totalSales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setTotalSales(0);
                }
            }
            if (colMap.get(totalSales15) != null) {
                try {
                    row.getCell(colMap.get(totalSales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setTotalSales(Integer.valueOf(row.getCell(colMap.get(totalSales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setTotalSales(0);
                }
            }
            if (colMap.get(totalSales28) != null) {
                try {
                    row.getCell(colMap.get(totalSales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setTotalSales(Integer.valueOf(row.getCell(colMap.get(totalSales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setTotalSales(0);
                }
            }
            if (colMap.get(totalSales90) != null) {
                try {
                    row.getCell(colMap.get(totalSales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setTotalSales(Integer.valueOf(row.getCell(colMap.get(totalSales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setTotalSales(0);
                }
            }
            if (colMap.get(totalSales) != null) {
                try {
                    row.getCell(colMap.get(totalSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setTotalSales(Integer.valueOf(row.getCell(colMap.get(totalSales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setTotalSales(0);
                }
            }
            if (colMap.get(bjSales7) != null) {
                try {
                    row.getCell(colMap.get(bjSales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setBjSales(Integer.valueOf(row.getCell(colMap.get(bjSales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setBjSales(0);
                }
            }
            if (colMap.get(bjSales14) != null) {
                try {
                    row.getCell(colMap.get(bjSales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setBjSales(Integer.valueOf(row.getCell(colMap.get(bjSales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setBjSales(0);
                }
            }
            if (colMap.get(bjSales15) != null) {
                try {
                    row.getCell(colMap.get(bjSales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setBjSales(Integer.valueOf(row.getCell(colMap.get(bjSales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setBjSales(0);
                }
            }
            if (colMap.get(bjSales28) != null) {
                try {
                    row.getCell(colMap.get(bjSales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setBjSales(Integer.valueOf(row.getCell(colMap.get(bjSales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setBjSales(0);
                }
            }
            if (colMap.get(bjSales90) != null) {
                try {
                    row.getCell(colMap.get(bjSales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setBjSales(Integer.valueOf(row.getCell(colMap.get(bjSales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setBjSales(0);
                }
            }
            if (colMap.get(bjSales) != null) {
                try {
                    row.getCell(colMap.get(bjSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setBjSales(Integer.valueOf(row.getCell(colMap.get(bjSales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setBjSales(0);
                }
            }
            if (colMap.get(shSales7) != null) {
                try {
                    row.getCell(colMap.get(shSales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setShSales(Integer.valueOf(row.getCell(colMap.get(shSales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setShSales(0);
                }
            }
            if (colMap.get(shSales14) != null) {
                try {
                    row.getCell(colMap.get(shSales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setShSales(Integer.valueOf(row.getCell(colMap.get(shSales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setShSales(0);
                }
            }
            if (colMap.get(shSales15) != null) {
                try {
                    row.getCell(colMap.get(shSales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setShSales(Integer.valueOf(row.getCell(colMap.get(shSales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setShSales(0);
                }

            }
            if (colMap.get(shSales28) != null) {
                try {
                    row.getCell(colMap.get(shSales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setShSales(Integer.valueOf(row.getCell(colMap.get(shSales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setShSales(0);
                }
            }
            if (colMap.get(shSales90) != null) {
                try {
                    row.getCell(colMap.get(shSales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setShSales(Integer.valueOf(row.getCell(colMap.get(shSales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setShSales(0);
                }
            }

            if (colMap.get(shSales) != null) {
                try {
                    row.getCell(colMap.get(shSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setShSales(Integer.valueOf(row.getCell(colMap.get(shSales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setShSales(0);
                }
            }
            if (colMap.get(gzSales7) != null) {
                try {
                    row.getCell(colMap.get(gzSales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGzSales(Integer.valueOf(row.getCell(colMap.get(gzSales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setGzSales(0);
                }
            }
            if (colMap.get(gzSales14) != null) {
                try {
                    row.getCell(colMap.get(gzSales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGzSales(Integer.valueOf(row.getCell(colMap.get(gzSales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setGzSales(0);
                }
            }
            if (colMap.get(gzSales15) != null) {
                try {
                    row.getCell(colMap.get(gzSales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGzSales(Integer.valueOf(row.getCell(colMap.get(gzSales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setGzSales(0);
                }
            }
            if (colMap.get(gzSales28) != null) {
                try {
                    row.getCell(colMap.get(gzSales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGzSales(Integer.valueOf(row.getCell(colMap.get(gzSales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setGzSales(0);
                }
            }
            if (colMap.get(gzSales90) != null) {
                try {
                    row.getCell(colMap.get(gzSales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGzSales(Integer.valueOf(row.getCell(colMap.get(gzSales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setGzSales(0);
                }
            }
            if (colMap.get(gzSales) != null) {
                try {
                    row.getCell(colMap.get(gzSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGzSales(Integer.valueOf(row.getCell(colMap.get(gzSales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setGzSales(0);
                }
            }
            if (colMap.get(cdSales7) != null) {
                try {
                    row.getCell(colMap.get(cdSales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setCdSales(Integer.valueOf(row.getCell(colMap.get(cdSales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setCdSales(0);
                }
            }
            if (colMap.get(cdSales14) != null) {
                try {
                    row.getCell(colMap.get(cdSales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setCdSales(Integer.valueOf(row.getCell(colMap.get(cdSales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setCdSales(0);
                }
            }
            if (colMap.get(cdSales15) != null) {
                try {
                    row.getCell(colMap.get(cdSales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setCdSales(Integer.valueOf(row.getCell(colMap.get(cdSales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setCdSales(0);
                }
            }
            if (colMap.get(cdSales28) != null) {
                try {
                    row.getCell(colMap.get(cdSales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setCdSales(Integer.valueOf(row.getCell(colMap.get(cdSales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setCdSales(0);
                }
            }
            if (colMap.get(cdSales90) != null) {
                try {
                    row.getCell(colMap.get(cdSales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setCdSales(Integer.valueOf(row.getCell(colMap.get(cdSales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setCdSales(0);
                }
            }
            if (colMap.get(cdSales) != null) {
                try {
                    row.getCell(colMap.get(cdSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setCdSales(Integer.valueOf(row.getCell(colMap.get(cdSales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setCdSales(0);
                }
            }
            if (colMap.get(whSales7) != null) {
                try {
                    row.getCell(colMap.get(whSales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setWhSales(Integer.valueOf(row.getCell(colMap.get(whSales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setWhSales(0);
                }
            }
            if (colMap.get(whSales14) != null) {
                try {
                    row.getCell(colMap.get(whSales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setWhSales(Integer.valueOf(row.getCell(colMap.get(whSales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setWhSales(0);
                }
            }
            if (colMap.get(whSales15) != null) {
                try {
                    row.getCell(colMap.get(whSales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setWhSales(Integer.valueOf(row.getCell(colMap.get(whSales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setWhSales(0);
                }
            }
            if (colMap.get(whSales28) != null) {
                try {
                    row.getCell(colMap.get(whSales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setWhSales(Integer.valueOf(row.getCell(colMap.get(whSales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setWhSales(0);
                }
            }
            if (colMap.get(whSales90) != null) {
                try {
                    row.getCell(colMap.get(whSales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setWhSales(Integer.valueOf(row.getCell(colMap.get(whSales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setWhSales(0);
                }
            }
            if (colMap.get(whSales) != null) {
                try {
                    row.getCell(colMap.get(whSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setWhSales(Integer.valueOf(row.getCell(colMap.get(whSales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setWhSales(0);
                }
            }
            if (colMap.get(sySales7) != null) {
                try {
                    row.getCell(colMap.get(sySales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setSySales(Integer.valueOf(row.getCell(colMap.get(sySales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(sySales14) != null) {
                try {
                    row.getCell(colMap.get(sySales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setSySales(Integer.valueOf(row.getCell(colMap.get(sySales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(sySales15) != null) {
                try {
                    row.getCell(colMap.get(sySales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setSySales(Integer.valueOf(row.getCell(colMap.get(sySales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(sySales28) != null) {
                try {
                    row.getCell(colMap.get(sySales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setSySales(Integer.valueOf(row.getCell(colMap.get(sySales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(sySales90) != null) {
                try {
                    row.getCell(colMap.get(sySales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setSySales(Integer.valueOf(row.getCell(colMap.get(sySales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(sySales) != null) {
                try {
                    row.getCell(colMap.get(sySales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setSySales(Integer.valueOf(row.getCell(colMap.get(sySales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setSySales(0);
                }
            }
            if (colMap.get(xaSales7) != null) {
                try {
                    row.getCell(colMap.get(xaSales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setXaSales(Integer.valueOf(row.getCell(colMap.get(xaSales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setXaSales(0);
                }
            }
            if (colMap.get(xaSales14) != null) {
                try {
                    row.getCell(colMap.get(xaSales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setXaSales(Integer.valueOf(row.getCell(colMap.get(xaSales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setXaSales(0);
                }
            }
            if (colMap.get(xaSales15) != null) {
                try {
                    row.getCell(colMap.get(xaSales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setXaSales(Integer.valueOf(row.getCell(colMap.get(xaSales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setXaSales(0);
                }
            }
            if (colMap.get(xaSales28) != null) {
                try {
                    row.getCell(colMap.get(xaSales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setXaSales(Integer.valueOf(row.getCell(colMap.get(xaSales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setXaSales(0);
                }
            }
            if (colMap.get(xaSales90) != null) {
                try {
                    row.getCell(colMap.get(xaSales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setXaSales(Integer.valueOf(row.getCell(colMap.get(xaSales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setXaSales(0);
                }
            }
            if (colMap.get(xaSales) != null) {
                try {
                    row.getCell(colMap.get(xaSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setXaSales(Integer.valueOf(row.getCell(colMap.get(xaSales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setXaSales(0);
                }
            }
            if (colMap.get(gaSales7) != null) {
                try {
                    row.getCell(colMap.get(gaSales7)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGaSales(Integer.valueOf(row.getCell(colMap.get(gaSales7)).getStringCellValue()));
                    product.setDays(7);
                } catch (NumberFormatException e) {
                    product.setGaSales(0);
                }
            }
            if (colMap.get(gaSales14) != null) {
                try {
                    row.getCell(colMap.get(gaSales14)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGaSales(Integer.valueOf(row.getCell(colMap.get(gaSales14)).getStringCellValue()));
                    product.setDays(14);
                } catch (NumberFormatException e) {
                    product.setGaSales(0);
                }
            }
            if (colMap.get(gaSales15) != null) {
                try {
                    row.getCell(colMap.get(gaSales15)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGaSales(Integer.valueOf(row.getCell(colMap.get(gaSales15)).getStringCellValue()));
                    product.setDays(15);
                } catch (NumberFormatException e) {
                    product.setGaSales(0);
                }
            }
            if (colMap.get(gaSales28) != null) {
                try {
                    row.getCell(colMap.get(gaSales28)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGaSales(Integer.valueOf(row.getCell(colMap.get(gaSales28)).getStringCellValue()));
                    product.setDays(28);
                } catch (NumberFormatException e) {
                    product.setGaSales(0);
                }
            }
            if (colMap.get(gaSales90) != null) {
                try {
                    row.getCell(colMap.get(gaSales90)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGaSales(Integer.valueOf(row.getCell(colMap.get(gaSales90)).getStringCellValue()));
                    product.setDays(90);
                } catch (NumberFormatException e) {
                    product.setGaSales(0);
                }
            }
            if (colMap.get(gaSales) != null) {
                try {
                    row.getCell(colMap.get(gaSales)).setCellType(Cell.CELL_TYPE_STRING);
                    product.setGaSales(Integer.valueOf(row.getCell(colMap.get(gaSales)).getStringCellValue()));
                    product.setDays(0);
                } catch (NumberFormatException e) {
                    product.setGaSales(0);
                }
            }
            products.add(product);
        }

        return products;
    }
}
