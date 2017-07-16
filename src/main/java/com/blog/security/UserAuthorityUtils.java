package com.blog.security;

import com.blog.entity.UserEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;

import java.util.Collection;
import java.util.List;

/**
 * Created by Chia's JaJa on 2017/6/27.
 */
public class UserAuthorityUtils {
    private static final List<GrantedAuthority> ADMIN_ROLES = AuthorityUtils
            .createAuthorityList("ROLE_TEST", "ROLE_USER");
    //利用Spring提供的AuthorityUtils中createAuthorityList將該群組加入相關roles
    //以便用一個List變數就儲存所有roles
    private static final List<GrantedAuthority> USER_ROLES = AuthorityUtils
            .createAuthorityList("ROLE_USER");

    public static Collection<? extends GrantedAuthority> createAuthorities(
            UserEntity user) {
        String username = user.getName();
        if (username.contains("Tom")) { //帳號中含有admin，即有管理者之role
            return ADMIN_ROLES;
        }
        return USER_ROLES; //否則則為一般使用者
    }
}
