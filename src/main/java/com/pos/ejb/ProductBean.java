/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pos.ejb;

import com.pos.entity.User;
import com.pos.common.ProductDetails;
import com.pos.entity.Product;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Damian
 */
@Stateless
public class ProductBean {

    private static final Logger LOG = Logger.getLogger(ProductBean.class.getName());

    @PersistenceContext
    private EntityManager em;

    public void createProduct(String name, Integer price, String description, Integer quantity) {
        LOG.info("createProduct");

        Product product = new Product();
        product.setName(name);
        product.setPrice(price);
        product.setDescription(description);
        product.setQuantity(quantity);

        em.persist(product); //persist the car object -a new entity in the DB will be created
    }

    public ProductDetails findById(Integer productId) {
        Product product = em.find(Product.class, productId);
        return new ProductDetails(product.getId(), product.getName(), product.getPrice(), product.getDescription(), product.getQuantity());
    }

    public List<ProductDetails> getAllProducts() {
        LOG.info("getAllProducts");
        try {
            List<Product> products = (List<Product>) em.createQuery("SELECT p FROM Product p").getResultList();
            return copyProductsToDetails(products);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }

    }

    private List<ProductDetails> copyProductsToDetails(List<Product> products) {
        List<ProductDetails> detailsList = new ArrayList<>();
        for (Product product : products) {
            removeProdIfQuantityIsZero(product);
            ProductDetails productDetails = new ProductDetails(
                    product.getId(),
                    product.getName(),
                    product.getPrice(),
                    product.getDescription(),
                    product.getQuantity());
            detailsList.add(productDetails);
        }
        return detailsList;
    }

    private void removeProdIfQuantityIsZero(Product product) {
        if (product.getQuantity() <= 0) {
            Product prod = em.find(Product.class, product.getId());
            em.remove(prod);
        }
    }

    public void updateProduct(Integer productId, String name, Integer price, String description, Integer quantity) {
        LOG.info("updateProduct");
        Product product = em.find(Product.class, productId);
        product.setName(name);
        product.setPrice(price);
        product.setDescription(description);
        product.setQuantity(quantity);
    }

    public void deleteProductsByIds(Collection<Integer> ids) {
        LOG.info("deleteProductsByIds");
        for (Integer id : ids) {
            Product product = em.find(Product.class, id);
            em.remove(product);
        }
    }
}
