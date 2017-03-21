package com.ht.common.tool;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * @author TXQ
 */

public class ImportExcelUtil {

    // 导入Excel
    public List<ArrayList<ArrayList<Object>>> ImportExcel(String excelName) {
        List<ArrayList<ArrayList<Object>>> resList = new ArrayList<ArrayList<ArrayList<Object>>>();
        if (excelName.substring(excelName.lastIndexOf(".")).equals(".xls")) {
            resList = this.ImportExcel2003(excelName);
        }
        if (excelName.substring(excelName.lastIndexOf(".")).equals(".xlsx")) {
            resList = this.ImportExcel2010(excelName);
        }
        // 返回List给Dao插入数据库
        System.out.println(excelName);
        new File(excelName).delete();
        return resList;
    }

    /**
     * 获取最长的行 cellsTotal
     */
    public int getCellTotal(String excelName, int sheetTotal) {
        FileInputStream ipts;
        int cellTotal = 0;
        try {
            // 2007 获得最长的行
            if (excelName.substring(excelName.lastIndexOf(".")).equals(".xls")) {
                ipts = new FileInputStream(excelName);
                HSSFWorkbook hswk = new HSSFWorkbook(ipts);
                for (int j = 0; j <= hswk.getSheetAt(sheetTotal).getLastRowNum(); j++) {
                    if (null != hswk.getSheetAt(sheetTotal).getRow(j)) {
                        System.out.println(hswk.getSheetAt(sheetTotal).getRow(j).getLastCellNum());
                        if (hswk.getSheetAt(sheetTotal).getRow(j).getLastCellNum() > cellTotal) {
                            cellTotal = hswk.getSheetAt(sheetTotal).getRow(j)
                                    .getLastCellNum();
                        }
                    }
                }

            }
            // 2010 获得最长的行

            if (excelName.substring(excelName.lastIndexOf(".")).equals(".xlsx")) {
                ipts = new FileInputStream(excelName);
                XSSFWorkbook xswk = new XSSFWorkbook(ipts);
                for (int j = 0; j <= xswk.getSheetAt(sheetTotal).getLastRowNum(); j++) {
                    if (null != xswk.getSheetAt(sheetTotal).getRow(j)) {
                        System.out.println(xswk.getSheetAt(sheetTotal).getRow(j).getLastCellNum());
                        if (xswk.getSheetAt(sheetTotal).getRow(j).getLastCellNum() > cellTotal) {
                            cellTotal = xswk.getSheetAt(sheetTotal).getRow(j)
                                    .getLastCellNum();
                        }
                    }
                }
            }
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return cellTotal;
    }

    /**
     * Offce2007及以下版本
     */
    public List<ArrayList<ArrayList<Object>>> ImportExcel2003(String excelName) {
        List<ArrayList<ArrayList<Object>>> sheetList = new ArrayList<ArrayList<ArrayList<Object>>>();
        try {
            FileInputStream ipts = new FileInputStream(excelName);
            HSSFWorkbook hswk = new HSSFWorkbook(ipts);
            // 循环取出sheet
            int sheetTotal = hswk.getNumberOfSheets();
            for (int i = 0; i < sheetTotal; i++) {
                HSSFSheet xss = hswk.getSheetAt(i);
                if (null == xss) {
                    continue;
                } else {
                    int rowTotal = xss.getLastRowNum();
                    int cellTotal = this.getCellTotal(excelName, i);
                    // 循环取出行
                    ArrayList<ArrayList<Object>> rowList = new ArrayList<ArrayList<Object>>();
                    for (int j = 0; j <= rowTotal; j++) {
                        HSSFRow xsr = xss.getRow(j);
                        if (null == xsr) {
                            continue;
                        } else {
                            ArrayList<Object> cellList = new ArrayList<Object>();
                            for (int k = 0; k < cellTotal; k++) {
                                HSSFCell xsc = xsr.getCell(k);
                                // if
                                // ((Cell.CELL_TYPE_BLANK)==xsc.getCellType()) {
                                // cellList.add("");
                                // }
                                //
                                // if
                                // ((Cell.CELL_TYPE_STRING)==xsc.getCellType())
                                // {
                                cellList.add(xsc);
                                // }
                                //
                                // if
                                // ((Cell.CELL_TYPE_NUMERIC)==xsc.getCellType())
                                // {
                                // cellList.add(xsc + "");
                                // }

                            }
                            rowList.add(cellList);
                        }

                    }
                    sheetList.add(rowList);
                }
            }
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(sheetList.get(0).get(0).toString());
        return sheetList;
    }

    /**
     * office2010
     */
    public List<ArrayList<ArrayList<Object>>> ImportExcel2010(String excelName) {
        List<ArrayList<ArrayList<Object>>> sheetList = new ArrayList<ArrayList<ArrayList<Object>>>();
        try {
            FileInputStream ipts = new FileInputStream(excelName);
            XSSFWorkbook xswk = new XSSFWorkbook(ipts);
            // 循环取出sheet
            int sheetTotal = xswk.getNumberOfSheets();
            for (int i = 0; i < sheetTotal; i++) {
                XSSFSheet xss = xswk.getSheetAt(i);
                if (null == xss) {
                    continue;
                } else {
                    int rowTotal = xss.getLastRowNum();
                    int cellTotal = this.getCellTotal(excelName, i);
                    System.out.println("cellTotal=" + cellTotal);
                    // 循环取出行
                    ArrayList<ArrayList<Object>> rowList = new ArrayList<ArrayList<Object>>();
                    for (int j = 0; j <= rowTotal; j++) {
                        XSSFRow xsr = xss.getRow(j);
                        if (null == xsr) {
                            continue;
                        } else {
                            ArrayList<Object> cellList = new ArrayList<Object>();
                            for (int k = 0; k < cellTotal; k++) {
                                XSSFCell xsc = xsr.getCell(k);
                                cellList.add(xsc);
                            }
                            rowList.add(cellList);
                        }
                    }
                    sheetList.add(rowList);
                }
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        for (int i = 0; i < sheetList.size(); i++) {
            for (int j = 0; j < sheetList.get(i).size(); j++) {
                System.out.println(sheetList.get(i).get(j).toString());
            }
        }
        return sheetList;
    }
}