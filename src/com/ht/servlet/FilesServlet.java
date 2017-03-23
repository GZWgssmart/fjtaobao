package com.ht.servlet;

import com.ht.bean.Files;
import com.ht.bean.Product;
import com.ht.common.Constants;
import com.ht.common.Methods;
import com.ht.common.WebUtil;
import com.ht.common.bean.Pager4EasyUI;
import com.ht.common.util.ExcelReader;
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
import java.io.*;
import java.util.List;
import java.util.Map;

/**
 * Created by ArrayBin on 2017/3/17.
 */
public class FilesServlet extends HttpServlet {

    private FilesService filesService;
    private ProductService productService;
    private File excelFile;
    private String excelFileFileName;
    private ExcelWorkSheet<Product> excelWorkSheet;
    private String fileName; // 文件名
    private File file; // 用来保存上传的文件，file和表单file的name保持一致
    private String fileFileName; // 用来保存上传的文件名，表单的file+FileName
    private String filePath;
    private int total;
    private List<Files> rows;

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getFileFileName() {
        return fileFileName;
    }

    public void setFileFileName(String fileFileName) {
        this.fileFileName = fileFileName;
    }

    public FilesServlet() {
        excelWorkSheet = new ExcelWorkSheet<>();

        filesService = new FilesServiceImpl();
        productService = new ProductServiceImpl();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = WebUtil.getURIMethod(req);
        if (method.equals("aa")) {
            queryFiles(req, resp);
        } else if (method.equals("bb")) {
            addFiles(req, resp);
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

    private Workbook createWorkBook(InputStream is) throws IOException {

        if (excelFileFileName.toLowerCase().endsWith("xls")) {
            return new HSSFWorkbook(is);
        }

        if (excelFileFileName.toLowerCase().endsWith("xlsx")) {
        }

        return null;

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
                        } else if (fieldName.equals("fpath")) {
                            files.setfPath(fieldValue);
                        }
                    } else { // 否则为文件字段
                        System.out.printf("fsfsdfjsjfsjsjfdjsdf");
                        String newFileName = System.currentTimeMillis()+ ".xlsx";
                        String fileName = fileItem.getName();// 获取文件的名称
                        String prefix = fileName.substring(fileName.lastIndexOf(".") + 1);
                        String newFileName = System.currentTimeMillis() + "." + prefix;
                        // 需要获取图片数据，把图片保存到本地服务器的某个目录里，并把路径保存到数据库
                        // 1、获取图片数据
                        InputStream in = fileItem.getInputStream(); // 获取文件输入流

                        // 2、把图片数据保存到服务器的某个目录下
                        // new File(upload  + "/" + fileItem.getName())   上传的文件目录 + / + 文件名
                        if (fileName != null && !fileName.equals("")) {
                            filePath = Methods.getRootPath(req) + Methods.createNewFolder() + "\\" + newFileName;
                            FileUtils.copyInputStreamToFile(in, new File(filePath));
                            // 3、把文件的路径保存到数据库
                            files.setName(fileName);
                            files.setfPath(filePath);
                        }
                        System.out.printf("xc" + files.getfType());
                        System.out.printf(String.valueOf(files.getDays()) + "aaaa");
                        if (files.getfType().equals("xc")) {
                            inputExcel(filePath, req, files.getDays());
                        }

                    }
                }
                files.setfStatus(1);
                java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
                files.setCreateTime(currentDate);
                filesService.addFiles(files);
                req.getRequestDispatcher("/look.jsp").forward(req, resp);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        } else {
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


}
