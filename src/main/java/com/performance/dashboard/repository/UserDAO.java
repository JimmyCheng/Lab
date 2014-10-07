package com.performance.dashboard.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.performance.dashboard.entity.User;


public interface UserDAO extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
	User findByName(String name);
}
