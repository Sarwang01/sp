package com.ECommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ECommerce.model.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long>{

	public Cart getByUserName(String userName);
	public boolean existsByUserName (String userName);
	
}
