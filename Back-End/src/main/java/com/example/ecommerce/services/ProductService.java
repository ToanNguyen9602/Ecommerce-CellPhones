package com.example.ecommerce.services;

import com.example.ecommerce.dtos.ProductDTO;
import com.example.ecommerce.models.Product;
import com.example.ecommerce.responses.PageResponse;
import com.example.ecommerce.responses.ProductResponse;

import java.util.List;

public interface ProductService {
    ProductResponse getProductById(Long id);
    ProductResponse createProduct(ProductDTO productDTO);
    ProductResponse updateProduct(long id, ProductDTO productDTO);
    PageResponse searchProduct(
            int page, int limit, String brand,String category, String[] search, String... sort);
    List<ProductResponse> getAllProducts();
    Product findById(long id);
    ProductResponse updateProductStatus(long id, boolean active);

}
