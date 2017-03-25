package com.ht.servlet;

import com.alibaba.fastjson.JSON;
import com.ht.bean.Files;
import com.ht.bean.Product;
import com.ht.bean.ProductInfo;
import com.ht.common.Constants;
import com.ht.common.Methods;
import com.ht.common.WebUtil;
import com.ht.common.bean.ControllerResult;
import com.ht.common.bean.Pager4EasyUI;
import com.ht.common.util.ExcelReader;
import com.ht.common.util.ExcelReader1;
import com.ht.common.util.ExcelReader2;
import com.ht.common.util.ExcelWorkSheet;
import com.ht.dao.FilesDAO;
import com.ht.dao.FilesDAOImpl;
import com.ht.service.FilesService;
import com.ht.service.FilesServiceImpl;
import com.ht.service.ProductService;
import com.ht.service.ProductServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;

/**
 * Created by ArrayBin on 2017/3/17.
 */
public class FilesServlet extends HttpServlet {

    private FilesService filesService;
    private ProductService productService;
    private int total;
    private List<Files> rows;

    private int days;
    private String city;
    private String ids;
    private String fType;
    private String days1;


    public FilesServlet() {
        filesService = new FilesServiceImpl();
        productService = new ProductServiceImpl();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = WebUtil.getURIMethod(req);
        if (method.equals("queryAll")) {
            queryFiles(req, resp);
        } else if (method.equals("addFile")) {
            addFiles(req, resp);
        } else if (method.equals("pager")) {
            searchFilePager(req, resp);
        } else if (method.equals("search")) {
            setCondition(req, resp);
        } else if (method.equals("pager1")) {
            searchProductPager(req, resp);
        } else if (method.equals("delete")) {
            deleteFiles(req, resp);
        }
    }

    private void queryFiles(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pageNoStr = req.getParameter("page");
        String pageSizeStr = req.getParameter("rows");
        Pager4EasyUI<Files> pager = new Pager4EasyUI<Files>();
        int a = 0;
        int b = 0;
        if (pageNoStr != null) {
            a = Integer.valueOf(pageNoStr);
            b = Integer.valueOf(pageSizeStr);
        }
        int c = (a - 1) * b;
        rows = filesService.queryAll(c, b);
        for (Files files : rows) {
            System.out.printf(files + "aadsassasssa");
        }
        total = filesService.count();
        req.getRequestDispatcher("/look.jsp").forward(req, resp);
    }



    private void addFiles(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean isMultipart = ServletFileUpload.isMultipartContent(req);
        if (isMultipart) {
            // 表示由jsp页面post的数据包含有文件内容
            FileItemFactory fileItemFactory = new DiskFileItemFactory(); // fileItemFactory对象用于创建与表单中input对应的FileItem对象
            ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
            fileUpload.setHeaderEncoding(Constants.DEFAULT_CODING);
            Files files = new Files();
            try {
                List<FileItem> fileItems = fileUpload.parseRequest(req);// 去解析request请求，把每一个FileItem获取到
                for (FileItem fileItem : fileItems) {
                    String fieldName;
                    String fieldValue;
                    if (fileItem.isFormField()) { // 判断FileItem是否为普通的表单字段
                        fieldName = fileItem.getFieldName();// 获取普通表单字段的name值
                        fieldValue = fileItem.getString(Constants.DEFAULT_CODING);// 获取普通表单字段的value值
                        if (fieldName.equals("days")) {
                            try {
                                int days = Integer.valueOf(fieldValue);
                                files.setDays(days);
                            } catch (NumberFormatException e) {
                            }
                        } else if (fieldName.equals("brand")) {
                            files.setBrand(fieldValue);
                        } else if (fieldName.equals("ptype")) {
                            files.setpType(fieldValue);
                        } else if (fieldName.equals("pstatus")) {
                            files.setpStatus(fieldValue);
                        } else if (fieldName.equals("ftype")) {
                            files.setfType(fieldValue);
                        }
                    } else { // 否则为文件字段
                        System.out.printf("aaaaaaaaaaaaa");
                        String fileName = fileItem.getName();// 获取文件的名称
                        String prefix = fileName.substring(fileName.lastIndexOf(".") + 1);
                        String newFileName = System.currentTimeMillis() + "." + prefix;
                        // 需要获取图片数据，把图片保存到本地服务器的某个目录里，并把路径保存到数据库
                        // 1、获取图片数据
                        InputStream in = fileItem.getInputStream(); // 获取文件输入流
                        String filePath = null;
                        // 2、把图片数据保存到服务器的某个目录下
                        // new File(upload  + "/" + fileItem.getName())   上传的文件目录 + / + 文件名
                        if (fileName != null && !fileName.equals("")) {

                            filePath = Methods.getRootPath(req) + Methods.createNewFolder() + "\\" + newFileName;
                            FileUtils.copyInputStreamToFile(in, new File(filePath));
                            // 3、把文件的路径保存到数据库
                            files.setName(fileName);
                            files.setfPath(filePath);
                        }
                        files.setFileNo(String.valueOf(System.currentTimeMillis()));
                        if (files.getfType().equals("xc")) {
                            inputExcel(filePath, req, files.getDays());
                        } else if (files.getfType().equals("dc")){
                            System.out.printf(files.getFileNo() + "mmmmmmmm");
                            inputExcel1(filePath, req, files.getFileNo());
                        }
                    }
                }
                files.setfStatus(1);
                java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
                files.setCreateTime(currentDate);
                filesService.addFiles(files);
                resp.sendRedirect("/look.jsp");
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        } else {
        }
    }

    public void inputExcel1(String path, HttpServletRequest req, String fileNo) {
            ExcelReader2 excelReader = new ExcelReader2();
            Files files = filesService.queryByFilesId(fileNo);
            System.out.printf(fileNo + "aaaaaaaaaaaa");
            List<Product> products = excelReader.readProducts1(path, req);
            for (Product p : products) {
                productService.addProduct(p);
            }
    }

    public void inputExcel(String url, HttpServletRequest req, int days) {
        try {
            ExcelReader excelReader = new ExcelReader();
            // 对读取Excel表格标题测试
            InputStream is = new FileInputStream(url);
            List<Product> products = excelReader.readProducts(is, req);
            for (Product p : products) {
                System.out.printf(days + "aaaaaa");
                p.setDays(days);

                productService.addProduct(p);
            }
        } catch (FileNotFoundException e) {
            System.out.println("未找到指定路径的文件!");
            e.printStackTrace();
        }
    }

    public void searchFilePager(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        int page = 1;
        int rows = 20;
        try {
            page = Integer.valueOf(req.getParameter("page"));
            rows = Integer.valueOf(req.getParameter("rows"));
        } catch (NumberFormatException e) {

        }
        Pager4EasyUI<Files> pager = new Pager4EasyUI<Files>();
        pager.setPageNo(page);
        pager.setPageSize(rows);
        pager = filesService.pager(pager);
        resp.setContentType("text/json;charset=utf-8");
        try {
            PrintWriter pw = resp.getWriter();
            pw.write(JSON.toJSONString(pager));
            pw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void setCondition(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        String daysStr = req.getParameter("days");
        String cityStr = req.getParameter("city");
        String idsStr = req.getParameter("ids");
        String fTypeStr = req.getParameter("fType");
        String days1Str = req.getParameter("days1");
        days = 28;
        city = "all";
        if (daysStr != null && !"".equals(daysStr) && cityStr != null && !"".equals(cityStr) && idsStr != null && !"".equals(idsStr)) {
            try {
                days = Integer.valueOf(daysStr);
                city = cityStr;
                ids = idsStr;
                fType = fTypeStr;
                days1 = days1Str;
            } catch (NumberFormatException e) {

            }
            if (city.equals("all")) {
                session.setAttribute("city", "全国");
            } else if (city.equals("bj")) {
                session.setAttribute("city", "北京");
            } else if (city.equals("sh")) {
                session.setAttribute("city", "上海");
            } else if (city.equals("gz")) {
                session.setAttribute("city", "广州");
            }  else if (city.equals("cd")) {
                session.setAttribute("city", "成都");
            } else if (city.equals("wh")) {
                session.setAttribute("city", "武汉");
            } else if (city.equals("sy")) {
                session.setAttribute("city", "沈阳");
            } else if (city.equals("xa")) {
                session.setAttribute("city", "西安");
            } else if (city.equals("ga")) {
                session.setAttribute("city", "固安");
            }
            resp.sendRedirect("/file_detail.jsp");
        } else {
            resp.sendRedirect("/look.jsp");
        }
    }

    private void searchProductPager(HttpServletRequest req, HttpServletResponse resp) {
        int page = 1;
        int rows = 20;
        try {
            page = Integer.valueOf(req.getParameter("page"));
            rows = Integer.valueOf(req.getParameter("rows"));
        } catch (NumberFormatException e) {

        }
        Pager4EasyUI<ProductInfo> pager = new Pager4EasyUI<ProductInfo>();
        pager.setPageNo(page);
        pager.setPageSize(rows);
        pager = productService.pager(pager, ids, fType, days1);
        List<ProductInfo> pis = pager.getRows();
        for (ProductInfo pi : pis) {
            double totalStockCount = pi.getTotalStock() * pi.getPrice();
            double totalSalesCount = pi.getTotalSales() * pi.getPrice();
            double turnoverDays = 0.0;
            double count = 0.0;

            if (city.equals("all")) {
                if (pi.getTotalStock() != 0 && pi.getTotalSales() != 0) {
                    turnoverDays = pi.getTotalStock() * 1.0 / pi.getTotalSales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getTotalSales(), pi.getDays());
                        count =  temp * days - pi.getTotalStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            } else if (city.equals("bj")) {
                if (pi.getBjStock() != 0 && pi.getBjSales() != 0) {
                    turnoverDays = pi.getBjStock() / pi.getBjSales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getBjSales(), pi.getDays());
                        count =  temp * days - pi.getBjStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            } else if (city.equals("sh")) {
                if (pi.getShStock() != 0 && pi.getShSales() != 0) {
                    turnoverDays = pi.getShStock() / pi.getShSales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getShSales(), pi.getDays());
                        count =  temp * days - pi.getShStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            } else if (city.equals("gz")) {
                if (pi.getGzStock() != 0 && pi.getGzSales() != 0) {
                    turnoverDays = pi.getGzStock() / pi.getGzSales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getGzSales(), pi.getDays());
                        count =  temp * days - pi.getGzStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            } else if (city.equals("cd")) {
                if (pi.getCdStock() != 0 && pi.getCdSales() != 0) {
                    turnoverDays = pi.getCdStock() / pi.getCdSales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getCdSales(), pi.getDays());
                        count =  temp * days - pi.getCdStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            } else if (city.equals("wh")) {
                if (pi.getWhStock() != 0 && pi.getWhSales() != 0) {
                    turnoverDays = pi.getWhStock() / pi.getWhSales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getWhSales(), pi.getDays());
                        count =  temp * days - pi.getWhStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            } else if (city.equals("sy")) {
                if (pi.getSyStock() != 0 && pi.getSySales() != 0) {
                    turnoverDays = pi.getSyStock() / pi.getSySales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getWhSales(), pi.getDays());
                        count =  temp * days - pi.getWhStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            } else if (city.equals("xa")) {
                if (pi.getXaStock() != 0 && pi.getXaSales() != 0) {
                    turnoverDays = pi.getXaStock() / pi.getXaSales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getXaSales(), pi.getDays());
                        count =  temp * days - pi.getXaStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            } else if (city.equals("ga")) {
                if (pi.getGaStock() != 0 && pi.getGaSales() != 0) {
                    turnoverDays = pi.getGzStock() / pi.getGaSales();
                    if (pi.getDays() != 0) {
                        double temp = Methods.division(pi.getGaSales(), pi.getDays());
                        count =  temp * days - pi.getGaStock();
                        if (count <= 0) {
                            count = 0;
                        }
                    }
                }
            }
            BigDecimal decimal = new BigDecimal(turnoverDays);
            turnoverDays = decimal.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue();
            pi.setTotalStockCount((int) totalStockCount);
            pi.setTotalSalesCount((int) totalSalesCount);
            pi.setTurnoverDays(turnoverDays);
            pi.setCount(Methods.division(count));
        }
        resp.setContentType("text/json;charset=utf-8");
        try {
            PrintWriter pw = resp.getWriter();
            pw.write(JSON.toJSONString(pager));
            pw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteFiles(HttpServletRequest req, HttpServletResponse resp) {
        String ids = req.getParameter("ids");
        boolean flag = true;
        if (ids != null && !"".equals(ids)) {
            filesService.deleteFileByIds(ids);
            flag = true;
        } else {
            flag = false;

        }
        resp.setContentType("text/json;charset=utf-8");
        try {
            PrintWriter pw = resp.getWriter();
            if (flag) {
                pw.write(JSON.toJSONString(ControllerResult.getSuccessResult("删除成功")));
            } else {
                pw.write(JSON.toJSONString(ControllerResult.getFailResult("删除文件失败，请选择你要删除的文件")));
            }
            pw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



}
