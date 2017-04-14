package com.ht.servlet;

import com.alibaba.fastjson.JSON;
import com.ht.bean.Files;
import com.ht.bean.MaxTable;
import com.ht.bean.Product;
import com.ht.bean.ProductInfo;
import com.ht.common.Methods;
import com.ht.common.WebUtil;
import com.ht.common.bean.ControllerResult;
import com.ht.common.bean.Pager4EasyUI;
import com.ht.common.util.*;
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
import sun.security.provider.MD5;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.*;

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


    public FilesServlet() {
        filesService = new FilesServiceImpl();
        productService = new ProductServiceImpl();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = WebUtil.getURIMethod(req);
        if (method.equals("login")) {
            login(req, resp);
        } else if (method.equals("returnHome")) {
            home(req, resp);
        } else if (method.equals("queryFilesPage")) {
            queryFilesPage(req, resp);
        } else if (method.equals("queryAll")) {
            queryFiles(req, resp);
        } else if (method.equals("addFilePage")) {
            addFilePage(req, resp);
        } else if (method.equals("addFile")) {
            addFiles(req, resp);
        } else if (method.equals("file1")) {
            file1(req, resp);
        } else if (method.equals("file2")) {
            file2(req, resp);
        } else if (method.equals("pager")) {
            searchFilePager(req, resp);
        } else if (method.equals("search")) {
            setCondition(req, resp);
        } else if (method.equals("pager1")) {
            searchProductPager(req, resp);
        } else if (method.equals("delete")) {
            deleteFiles(req, resp);
        } else if (method.equals("maxTable")) {
            maxTable(req, resp);
        } else if (method.equals("outSession")) {
            outSession(req, resp);
        }
    }


    public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String pwd = req.getParameter("pwd");
        String md5Pwd = EncryptUtil.md5Encrypt(pwd);
        if (name != null && !name.equals("") && pwd != null && !pwd.equals("")) {
            if (name.equals("root") && md5Pwd.equals(EncryptUtil.md5Encrypt("123456"))) {
                req.getSession().setAttribute("name", name);
                req.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(req, resp);
            } else {
                req.setAttribute("error", "你的账户密码错误，请重新输入");
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("error", "请输入你的账户密码");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }

    private void home(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("name") != null) {
            req.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }

    public void addFilePage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("name") != null) {
            req.getRequestDispatcher("/WEB-INF/views/upload.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }

    public void queryFilesPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("name") != null) {
            req.getRequestDispatcher("/WEB-INF/views/look.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }

    public void file1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("name") != null) {
            req.getRequestDispatcher("/WEB-INF/views/file_detail.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }

    public void file2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("name") != null) {
            req.getRequestDispatcher("/WEB-INF/views/file_detail1.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }

    public void outSession(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
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
        }
        total = filesService.count();
        req.getRequestDispatcher("/WEB-INF/views/look.jsp").forward(req, resp);
    }


    private void addFiles(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean isMultipart = ServletFileUpload.isMultipartContent(req);
        if (isMultipart) {
            // 表示由jsp页面post的数据包含有文件内容
            FileItemFactory fileItemFactory = new DiskFileItemFactory(); // fileItemFactory对象用于创建与表单中input对应的FileItem对象
            ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
            fileUpload.setHeaderEncoding(Methods.DEFAULT_CODING);
            Files files = new Files();
            try {
                List<FileItem> fileItems = fileUpload.parseRequest(req);// 去解析request请求，把每一个FileItem获取到
                for (FileItem fileItem : fileItems) {
                    String fieldName;
                    String fieldValue;
                    if (fileItem.isFormField()) { // 判断FileItem是否为普通的表单字段
                        fieldName = fileItem.getFieldName();// 获取普通表单字段的name值
                        fieldValue = fileItem.getString(Methods.DEFAULT_CODING);// 获取普通表单字段的value值
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

                    }
                }
                if (files.getfType().equals("xv")) {

                } else if (files.getfType().equals("dc")) {
                    files.setDays(0);
                }
                java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
                files.setCreateTime(currentDate);
                filesService.addFiles(files);
                if (files.getfType().equals("xc")) {
                    String prefix = files.getfPath().substring(files.getfPath().lastIndexOf(".") + 1);
                    inputExcel(files.getfPath(), req, files.getDays(), files.getFileNo(), prefix);
                } else if (files.getfType().equals("dc")) {
                    String prefix = files.getfPath().substring(files.getfPath().lastIndexOf(".") + 1);
                    inputExcel1(files.getfPath(), req, files.getFileNo(), prefix);
                }
                req.getRequestDispatcher("/WEB-INF/views/look.jsp").forward(req, resp);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        } else {
        }
    }

    public void inputExcel1(String path, HttpServletRequest req, String fileNo, String prefix) {
        ExcelReader2 excelReader = new ExcelReader2();
        ExcelReader3 excelReader1 = new ExcelReader3();
        if (prefix.equals("xlsx")) {
            Files files = filesService.queryByFilesId(fileNo);
            List<Product> products = excelReader.readProducts1(path, req);
            for (Product p : products) {
                p.setFileId(files.getId());
                productService.addProduct(p);
            }
        } else if (prefix.equals("xls")) {
            try {
                InputStream is = new FileInputStream(path);
                Files files = filesService.queryByFilesId(fileNo);
                List<Product> products = excelReader1.readProducts1(is, req);
                for (Product p : products) {
                    p.setFileId(files.getId());
                    productService.addProduct(p);
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }

    }

    public void inputExcel(String url, HttpServletRequest req, int days, String fileNo, String prefix) {
        try {
            ExcelReader excelReader = new ExcelReader();
            ExcelReader1 excelReader1 = new ExcelReader1();
            if (prefix.equals("xls")) {
                // 对读取Excel表格标题测试
                InputStream is = new FileInputStream(url);
                List<Product> products = excelReader.readProducts(is, req);
                Files files = filesService.queryByFilesId(fileNo);
                for (Product p : products) {
                    p.setDays(days);
                    p.setFileId(files.getId());
                    productService.addProduct(p);
                }
            } else if (prefix.equals("xlsx")) {
                List<Product> products = excelReader1.readProducts(url, req);
                Files files = filesService.queryByFilesId(fileNo);
                for (Product p : products) {
                    p.setDays(days);
                    p.setFileId(files.getId());
                    productService.addProduct(p);
                }
            } else if (prefix.equals("csv")) {

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


    private void setCondition(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        if (req.getSession().getAttribute("name") != null) {

            HttpSession session = req.getSession();
            resp.setCharacterEncoding("utf-8");
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
                } catch (NumberFormatException e) {

                }
                if (city.equals("all")) {
                    session.setAttribute("city", "all");
                } else if (city.equals("bj")) {
                    session.setAttribute("city", "bj");
                } else if (city.equals("sh")) {
                    session.setAttribute("city", "sh");
                } else if (city.equals("gz")) {
                    session.setAttribute("city", "gz");
                } else if (city.equals("cd")) {
                    session.setAttribute("city", "cd");
                } else if (city.equals("wh")) {
                    session.setAttribute("city", "wh");
                } else if (city.equals("sy")) {
                    session.setAttribute("city", "sy");
                } else if (city.equals("xa")) {
                    session.setAttribute("city", "xa");
                } else if (city.equals("ga")) {
                    session.setAttribute("city", "ga");
                }
                session.setAttribute("days", days);

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
                pager = productService.pager(pager, ids, fType);
                List<ProductInfo> pis = pager.getRows();
                List<MaxTable> mts = new ArrayList<MaxTable>();

                for (ProductInfo pi : pis) {
                    MaxTable mt = new MaxTable();
                    mt.setProductNo(pi.getProductNo());
                    int idx = mts.indexOf(mt);
                    if (idx >= 0) {
                        mt = mts.get(idx);
                    } else {
                        mts.add(mt);
                    }

                    int bjSales = pi.getBjSales();
                    int bjStock = pi.getBjStock();
                    int shSales = pi.getShSales();
                    int shStock = pi.getShStock();
                    int gzSales = pi.getGzSales();
                    int gzStock = pi.getGzStock();
                    int cdSales = pi.getCdSales();
                    int cdStock = pi.getCdStock();
                    int whSales = pi.getWhSales();
                    int whStock = pi.getWhStock();
                    int sySales = pi.getSySales();
                    int syStock = pi.getSyStock();
                    int xaSales = pi.getXaSales();
                    int xaStock = pi.getXaStock();
                    int gaSales = pi.getGaSales();
                    int gaStock = pi.getGaStock();

                    int cycle = pi.getDays();

                    mt.setId(pi.getId());
                    mt.setName(pi.getName());
                    mt.setBrand(pi.getBrand());
                    mt.setStatus(pi.getStatus());
                    mt.setPrice(pi.getPrice());
                    if (pi.getTotalStock() > mt.getTotalStock()) {
                        mt.setTotalStock(pi.getTotalStock());
                    }
                    if (pi.getTotalSales() > mt.getTotalSales()) {
                        mt.setTotalSales(pi.getTotalSales());
                    }

                    if (bjStock > mt.getBjStock()) {
                        mt.setBjStock(bjStock);
                    }
                    if (shStock > mt.getShStock()) {
                        mt.setShStock(shStock);
                    }
                    if (gzStock > mt.getGzStock()) {
                        mt.setGzStock(gzStock);
                    }
                    if (cdStock > mt.getCdStock()) {
                        mt.setCdStock(cdStock);
                    }
                    if (whStock > mt.getWhStock()) {
                        mt.setWhStock(whStock);
                    }
                    if (syStock > mt.getSyStock()) {
                        mt.setSyStock(syStock);
                    }
                    if (xaStock > mt.getXaStock()) {
                        mt.setXaStock(xaStock);
                    }
                    if (gaStock > mt.getGaStock()) {
                        mt.setGaStock(gaStock);
                    }

                    setSales(mt, cycle, bjSales, shSales, gzSales, cdSales, whSales, sySales, xaSales, gaSales);


                }


                int flagSales1 = 0;
                int flagSales2 = 0;
                int flagSales3 = 0;
                int flagSales4 = 0;
                int flagSales5 = 0;
                int flagSales6 = 0;
                int flagSales7 = 0;
                int flagSales8 = 0;
                int flagSales9 = 0;
                int flagSales10 = 0;
                int flagSales11 = 0;
                int flagSales12 = 0;
                int flagSales13 = 0;
                int flagSales14 = 0;
                int flagSales15 = 0;
                int flagSales16 = 0;
                int flagSales17 = 0;
                int flagSales18 = 0;
                int flagSales19 = 0;
                int flagSales20 = 0;
                int flagSales21 = 0;
                int flagSales22 = 0;
                int flagSales23 = 0;
                int flagSales24 = 0;
                int flagSales25 = 0;
                int flagSales26 = 0;
                int flagSales27 = 0;
                int flagSales28 = 0;
                int flagSales29 = 0;
                int flagSales30 = 0;
                int flagSales31 = 0;
                int flagSales90 = 0;

                List<Integer> salesList = new ArrayList<Integer>();
                for (MaxTable m : mts) {
                    if (m.getBjSales1() != 0) {
                        if (flagSales1 == 0) {
                            flagSales1 = 1;
                            salesList.add(1);
                        }
                    }
                    if (m.getBjSales2() != 0) {
                        if (flagSales2 == 0) {
                            flagSales2 = 1;
                            salesList.add(2);
                        }
                    }
                    if (m.getBjSales3() != 0) {
                        if (flagSales3 == 0) {
                            flagSales3 = 1;
                            salesList.add(3);
                        }
                    }
                    if (m.getBjSales4() != 0) {
                        if (flagSales4 == 0) {
                            flagSales4 = 1;
                            salesList.add(4);
                        }
                    }
                    if (m.getBjSales5() != 0) {
                        if (flagSales5 == 0) {
                            flagSales5 = 1;
                            salesList.add(5);
                        }
                    }
                    if (m.getBjSales6() != 0) {
                        if (flagSales6 == 0) {
                            flagSales6 = 1;
                            salesList.add(6);
                        }
                    }
                    if (m.getBjSales7() != 0) {
                        if (flagSales7 == 0) {
                            flagSales7 = 1;
                            salesList.add(7);
                        }
                    }
                    if (m.getBjSales8() != 0) {
                        if (flagSales8 == 0) {
                            flagSales8 = 1;
                            salesList.add(8);
                        }
                    }
                    if (m.getBjSales9() != 0) {
                        if (flagSales9 == 0) {
                            flagSales9 = 1;
                            salesList.add(9);
                        }
                    }
                    if (m.getBjSales10() != 0) {
                        if (flagSales10 == 0) {
                            flagSales10 = 1;
                            salesList.add(10);
                        }
                    }
                    if (m.getBjSales11() != 0) {
                        if (flagSales11 == 0) {
                            flagSales11 = 1;
                            salesList.add(11);
                        }
                    }
                    if (m.getBjSales12() != 0) {
                        if (flagSales12 == 0) {
                            flagSales12 = 1;
                            salesList.add(12);
                        }
                    }
                    if (m.getBjSales13() != 0) {
                        if (flagSales13 == 0) {
                            flagSales13 = 1;
                            salesList.add(13);
                        }
                    }
                    if (m.getBjSales14() != 0) {
                        if (flagSales14 == 0) {
                            flagSales14 = 1;
                            salesList.add(14);
                        }
                    }
                    if (m.getBjSales15() != 0) {
                        if (flagSales15 == 0) {
                            flagSales15 = 1;
                            salesList.add(15);
                        }
                    }
                    if (m.getBjSales16() != 0) {
                        if (flagSales16 == 0) {
                            flagSales16 = 1;
                            salesList.add(16);
                        }
                    }
                    if (m.getBjSales17() != 0) {
                        if (flagSales17 == 0) {
                            flagSales17 = 1;
                            salesList.add(17);
                        }
                    }
                    if (m.getBjSales18() != 0) {
                        if (flagSales18 == 0) {
                            flagSales18 = 1;
                            salesList.add(18);
                        }
                    }
                    if (m.getBjSales19() != 0) {
                        if (flagSales19 == 0) {
                            flagSales19 = 1;
                            salesList.add(19);
                        }
                    }
                    if (m.getBjSales20() != 0) {
                        if (flagSales20 == 0) {
                            flagSales20 = 1;
                            salesList.add(20);
                        }
                    }
                    if (m.getBjSales21() != 0) {
                        if (flagSales21 == 0) {
                            flagSales21 = 1;
                            salesList.add(21);
                        }
                    }
                    if (m.getBjSales22() != 0) {
                        if (flagSales22 == 0) {
                            flagSales22 = 1;
                            salesList.add(22);
                        }
                    }
                    if (m.getBjSales23() != 0) {
                        if (flagSales23 == 0) {
                            flagSales23 = 1;
                            salesList.add(23);
                        }
                    }
                    if (m.getBjSales24() != 0) {
                        if (flagSales24 == 0) {
                            flagSales24 = 1;
                            salesList.add(24);
                        }
                    }
                    if (m.getBjSales25() != 0) {
                        if (flagSales25 == 0) {
                            flagSales25 = 1;
                            salesList.add(25);
                        }
                    }
                    if (m.getBjSales26() != 0) {
                        if (flagSales26 == 0) {
                            flagSales26 = 1;
                            salesList.add(26);
                        }
                    }
                    if (m.getBjSales27() != 0) {
                        if (flagSales27 == 0) {
                            flagSales27 = 1;
                            salesList.add(27);
                        }
                    }
                    if (m.getBjSales28() != 0) {
                        if (flagSales28 == 0) {
                            flagSales28 = 1;
                            salesList.add(28);
                        }
                    }
                    if (m.getBjSales29() != 0) {
                        if (flagSales29 == 0) {
                            flagSales29 = 1;
                            salesList.add(29);
                        }
                    }
                    if (m.getBjSales30() != 0) {
                        if (flagSales30 == 0) {
                            flagSales30 = 1;
                            salesList.add(30);
                        }
                    }
                    if (m.getBjSales31() != 0) {
                        if (flagSales31 == 0) {
                            flagSales31 = 1;
                            salesList.add(31);
                        }
                    }
                    if (m.getBjSales90() != 0) {
                        if (flagSales90 == 0) {
                            flagSales90 = 1;
                            salesList.add(90);
                        }
                    }
                }
                Collections.sort(salesList);
                session.setAttribute("salesList", salesList);
                req.getRequestDispatcher("/WEB-INF/views/file_detail1.jsp").forward(req,resp);
            } else {
                req.getRequestDispatcher("/WEB-INF/views/look.jsp").forward(req,resp);
            }
        } else{
            req.getRequestDispatcher("/index.jsp").forward(req,resp);
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
        pager = productService.pager(pager, ids, fType);
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
                        count = temp * days - pi.getTotalStock();
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
                        count = temp * days - pi.getBjStock();
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
                        count = temp * days - pi.getShStock();
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
                        count = temp * days - pi.getGzStock();
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
                        count = temp * days - pi.getCdStock();
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
                        count = temp * days - pi.getWhStock();
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
                        count = temp * days - pi.getWhStock();
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
                        count = temp * days - pi.getXaStock();
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
                        count = temp * days - pi.getGaStock();
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

    private void maxTable(HttpServletRequest req, HttpServletResponse resp) {
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
        pager = productService.pager(pager, ids, fType);
        List<ProductInfo> pis = pager.getRows();
        List<MaxTable> mts = new ArrayList<MaxTable>();

        for (ProductInfo pi : pis) {
            MaxTable mt = new MaxTable();
            mt.setProductNo(pi.getProductNo());
            int idx = mts.indexOf(mt);
            if (idx >= 0) {
                mt = mts.get(idx);
            } else {
                mts.add(mt);
            }

            int bjSales = pi.getBjSales();
            int bjStock = pi.getBjStock();
            int shSales = pi.getShSales();
            int shStock = pi.getShStock();
            int gzSales = pi.getGzSales();
            int gzStock = pi.getGzStock();
            int cdSales = pi.getCdSales();
            int cdStock = pi.getCdStock();
            int whSales = pi.getWhSales();
            int whStock = pi.getWhStock();
            int sySales = pi.getSySales();
            int syStock = pi.getSyStock();
            int xaSales = pi.getXaSales();
            int xaStock = pi.getXaStock();
            int gaSales = pi.getGaSales();
            int gaStock = pi.getGaStock();

            int cycle = pi.getDays();

            mt.setId(pi.getId());
            mt.setName(pi.getName());
            mt.setBrand(pi.getBrand());
            mt.setStatus(pi.getStatus());
            mt.setPrice(pi.getPrice());
            if (pi.getTotalStock() > mt.getTotalStock()) {
                mt.setTotalStock(pi.getTotalStock());
            }
            if (cycle == 28) {
                if (pi.getTotalSales() > mt.getTotalSales()) {
                    mt.setTotalSales(pi.getTotalSales());
                }
            }

            if (bjStock > mt.getBjStock()) {
                mt.setBjStock(bjStock);
            }
            if (shStock > mt.getShStock()) {
                mt.setShStock(shStock);
            }
            if (gzStock > mt.getGzStock()) {
                mt.setGzStock(gzStock);
            }
            if (cdStock > mt.getCdStock()) {
                mt.setCdStock(cdStock);
            }
            if (whStock > mt.getWhStock()) {
                mt.setWhStock(whStock);
            }
            if (syStock > mt.getSyStock()) {
                mt.setSyStock(syStock);
            }
            if (xaStock > mt.getXaStock()) {
                mt.setXaStock(xaStock);
            }
            if (gaStock > mt.getGaStock()) {
                mt.setGaStock(gaStock);
            }

            setSales(mt, cycle, bjSales, shSales, gzSales, cdSales, whSales, sySales, xaSales, gaSales);

        }
        Pager4EasyUI<MaxTable> pager1 = new Pager4EasyUI<MaxTable>();
        pager1.setTotal(mts.size());
        pager1.setRows(mts);
        resp.setContentType("text/json:charset=utf-8");
        try {
            PrintWriter pw = resp.getWriter();
            pw.write(JSON.toJSONString(pager1));
            pw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void setSales(MaxTable mt, int cycle, int bjSales, int shSales, int gzSales, int cdSales, int whSales, int sySales, int xaSales, int gaSales) {
        if (cycle == 1) {
            if (bjSales != 0) {
                mt.setBjSales1(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales1(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales1(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales1(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales1(whSales);
            }
            if (sySales != 0) {
                mt.setSySales1(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales1(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales1(gaSales);
            }
        } else if (cycle == 2) {
            if (bjSales != 0) {
                mt.setBjSales2(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales2(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales2(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales2(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales2(whSales);
            }
            if (sySales != 0) {
                mt.setSySales2(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales2(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales2(gaSales);
            }
        } else if (cycle == 3) {
            if (bjSales != 0) {
                mt.setBjSales3(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales3(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales3(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales3(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales3(whSales);
            }
            if (sySales != 0) {
                mt.setSySales3(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales3(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales3(gaSales);
            }
        } else if (cycle == 4) {
            if (bjSales != 0) {
                mt.setBjSales4(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales4(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales4(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales4(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales4(whSales);
            }
            if (sySales != 0) {
                mt.setSySales4(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales4(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales4(gaSales);
            }
        } else if (cycle == 5) {
            if (bjSales != 0) {
                mt.setBjSales5(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales5(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales5(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales5(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales5(whSales);
            }
            if (sySales != 0) {
                mt.setSySales5(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales5(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales5(gaSales);
            }
        } else if (cycle == 6) {
            if (bjSales != 0) {
                mt.setBjSales6(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales6(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales6(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales6(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales6(whSales);
            }
            if (sySales != 0) {
                mt.setSySales6(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales6(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales6(gaSales);
            }
        } else if (cycle == 7) {
            if (bjSales != 0) {
                mt.setBjSales7(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales7(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales7(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales7(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales7(whSales);
            }
            if (sySales != 0) {
                mt.setSySales7(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales7(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales7(gaSales);
            }
        } else if (cycle == 8) {
            if (bjSales != 0) {
                mt.setBjSales8(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales8(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales8(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales8(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales8(whSales);
            }
            if (sySales != 0) {
                mt.setSySales8(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales8(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales8(gaSales);
            }
        } else if (cycle == 9) {
            if (bjSales != 0) {
                mt.setBjSales9(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales9(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales9(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales9(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales9(whSales);
            }
            if (sySales != 0) {
                mt.setSySales9(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales9(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales9(gaSales);
            }
        } else if (cycle == 10) {
            if (bjSales != 0) {
                mt.setBjSales10(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales10(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales10(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales10(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales10(whSales);
            }
            if (sySales != 0) {
                mt.setSySales10(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales10(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales10(gaSales);
            }
        } else if (cycle == 11) {
            if (bjSales != 0) {
                mt.setBjSales11(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales11(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales11(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales11(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales11(whSales);
            }
            if (sySales != 0) {
                mt.setSySales11(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales11(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales11(gaSales);
            }
        } else if (cycle == 12) {
            if (bjSales != 0) {
                mt.setBjSales12(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales12(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales12(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales12(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales12(whSales);
            }
            if (sySales != 0) {
                mt.setSySales12(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales12(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales12(gaSales);
            }
        } else if (cycle == 13) {
            if (bjSales != 0) {
                mt.setBjSales13(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales13(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales13(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales13(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales13(whSales);
            }
            if (sySales != 0) {
                mt.setSySales13(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales13(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales13(gaSales);
            }
        } else if (cycle == 14) {
            if (bjSales != 0) {
                mt.setBjSales14(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales14(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales14(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales14(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales14(whSales);
            }
            if (sySales != 0) {
                mt.setSySales14(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales14(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales14(gaSales);
            }
        } else if (cycle == 15) {
            if (bjSales != 0) {
                mt.setBjSales15(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales15(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales15(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales15(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales15(whSales);
            }
            if (sySales != 0) {
                mt.setSySales15(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales15(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales15(gaSales);
            }
        } else if (cycle == 16) {
            if (bjSales != 0) {
                mt.setBjSales16(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales16(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales16(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales16(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales16(whSales);
            }
            if (sySales != 0) {
                mt.setSySales16(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales16(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales16(gaSales);
            }
        } else if (cycle == 17) {
            if (bjSales != 0) {
                mt.setBjSales17(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales17(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales17(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales17(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales17(whSales);
            }
            if (sySales != 0) {
                mt.setSySales17(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales17(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales17(gaSales);
            }
        } else if (cycle == 18) {
            if (bjSales != 0) {
                mt.setBjSales18(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales18(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales18(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales18(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales18(whSales);
            }
            if (sySales != 0) {
                mt.setSySales18(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales18(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales18(gaSales);
            }
        } else if (cycle == 19) {
            if (bjSales != 0) {
                mt.setBjSales19(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales19(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales19(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales19(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales19(whSales);
            }
            if (sySales != 0) {
                mt.setSySales19(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales19(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales19(gaSales);
            }
        } else if (cycle == 20) {
            if (bjSales != 0) {
                mt.setBjSales20(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales20(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales20(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales20(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales20(whSales);
            }
            if (sySales != 0) {
                mt.setSySales20(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales20(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales20(gaSales);
            }
        } else if (cycle == 21) {
            if (bjSales != 0) {
                mt.setBjSales21(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales21(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales21(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales21(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales21(whSales);
            }
            if (sySales != 0) {
                mt.setSySales21(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales21(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales21(gaSales);
            }
        } else if (cycle == 22) {
            if (bjSales != 0) {
                mt.setBjSales22(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales22(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales22(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales22(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales22(whSales);
            }
            if (sySales != 0) {
                mt.setSySales22(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales22(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales22(gaSales);
            }
        } else if (cycle == 23) {
            if (bjSales != 0) {
                mt.setBjSales23(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales23(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales23(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales23(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales23(whSales);
            }
            if (sySales != 0) {
                mt.setSySales23(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales23(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales23(gaSales);
            }
        } else if (cycle == 24) {
            if (bjSales != 0) {
                mt.setBjSales24(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales24(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales24(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales24(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales24(whSales);
            }
            if (sySales != 0) {
                mt.setSySales24(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales24(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales24(gaSales);
            }
        } else if (cycle == 25) {
            if (bjSales != 0) {
                mt.setBjSales25(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales25(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales25(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales25(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales25(whSales);
            }
            if (sySales != 0) {
                mt.setSySales25(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales25(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales25(gaSales);
            }
        } else if (cycle == 26) {
            if (bjSales != 0) {
                mt.setBjSales26(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales26(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales26(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales26(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales26(whSales);
            }
            if (sySales != 0) {
                mt.setSySales26(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales26(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales26(gaSales);
            }
        } else if (cycle == 27) {
            if (bjSales != 0) {
                mt.setBjSales27(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales27(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales27(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales27(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales27(whSales);
            }
            if (sySales != 0) {
                mt.setSySales27(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales27(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales27(gaSales);
            }
        } else if (cycle == 28) {
            if (bjSales != 0) {
                mt.setBjSales28(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales28(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales28(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales28(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales28(whSales);
            }
            if (sySales != 0) {
                mt.setSySales28(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales28(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales28(gaSales);
            }
        } else if (cycle == 29) {
            if (bjSales != 0) {
                mt.setBjSales29(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales29(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales29(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales29(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales29(whSales);
            }
            if (sySales != 0) {
                mt.setSySales29(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales29(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales29(gaSales);
            }
        } else if (cycle == 30) {
            if (bjSales != 0) {
                mt.setBjSales30(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales30(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales30(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales30(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales30(whSales);
            }
            if (sySales != 0) {
                mt.setSySales30(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales30(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales30(gaSales);
            }
        } else if (cycle == 31) {
            if (bjSales != 0) {
                mt.setBjSales31(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales31(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales31(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales31(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales31(whSales);
            }
            if (sySales != 0) {
                mt.setSySales31(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales31(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales31(gaSales);
            }
        } else if (cycle == 90) {
            if (bjSales != 0) {
                mt.setBjSales90(bjSales);
            }
            if (shSales != 0) {
                mt.setShSales90(shSales);
            }
            if (gzSales != 0) {
                mt.setGzSales90(gzSales);
            }
            if (cdSales != 0) {
                mt.setCdSales90(cdSales);
            }
            if (whSales != 0) {
                mt.setWhSales90(whSales);
            }
            if (sySales != 0) {
                mt.setSySales90(sySales);
            }
            if (xaSales != 0) {
                mt.setXaSales90(xaSales);
            }
            if (gaSales != 0) {
                mt.setGaSales90(gaSales);
            }
        }
    }


}
