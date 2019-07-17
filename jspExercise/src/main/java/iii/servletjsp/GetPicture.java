package iii.servletjsp;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetPicture")
public class GetPicture extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String[] sa = { "fs.jpg", "m001.jpg", "m12.jpg", "m46.jpg", "m536.jpg", "v06.jpg" };
	List<String> list = new ArrayList<>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (list.size() == 0) {
			list = new ArrayList<>(Arrays.asList(sa));
		}
		int idx = (int) (Math.random() * list.size());
		String filename = list.remove(idx);
		ServletContext ctx = getServletContext();
		String mimeType = ctx.getMimeType(filename);
		response.setContentType(mimeType);
		String path = "/images/" + filename;
		try (InputStream is = ctx.getResourceAsStream(path); OutputStream os = response.getOutputStream();) {
			byte[] b = new byte[819200];
			int len = 0;
			while ((len = is.read(b)) != -1) {
				os.write(b, 0, len);
			}
		}

	}

}
