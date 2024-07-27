package com.vovabuzivskyi.buysell.services;

import com.vovabuzivskyi.buysell.models.User;
import com.vovabuzivskyi.buysell.models.enumerations.Roles;
import com.vovabuzivskyi.buysell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;


import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;


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

    public List<User> allUsers() {
        return userRepository.findAll();
    }

    public void userBan(Long id) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            user.setActive(!user.isActive());
        }
        userRepository.save(user);
    }

    public void changeRole(User user, Map<String, String> boxes) {
        Set<String> roles = Arrays.stream(Roles.values())
                .map(Roles::name)
                .collect(Collectors.toSet());
        user.getRoles().clear();
        for (String key : boxes.keySet()) {
            if (roles.contains(key)) {
                user.getRoles().add(Roles.valueOf(key));
            }
            userRepository.save(user);
        }
    }
}
