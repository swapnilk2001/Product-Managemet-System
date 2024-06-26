package com.jbk.product.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jbk.product.entity.Product;
@Repository
public interface ProductDao extends JpaRepository<Product, Integer> {

}
