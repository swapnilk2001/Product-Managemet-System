package com.jbk.product.service;

import java.util.List;
import java.util.Optional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.product.dao.ProductDao;
import com.jbk.product.entity.Product;

@Service
public class ProductService {
	
	@Autowired
	ProductDao dao;

	public Product addProduct(Product product) {
		return this.dao.save(product);
		
	}

	public List<Product> getProduct() {
		
		return this.dao.findAll();
	}

	public void deleteProduct(int id) {
		this. dao.deleteById(id);
		
	}


	public Product getProduct(int id) {
		return this.dao.getById(id);
		
	}
	
	public Product upDateProduct(int id,Product product) {
//		String msg;
		
			
			Product product1= this.dao.findById(id).orElse(null);
				product1.setName(product.getName());
				product1.setDescription(product.getDescription());
				product1.setPrice(product.getPrice());
//				msg="updated product successfully";
				return this.dao.save(product1);
			
			
		
	
	}

	
	
	
	
	    
}
