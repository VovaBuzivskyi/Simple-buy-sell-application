package com.vovabuzivskyi.buysell.services;

import com.vovabuzivskyi.buysell.models.Product;
import com.vovabuzivskyi.buysell.repositories.ProductsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


import java.util.List;


@RequiredArgsConstructor
@Service
public class ProductService {

   private final ProductsRepository productsRepository ;


    public List<Product> getProducts(String title) {
        if (title != null ) return productsRepository.findByTitle(title);
        return productsRepository.findAll();
    }


    public Product getProductById(Long id ) {
      return productsRepository.findById(id).orElse(null);
    }

    public void saveProduct(Product product) {
        productsRepository.save(product);

    }

    public void deleteProduct(Long id) {
      productsRepository.deleteById(id);
    }



}
