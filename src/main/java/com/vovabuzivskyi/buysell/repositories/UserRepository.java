package com.vovabuzivskyi.buysell.repositories;

import com.vovabuzivskyi.buysell.models.User;

import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User, Long> {
   public User findByEmail(String email);
}

