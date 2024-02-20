package com.ECommerce.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ECommerce.model.Credentials;



@Repository
public interface CredentialsRepository extends JpaRepository<Credentials, Long> {
	
	
	boolean existsByUserName (String userName);
	boolean existsByPassWord(String passWord);
	boolean existsByRole(String role);
	List<Credentials> findByUserName(String userName);
	public Credentials getByUserName(String userName);

}
