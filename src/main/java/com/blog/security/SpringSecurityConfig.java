package com.blog.security;

/**
 * Created by Chia's JaJa on 2017/4/2.
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.security.web.csrf.CsrfTokenRepository;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;
import org.springframework.web.filter.CharacterEncodingFilter;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter
{
    @Autowired
    private DneUserDetailsService dneUserDetailsService;

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder authentication) throws Exception
    {
        authentication //Builder Design Pattern
                .userDetailsService(dneUserDetailsService); //換成userDetailsService
        //authentication.inMemoryAuthentication().withUser("test").password("test").roles("ADMIN");
        //authentication.inMemoryAuthentication().withUser("user").password("123456").roles("USER").and().withUser("admin").password("admin").roles("USER","ADMIN");

    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception
    {
        CharacterEncodingFilter filter = new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        filter.setForceEncoding(true);
        httpSecurity.addFilterBefore(filter,CsrfFilter.class);
        httpSecurity.csrf().disable();//關閉csrf

        // TODO Auto-generated method stub
        httpSecurity.authorizeRequests()
                .antMatchers("/", "/").permitAll() //resource資料夾靜態資料可匿名存取
                .antMatchers("/admin/users*").access("hasRole('ROLE_TEST')")//admin下admin*的jsp需要登入才能觀看
                .and()
                .formLogin().loginPage("/ryan/login")
                .failureUrl("/ryan/login?error") //如果認證失敗，則導往/login並帶參數error
                .defaultSuccessUrl("/admin/users") //認證通過後導往的Url
                .permitAll();


       /* httpSecurity.authorizeRequests()
                .antMatchers("/", "/admin/hello").permitAll() //resource資料夾靜態資料可匿名存取
                //.antMatchers("/admin/users*").access("hasRole('ROLE_ADMIN')")//admin下admin*的jsp需要登入才能觀看
                .antMatchers("/admin/users*") //對象為所有網址
                .authenticated() //存取必須通過驗證
                .and()
                .formLogin()
                .loginPage("/login") //則產生自訂login表單
                .failureUrl("/") //如果認證失敗，則導往/login並帶參數error
                .loginProcessingUrl("/admin/users")
                .defaultSuccessUrl("/admin/users") //認證通過後導往的Url
                .permitAll();*/

    }

}
