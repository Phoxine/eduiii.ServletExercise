package iii.servletjsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebServlet("/FirstSimpleProgram")
public class SimpleServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		System.out.println("這是doGet()方法印出的訊息");
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
//		req.setCharacterEncoding("UTF-8");
		out.println("<html><head><title>");
		out.println("由Servlet送出文字性的回應很累人</title>");
		out.println("</head><body>");
		out.println("<h1>這是DoGet()方法送出的訊息</h1>");
		out.println("<hr>");
		out.println("RequestURL=" + req.getRequestURL()+"<br>");
		out.println("RequestURI=" + req.getRequestURI()+"<br>");
		out.println("QueryString=" + req.getQueryString()+"<br>");
		out.println("RequestURI=" + req.getRequestURI()+"<br>");
		out.println("ContextPath=" + req.getContextPath()+"<br>");
		out.println("ServletPath=" + req.getServletPath()+"<br>");
		out.println("PathInfo=" + req.getPathInfo()+"<br>");
		out.println("您的IP為:" + req.getRemoteAddr()+"<br>");
		out.println("<hr>");
		out.println("請求標頭如下<hr>");
		Enumeration<String> en = req.getHeaderNames();
		while(en.hasMoreElements()){	
			out.println(en.nextElement()+"==>"+ req.getHeader(en.nextElement()) +"<br>");
		}
		out.println("</body></html>");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("這是doPost()方法印出的訊息");
	}

}
