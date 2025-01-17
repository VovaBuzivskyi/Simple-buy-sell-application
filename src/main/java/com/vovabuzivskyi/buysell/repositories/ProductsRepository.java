package com.vovabuzivskyi.buysell.repositories;


import com.vovabuzivskyi.buysell.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductsRepository extends JpaRepository<Product, Long> {

    public List<Product> findByTitle(String title);
}
