package com.key.mvcweb.key.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.key.mvcbase.bean.BaseEntity;

import javax.persistence.Table;

import org.springframework.transaction.annotation.Transactional;

@Entity
@Table(name = "tbl_key")
public class Key extends BaseEntity {

	private static final long serialVersionUID = 1L;

	@Column(name = "public_exponent", length = 400)
	private String publicExponent;

	@Column(name = "private_exponent", length = 400)
	private String privateExponent;

	@Column(name = "modulus", length = 600)
	private String modulus;

	public String getPublicExponent() {
		return publicExponent;
	}

	public void setPublicExponent(String publicExponent) {
		this.publicExponent = publicExponent;
	}

	public String getPrivateExponent() {
		return privateExponent;
	}

	public void setPrivateExponent(String privateExponent) {
		this.privateExponent = privateExponent;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getModulus() {
		return modulus;
	}

	public void setModulus(String modulus) {
		this.modulus = modulus;
	}

}
