package com.travel.wonderworld.entities;

import java.util.Date;

import org.hibernate.annotations.CurrentTimestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "enquiries")
public class EnquiryEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int enqid;
	
	@CurrentTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date enqdt;
	
	private String custnm;
	private String mobile;
	private String destination;
	private String travelyear;
	private String travelmonth;
	private String pack;
	private int numberofadults;
	private int numberofchildren;
	
	public int getEnqid() {
		return enqid;
	}
	public void setEnqid(int enqid) {
		this.enqid = enqid;
	}
	public Date getEnqdt() {
		return enqdt;
	}
	public void setEnqdt(Date enqdt) {
		this.enqdt = enqdt;
	}
	public String getCustnm() {
		return custnm;
	}
	public void setCustnm(String custnm) {
		this.custnm = custnm;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getTravelyear() {
		return travelyear;
	}
	public void setTravelyear(String travelyear) {
		this.travelyear = travelyear;
	}
	public String getTravelmonth() {
		return travelmonth;
	}
	public void setTravelmonth(String travelmonth) {
		this.travelmonth = travelmonth;
	}
	public String getPack() {
		return pack;
	}
	public void setPack(String pack) {
		this.pack = pack;
	}
	public int getNumberofadults() {
		return numberofadults;
	}
	public void setNumberofadults(int numberofadults) {
		this.numberofadults = numberofadults;
	}
	public int getNumberofchildren() {
		return numberofchildren;
	}
	public void setNumberofchildren(int numberofchildren) {
		this.numberofchildren = numberofchildren;
	}		
		
	
}
