package com.ht.servlet;

import com.ht.bean.Files;
import com.ht.bean.Product;
import com.ht.common.Constants;
import com.ht.common.Methods;
import com.ht.common.WebUtil;
import com.ht.common.util.ExcelUtil;
import com.ht.common.util.ExcelWorkSheet;
import com.ht.dao.FilesDAO;
import com.ht.dao.FilesDAOImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by ArrayBin on 2017/3/17.
 */
public class FilesServlet extends HttpServlet {

    private FilesDAO filesDAO;
    private File excelFile;
    private String excelFileFileName;
    private ExcelWorkSheet<Product> excelWorkSheet;
    private String fileName; // 文件名
    private File file; // 用来保存上传的文件，file和表单file的name保持一致
    private String fileFileName; // 用来保存上传的文件名，表单的file+FileName

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
        filesDAO = new FilesDAOImpl();
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
        List<Files> files = filesDAO.queryAll();
        for (Files files1 : files) {
            System.out.printf(files1.getName() + "ssdfsddfdsdsfdsdf");
        }
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
            FileItemFactory fileItemFactory =  new DiskFileItemFactory(); // fileItemFactory对象用于创建与表单中input对应的FileItem对象
            ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
            fileUpload.setHeaderEncoding(Constants.DEFAULT_CODING);
            Files files = new Files();
            try {
                List<FileItem> fileItems = fileUpload.parseRequest(req);// 去解析request请求，把每一个FileItem获取到
                for (FileItem fileItem : fileItems) {
                    if (fileItem.isFormField()) { // 判断FileItem是否为普通的表单字段
                        String fieldName = fileItem.getFieldName();// 获取普通表单字段的name值
                        String fieldValue = fileItem.getString(Constants.DEFAULT_CODING);// 获取普通表单字段的value值
                        if (fieldName.equals("name")) {
                            files.setName(fieldValue);
                        } else if (fieldName.equals("days")){
                            int days = 0;
                            try{
                                days = Integer.valueOf(fieldValue);
                                files.setDays(days);
                            } catch (NumberFormatException e){
                            }
                        } else if(fieldName.equals("brand")){
                            files.setName(fieldValue);
                        } else if(fieldName.equals("ptype")){
                            files.setName(fieldValue);
                        } else if(fieldName.equals("pstatus")){
                            files.setName(fieldValue);
                        }  else if(fieldName.equals("ftype")){
                            files.setName(fieldValue);
                        }  else if(fieldName.equals("fpath")){
                            files.setName(fieldValue);
                        }
                    } else { // 否则为文件字段
                        System.out.printf("fsfsdfjsjfsjsjfdjsdf");
                        String newFileName = System.currentTimeMillis()+ ".xlsx";
                        String fileName = fileItem.getName();// 获取文件的名称
                        // 需要获取图片数据，把图片保存到本地服务器的某个目录里，并把路径保存到数据库
                        // 1、获取图片数据
                        InputStream in = fileItem.getInputStream(); // 获取文件输入流
                        // 2、把图片数据保存到服务器的某个目录下
                        String upload = WebUtil.mkUpload(req, "upload"); // 创建保存上传的文件的目录
                        // new File(upload  + "/" + fileItem.getName())   上传的文件目录 + / + 文件名
                        if(fileName != null && !fileName.equals("")) {
                            System.out.printf("alfslfdsfdlfsdlflfsd");
                            FileUtils.copyInputStreamToFile(in, new File(upload  + "/" +Methods.createNewFolder()+"/"+ newFileName));
                            // 3、把文件的路径保存到数据库
                            files.setfPath(Constants.PATH_UPLOAD+ "/" + Methods.createNewFolder() + "/"+newFileName);
                        }
                    }
                }
               req.getRequestDispatcher("").forward(req, resp);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        } else {
        }
    }

    /**
     * 用于新建文件夹来接收上传的文件
     */
    private void mkUpload() {
        File file = new File(Constants.PATH_UPLOAD +   Methods.createNewFolder() ); // 根据这个路径来创建一个文件夹
        if (!file.exists()) { // 判断文件夹是否存在
            file.mkdir(); // 创建文件夹，用于存放上传的文件
        }
    }


}
