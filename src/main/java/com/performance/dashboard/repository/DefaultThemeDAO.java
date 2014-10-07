package com.performance.dashboard.repository;

import org.springframework.data.repository.CrudRepository;

import com.performance.dashboard.entity.DefaultTheme;

public interface DefaultThemeDAO extends CrudRepository<DefaultTheme, Long> {
}
