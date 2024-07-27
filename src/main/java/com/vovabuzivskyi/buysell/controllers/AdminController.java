package com.vovabuzivskyi.buysell.controllers;

import com.vovabuzivskyi.buysell.models.User;
import com.vovabuzivskyi.buysell.models.enumerations.Roles;
import com.vovabuzivskyi.buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;


@Controller
@RequiredArgsConstructor
public class AdminController {

    private final UserService userService;

    @GetMapping("/admin")
    public String admin(Model model) {
        model.addAttribute("users", userService.allUsers());
        return "admin-panel";
    }

    @PostMapping("/admin/ban/{id}")
    public String ban(@PathVariable Long id) {
        userService.userBan(id);
        return "redirect:/admin";
    }

    @GetMapping("/admin/edit/{user}")
    public String edit(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Roles.values());
        return "editRole";
    }

    @PostMapping("/admin/edit")
    public String changeRole(@RequestParam("userId") User user, @RequestParam Map<String, String> boxes) {
        userService.changeRole(user, boxes);
        return "redirect:/admin";
    }


}


