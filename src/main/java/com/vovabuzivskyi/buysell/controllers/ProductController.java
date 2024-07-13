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


@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/")
    public String getProducts(@RequestParam(name = "title" ,required = false) String title, Model model) {
        model.addAttribute("products" ,productService.getProducts(title));
        return "products";
    }

    @GetMapping("product/info/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("product",productService.getProductById(id));
        return "productInfo";
    }

    @PostMapping("product/create")
    public String saveProduct(Product product) {
        productService.saveProduct(product);
        return "redirect:/";
    }

    @PostMapping("product/delete/{id}")
    public String deleteProduct(@PathVariable long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }



}
