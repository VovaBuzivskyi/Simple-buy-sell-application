package com.vovabuzivskyi.buysell.repositories;

import com.vovabuzivskyi.buysell.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
