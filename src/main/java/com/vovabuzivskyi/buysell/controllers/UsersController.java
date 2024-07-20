package com.vovabuzivskyi.buysell.controllers;


import com.vovabuzivskyi.buysell.models.User;
import com.vovabuzivskyi.buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
@RequiredArgsConstructor
public class UsersController {
    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";

    }  @GetMapping("/logout")
    public String logout() {
        return "logout";
    }

    @GetMapping("/authorization")
    public String authorization() {
        return "authorization";
    }

    @PostMapping("/authorization")
    public String authorization(User user , Model model) {
        if(!userService.saveUser(user)){
            model.addAttribute("errorMessage", "User with email: " + user.getEmail() + " already exists");
            return "authorization";
        }
        return "redirect:/login";
    }
    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }


}
