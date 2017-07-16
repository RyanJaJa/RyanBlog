package com.blog.repository;

import com.blog.entity.UserEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Chia's JaJa on 2017/4/1.
 */
@Repository
public interface RyanInterface extends RyanJpaRepository<UserEntity, Integer> {
    UserEntity findByName(String name);
    //UserEntity findOne(Integer id);
}
