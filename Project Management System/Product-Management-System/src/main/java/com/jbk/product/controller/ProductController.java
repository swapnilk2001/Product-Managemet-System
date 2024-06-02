package com.jbk.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jbk.product.entity.Product;
import com.jbk.product.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService service;
	
	@RequestMapping("/")
	public String getProduct(Model model) {
		List<Product>product=service.getProduct();
		model.addAttribute("product", product);
		
		return"index";
	}
	
	@RequestMapping("/add-product")
	public String addp(Model model) {
		return "add_product";
	}
	
	
	
	// handler for adding product
	@RequestMapping(value = "handle-product",method = RequestMethod.POST)
	public String addProduct(@ModelAttribute Product product,Model model) {
		this.service.addProduct(product);
		model.addAttribute("msg", "Product added successfully");
		
		
		return "redirect:/";// this is a jsp page
	}
//	handler for delete
	
	@RequestMapping("/delete-product/{id}")
	public String deleteProduct(@PathVariable int id,Model model) {
		this.service.deleteProduct(id);
		return "redirect:/";
	}
	
	@RequestMapping("/update-product")
	public String upDatePage(Model model) {
		return"update_product";
	}
	
	
//	handler for update
	
	
	@RequestMapping("/update-product/{id}")
	public String updateProduct1(@PathVariable int id,Model model,RedirectAttributes ra) {
		Product product= this.service.getProduct(id);
		
		ra.addFlashAttribute("product", product);
			System.out.println(product.getName());
		
		return "redirect:/update_product";
		
	}
	@RequestMapping(value = "/update-product/{id}",method = RequestMethod.POST)
	public String upDateProduct(@PathVariable int id,@ModelAttribute Product product) {
		
		this.service.upDateProduct(id, product);
	
		
		return "redirect:/";
		
	}

	
	


}
