package com.ht.test;

/**
 * Created by Administrator on 2017/3/31.
 */
public class test {
    public static void main(String[] args) {
        for (int i = 1; i < 32; i++) {

            // FilesServlet
            /*System.out.println("else if (cycle == " + i + ") {");
            System.out.println("if (bjSales != 0) {");
            System.out.println("mt.setBjSales" + i + "(bjSales);");
            System.out.println("}");
            System.out.println("if (shSales != 0) {");
            System.out.println("mt.setShSales" + i + "(shSales);");
            System.out.println("}");
            System.out.println("if (gzSales != 0) {");
            System.out.println("mt.setGzSales" + i + "(gzSales);");
            System.out.println("}");
            System.out.println("if (cdSales != 0) {");
            System.out.println("mt.setCdSales" + i + "(cdSales);");
            System.out.println("}");
            System.out.println("if (whSales != 0) {");
            System.out.println("mt.setWhSales" + i + "(whSales);");
            System.out.println("}");
            System.out.println("if (sySales != 0) {");
            System.out.println("mt.setSySales" + i + "(sySales);");
            System.out.println("}");
            System.out.println("if (xaSales != 0) {");
            System.out.println("mt.setXaSales" + i + "(xaSales);");
            System.out.println("}");
            System.out.println("if (gaSales != 0) {");
            System.out.println("mt.setGaSales" + i + "(gaSales);");
            System.out.println("}");
            System.out.println("}");*/

            // 属性
//            System.out.println("private int bjSales" + i + ";");
//            System.out.println("private int shSales" + i + ";");
//            System.out.println("private int gzSales" + i + ";");
//            System.out.println("private int cdSales" + i + ";");
//            System.out.println("private int whSales" + i + ";");
//            System.out.println("private int sySales" + i + ";");
//            System.out.println("private int xaSales" + i + ";");
//            System.out.println("private int gaSales" + i + ";");

            // 页面
            // 北京
//            System.out.println("<c:if test=\"${mt == " + i + "}\">");
//            System.out.println("<th data-options=\"field:'bjSales" + i + "',width:100,align:'center'\">北京" + i + "天销量</th>");
//            System.out.println("<th data-options=\"field:'bjTurnoverDays" + i + "',width:100,align:'center'\" formatter=\"bjTurnoverDays" + i + "\">北京" + i + "天周转天数</th>");
//            System.out.println("<th data-options=\"field:'bjCount" + i + "',width:200,align:'center'\" formatter=\"bjCount" + i + "\">北京" + i + "天补货数【补${sessionScope.days}天】</th>");
//            System.out.println("</c:if>");

            // 上海
//            System.out.println("<c:if test=\"${mt == " + i + "}\">");
//            System.out.println("<th data-options=\"field:'shSales" + i + "',width:100,align:'center'\">上海" + i + "天销量</th>");
//            System.out.println("<th data-options=\"field:'shTurnoverDays" + i + "',width:100,align:'center'\" formatter=\"shTurnoverDays" + i + "\">上海" + i + "天周转天数</th>");
//            System.out.println("<th data-options=\"field:'shCount" + i + "',width:200,align:'center'\" formatter=\"shCount" + i + "\">上海" + i + "天补货数【补${sessionScope.days}天】</th>");
//            System.out.println("</c:if>");

            // 广州
//            System.out.println("<c:if test=\"${mt == " + i + "}\">");
//            System.out.println("<th data-options=\"field:'gzSales" + i + "',width:100,align:'center'\">广州" + i + "天销量</th>");
//            System.out.println("<th data-options=\"field:'gzTurnoverDays" + i + "',width:100,align:'center'\" formatter=\"gzTurnoverDays" + i + "\">广州" + i + "天周转天数</th>");
//            System.out.println("<th data-options=\"field:'gzCount" + i + "',width:200,align:'center'\" formatter=\"gzCount" + i + "\">广州" + i + "天补货数【补${sessionScope.days}天】</th>");
//            System.out.println("</c:if>");

            // 成都
//            System.out.println("<c:if test=\"${mt == " + i + "}\">");
//            System.out.println("<th data-options=\"field:'cdSales" + i + "',width:100,align:'center'\">成都" + i + "天销量</th>");
//            System.out.println("<th data-options=\"field:'cdTurnoverDays" + i + "',width:100,align:'center'\" formatter=\"cdTurnoverDays" + i + "\">成都" + i + "天周转天数</th>");
//            System.out.println("<th data-options=\"field:'cdCount" + i + "',width:200,align:'center'\" formatter=\"cdCount" + i + "\">成都" + i + "天补货数【补${sessionScope.days}天】</th>");
//            System.out.println("</c:if>");

            // 武汉
//            System.out.println("<c:if test=\"${mt == " + i + "}\">");
//            System.out.println("<th data-options=\"field:'whSales" + i + "',width:100,align:'center'\">武汉" + i + "天销量</th>");
//            System.out.println("<th data-options=\"field:'whTurnoverDays" + i + "',width:100,align:'center'\" formatter=\"whTurnoverDays" + i + "\">武汉" + i + "天周转天数</th>");
//            System.out.println("<th data-options=\"field:'whCount" + i + "',width:200,align:'center'\" formatter=\"whCount" + i + "\">武汉" + i + "天补货数【补${sessionScope.days}天】</th>");
//            System.out.println("</c:if>");

            // 沈阳
//            System.out.println("<c:if test=\"${mt == " + i + "}\">");
//            System.out.println("<th data-options=\"field:'sySales" + i + "',width:100,align:'center'\">沈阳" + i + "天销量</th>");
//            System.out.println("<th data-options=\"field:'syTurnoverDays" + i + "',width:100,align:'center'\" formatter=\"syTurnoverDays" + i + "\">沈阳" + i + "天周转天数</th>");
//            System.out.println("<th data-options=\"field:'syCount" + i + "',width:200,align:'center'\" formatter=\"syCount" + i + "\">沈阳" + i + "天补货数【补${sessionScope.days}天】</th>");
//            System.out.println("</c:if>");

            // 西安
//            System.out.println("<c:if test=\"${mt == " + i + "}\">");
//            System.out.println("<th data-options=\"field:'xaSales" + i + "',width:100,align:'center'\">西安" + i + "天销量</th>");
//            System.out.println("<th data-options=\"field:'xaTurnoverDays" + i + "',width:100,align:'center'\" formatter=\"xaTurnoverDays" + i + "\">西安" + i + "天周转天数</th>");
//            System.out.println("<th data-options=\"field:'xaCount" + i + "',width:200,align:'center'\" formatter=\"xaCount" + i + "\">西安" + i + "天补货数【补${sessionScope.days}天】</th>");
//            System.out.println("</c:if>");

            // 固安
//            System.out.println("<c:if test=\"${mt == " + i + "}\">");
//            System.out.println("<th data-options=\"field:'gaSales" + i + "',width:100,align:'center'\">固安" + i + "天销量</th>");
//            System.out.println("<th data-options=\"field:'gaTurnoverDays" + i + "',width:100,align:'center'\" formatter=\"gaTurnoverDays" + i + "\">固安" + i + "天周转天数</th>");
//            System.out.println("<th data-options=\"field:'gaCount" + i + "',width:200,align:'center'\" formatter=\"gaCount" + i + "\">固安" + i + "天补货数【补${sessionScope.days}天】</th>");
//            System.out.println("</c:if>");

            // js
            // 北京
//            System.out.println("function bjTurnoverDays" + i + "(value, row, index) {");
//            System.out.println("return calcTurnoverDays(row.bjStock, row.bjSales" + i + ");");
//            System.out.println("}");
//            System.out.println("function bjCount" + i + "(value, row, index) {");
//            System.out.println("return calcCount(row.bjSales" + i + ", row.bjStock, " + i + ");");
//            System.out.println("}");

            // 上海
//            System.out.println("function shTurnoverDays" + i + "(value, row, index) {");
//            System.out.println("return calcTurnoverDays(row.shStock, row.shSales" + i + ");");
//            System.out.println("}");
//            System.out.println("function shCount" + i + "(value, row, index) {");
//            System.out.println("return calcCount(row.shSales" + i + ", row.shStock, " + i + ");");
//            System.out.println("}");

            // 广州
//            System.out.println("function gzTurnoverDays" + i + "(value, row, index) {");
//            System.out.println("return calcTurnoverDays(row.gzStock, row.gzSales" + i + ");");
//            System.out.println("}");
//            System.out.println("function gzCount" + i + "(value, row, index) {");
//            System.out.println("return calcCount(row.gzSales" + i + ", row.gzStock, " + i + ");");
//            System.out.println("}");
//
            // 成都
//            System.out.println("function cdTurnoverDays" + i + "(value, row, index) {");
//            System.out.println("return calcTurnoverDays(row.cdStock, row.cdSales" + i + ");");
//            System.out.println("}");
//            System.out.println("function cdCount" + i + "(value, row, index) {");
//            System.out.println("return calcCount(row.cdSales" + i + ", row.cdStock, " + i + ");");
//            System.out.println("}");
//
            // 武汉
//            System.out.println("function whTurnoverDays" + i + "(value, row, index) {");
//            System.out.println("return calcTurnoverDays(row.whStock, row.whSales" + i + ");");
//            System.out.println("}");
//            System.out.println("function whCount" + i + "(value, row, index) {");
//            System.out.println("return calcCount(row.whSales" + i + ", row.whStock, " + i + ");");
//            System.out.println("}");
//
            // 沈阳
//            System.out.println("function syTurnoverDays" + i + "(value, row, index) {");
//            System.out.println("return calcTurnoverDays(row.syStock, row.sySales" + i + ");");
//            System.out.println("}");
//            System.out.println("function syCount" + i + "(value, row, index) {");
//            System.out.println("return calcCount(row.sySales" + i + ", row.syStock, " + i + ");");
//            System.out.println("}");
//
            // 西安
//            System.out.println("function xaTurnoverDays" + i + "(value, row, index) {");
//            System.out.println("return calcTurnoverDays(row.xaStock, row.xaSales" + i + ");");
//            System.out.println("}");
//            System.out.println("function xaCount" + i + "(value, row, index) {");
//            System.out.println("return calcCount(row.xaSales" + i + ", row.xaStock, " + i + ");");
//            System.out.println("}");

            // 固安
//            System.out.println("function gaTurnoverDays" + i + "(value, row, index) {");
//            System.out.println("return calcTurnoverDays(row.gaStock, row.gaSales" + i + ");");
//            System.out.println("}");
//            System.out.println("function gaCount" + i + "(value, row, index) {");
//            System.out.println("return calcCount(row.gaSales" + i + ", row.gaStock, " + i + ");");
//            System.out.println("}");

            // 用于标识周期
//            System.out.println("if (m.getBjSales" + i + "() != 0) {");
//            System.out.println("if (flagSales" + i + " == 0) {");
//            System.out.println("flagSales" + i + " = 1;");
//            System.out.println("salesList.add(" + i + ");");
//            System.out.println("}");
//            System.out.println("}");

            // 标识符
//            System.out.println("int flagSales" + i + " = 0;");

//            System.out.println("else if (cycle == " + i + ") {");
//            System.out.println("salesMin = rows[0].bjSales" + i +";");
//            System.out.println("}");

            System.out.println("else if (cycle1 == " + i + ") {");
            System.out.println("salesMax = rows[0].bjSales" + i +";");
            System.out.println("}");




        }
    }
}
