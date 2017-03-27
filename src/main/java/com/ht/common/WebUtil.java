package com.ht.common;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

public class WebUtil {

	public static String DEFAULT_UPLOAD = "upload"; // 用来保存上传图片的文件目录
	public static String SON_FILE = "";

	/**
	 * 用来获取到url地址栏的最后一个字段
	 * @param req
	 * @return
	 */
	public static String getURIMethod(HttpServletRequest req) {
		String uri = req.getRequestURI();
		return uri.substring(uri.lastIndexOf("/") + 1);
	}




	/**
	 * 用来指定获取url地址栏的字段，index=1表示获取倒数第一个字段，index=2表示获取倒数第二个字段，用于分页技术
	 * @param req
	 * @param index
	 * @return
	 */
	public static String getURIMethod(HttpServletRequest req, int index) {
		String uri = req.getRequestURI();
		if (index == 1) {
			return uri.substring(uri.lastIndexOf("/") + 1);
		} else if (index == 2) {
			String newUri = uri.substring(0, uri.lastIndexOf("/"));
			return newUri = newUri.substring(newUri.lastIndexOf("/") + 1);
		} else {
			return uri;
		}
	}

}
