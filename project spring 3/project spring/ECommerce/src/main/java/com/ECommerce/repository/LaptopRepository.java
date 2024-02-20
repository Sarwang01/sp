package com.ECommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ECommerce.model.Laptop;

@Repository
public interface LaptopRepository extends JpaRepository<Laptop, Long> {

}
