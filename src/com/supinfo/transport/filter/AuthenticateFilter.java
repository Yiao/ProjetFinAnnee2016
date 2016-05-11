package com.supinfo.transport.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

/**
 * Created by sya on 3/4/2016.
 */
@WebFilter(filterName = "AuthenticateFilter", urlPatterns = "/auth/*")
public class AuthenticateFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        String username = null;
        if (req instanceof HttpServletRequest) {
            HttpServletRequest httpRequest = (HttpServletRequest) req;
            HttpServletResponse httpResponse = (HttpServletResponse) resp;

            HttpSession session = httpRequest.getSession();
            username = (String) session.getAttribute("username");

            if (username == null || Objects.equals(username, ""))
            {
                if (httpResponse != null)
                {
                    HttpServletResponse response = (HttpServletResponse) resp;
                    response.sendRedirect("/login");
                }
            }
            else
            {
                chain.doFilter(httpRequest, resp);
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
