package com.myframework;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class FrontServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        resp.setContentType("text/html");
        resp.getWriter().println("<html><body>");
        resp.getWriter().println("<h2>URL demandée :</h2>");
        resp.getWriter().println("<p>" + req.getRequestURI() + "</p>");
        resp.getWriter().println("</body></html>");
    }
}
