package com.vovabuzivskyi.buysell.controllers;


import com.vovabuzivskyi.buysell.models.Product;
import com.vovabuzivskyi.buysell.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;


@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/")
    public String getProducts(@RequestParam(name = "title", required = false) String title, Model model, Principal principal) {
        model.addAttribute("products", productService.getProducts(title));
        model.addAttribute("user", productService.setUserByPrincipal(principal));
        return "products";
    }

    @GetMapping("product/info/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getProductById(id));
        model.addAttribute("images", productService.getProductById(id).getImages());
        model.addAttribute("user", productService.getProductById(id).getUser());
        return "productInfo";
    }

    @PostMapping("product/create")
    public String saveProduct(@RequestParam(name = "file1", required = false) MultipartFile file1,
                              @RequestParam(name = "file2", required = false) MultipartFile file2,
                              @RequestParam(name = "file3", required = false) MultipartFile file3,
                              Product product, Principal principal) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3);
        return "redirect:/";
    }

    @PostMapping("product/delete/{id}")
    public String deleteProduct(@PathVariable long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }


}
