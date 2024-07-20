package com.vovabuzivskyi.buysell.services;

import com.vovabuzivskyi.buysell.models.User;
import com.vovabuzivskyi.buysell.models.enumerations.Roles;
import com.vovabuzivskyi.buysell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;


import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;


    public boolean saveUser(User user) {
        if (userRepository.findByEmail(user.getEmail()) != null) {
            return false;
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setActive(true);
        user.getRoles().add(Roles.ROLE_USER);
        userRepository.save(user);
        return true;
    }

}
