package com.blog.security;

import com.blog.entity.UserEntity;
import com.blog.repository.RyanInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.Collection;
import java.util.List;

/**
 * Created by Chia's JaJa on 2017/6/27.
 */
@Component
public class DneUserDetailsService implements UserDetailsService {

    @Autowired
    private RyanInterface userRepository;

    @Override
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {
        // TODO Auto-generated method stub
        //userRepository.findOne(1);

        UserEntity user=userRepository.findByName(username);
        /*if(user==null){
            throw new UsernameNotFoundException("Invalid username/password");
        }*/
        if(!user.getName().equals("Tom")){
            throw new UsernameNotFoundException("Invalid username/password");
            //throw new BadCredentialsException("用户名不存在");
        }
        //用集合及一個helper class來取得user的擁有的role
        Collection<? extends GrantedAuthority> authorities = UserAuthorityUtils.createAuthorities(user);
        //UserAuthorityUtils是helper class
        return new User(user.getName(), user.getPassword(), authorities);
        //這邊的User是指org.springframework.security.core.userdetails.User
        //是UserDetails介面的實作，儲存使用者名稱、密碼及擁有權限

    }

}
