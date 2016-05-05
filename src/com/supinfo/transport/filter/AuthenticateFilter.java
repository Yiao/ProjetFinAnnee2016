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
        chain.doFilter(req, resp);
        String username = null;
        String password = null;
        if (req instanceof HttpServletRequest)
        {
            HttpServletRequest httpRequest = (HttpServletRequest) req;
            HttpSession sessionIn =  httpRequest.getSession();

            username = (String) sessionIn.getAttribute("username");
            password = (String) sessionIn.getAttribute("password");

            if (username!=null&& !Objects.equals(username, "")||password!=null&& !Objects.equals(password, ""))
            {
                chain.doFilter(httpRequest,resp);
            }
            else
            {
                if (resp instanceof HttpServletResponse)
                {
                    HttpServletResponse servletResponse=(HttpServletResponse) resp;
                    servletResponse.sendRedirect("/");
                }
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
