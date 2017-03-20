package com.ht.common;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by ArrayBin on 2017/3/20.
 */
public class Methods {
    /**
     * 根据当前日期自动创建存放文件的文件夹
     * @return
     */
    public static String createNewFolder() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }


    /**
     * 给文件取新名字
     * @return
     */
    public static String createName(String fileName) {
        return String.valueOf(System.currentTimeMillis());
    }

}
