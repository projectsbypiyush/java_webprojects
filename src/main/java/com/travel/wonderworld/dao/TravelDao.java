package com.travel.wonderworld.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.travel.wonderworld.entities.EnquiryEntity;

@Repository
public interface TravelDao extends JpaRepository<EnquiryEntity, Integer> {
	
	List<EnquiryEntity> findByCustnm(String custnm);

}
