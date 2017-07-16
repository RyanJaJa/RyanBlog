package com.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import java.io.Serializable;

/**
 * Created by Chia's JaJa on 2017/3/31.
 */

@NoRepositoryBean
public interface RyanJpaRepository<T, ID extends Serializable> extends JpaRepository<T, ID> {

}