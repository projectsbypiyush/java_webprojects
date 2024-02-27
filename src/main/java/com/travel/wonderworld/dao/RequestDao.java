package com.travel.wonderworld.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.travel.wonderworld.entities.EnquiryRequestEntity;

public interface RequestDao extends JpaRepository<EnquiryRequestEntity, Integer> {

}
