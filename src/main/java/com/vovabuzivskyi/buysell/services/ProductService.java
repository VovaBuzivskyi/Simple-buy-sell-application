package com.vovabuzivskyi.buysell.services;

import com.vovabuzivskyi.buysell.models.Image;
import com.vovabuzivskyi.buysell.models.Product;
import com.vovabuzivskyi.buysell.models.User;
import com.vovabuzivskyi.buysell.repositories.ProductsRepository;
import com.vovabuzivskyi.buysell.repositories.UserRepository;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.security.Principal;
import java.util.List;


@RequiredArgsConstructor
@Service
public class ProductService {
    private final ProductsRepository productsRepository;
    private final UserRepository userRepository;

    public List<Product> getProducts(String title) {
        if (title != null) return productsRepository.findByTitle(title);
        return productsRepository.findAll();
    }

    public Product getProductById(Long id) {
        return productsRepository.findById(id).orElse(null);
    }

    public void saveProduct(Principal principal, Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3)
            throws IOException {
        product.setUser(setUserByPrincipal(principal));
        Image image1;
        Image image2;
        Image image3;
        if (!file1.isEmpty()) {
            image1 = fileToImage(file1);
            image1.setPreviewImage(true);
            product.setImageToProduct(image1);
        }
        if (!file2.isEmpty()) {
            image2 = fileToImage(file2);
            product.setImageToProduct(image2);
        }
        if (!file3.isEmpty()) {
            image3 = fileToImage(file3);
            product.setImageToProduct(image3);
        }
        productsRepository.save(product);
    }

    public User setUserByPrincipal(Principal principal) {
        if (principal == null) {
            return new User();
        }
        return userRepository.findByEmail(principal.getName());
    }

    private Image fileToImage(MultipartFile file) throws IOException {
        Image image = new Image();

        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteProduct(Long id) {
        productsRepository.deleteById(id);
    }


}
