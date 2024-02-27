package com.travel.wonderworld.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.wonderworld.dao.RequestDao;
import com.travel.wonderworld.dao.TravelDao;
import com.travel.wonderworld.entities.EnquiryEntity;
import com.travel.wonderworld.entities.EnquiryRequestEntity;

import jakarta.servlet.http.HttpSession;

@Service
public class TravelService {
	
	@Autowired
	TravelDao tDao;
	@Autowired
	RequestDao rDao;
	List<EnquiryEntity> list;
	List<EnquiryRequestEntity> requestList;
	
	public String addTravelEnquiry(EnquiryEntity entity) {
		tDao.save(entity);
		return "success";
	}
	
	public List<EnquiryEntity> getEnq(){
		return tDao.findAll();
	}
	
	public String makeRequest(EnquiryRequestEntity e) {
		rDao.save(e);
		return "success";
	}
	
	public List<EnquiryRequestEntity> getRequests(){
		return rDao.findAll();
	}
	
	public void removeRequest(int id) {
		EnquiryRequestEntity entity =  rDao.getOne(id);
		rDao.delete(entity);
	}
	
	public List<EnquiryEntity> searchByName(String nm) {
		List<EnquiryEntity> e=tDao.findByCustnm(nm);
		return e;
	}
	
}
