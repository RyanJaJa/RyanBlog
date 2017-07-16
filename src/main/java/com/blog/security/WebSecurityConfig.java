package com.blog.security;

/**
 * Created by Chia's JaJa on 2017/4/15.
 */
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class WebSecurityConfig extends AbstractSecurityWebApplicationInitializer {

    /*** extends AbstractSecurityWebApplicationInitializer 等同於
      <filter>
     <filter-name>springSecurityFilterChain</filter-name>
     <filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
     </filter>

     <filter-mapping>
     <filter-name>springSecurityFilterChain</filter-name>
     <url-pattern>/*</url-pattern>
     </filter-mapping>

     當任何request時o.s.web.filter.DelegatingFilterProxy呼叫SpringSecurityFilterChain
     */

}
