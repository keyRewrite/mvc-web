package com.key.mvcweb.user.bean;
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
@Table(name ="tbl_user_info")
public class User extends BaseEntity {
    
    private static final long serialVersionUID = 1L;
 
    @Column(name="name",length=32)
    private String name;
    
    @Column(name="age")
    private Integer age;
    
    @Column(name="pass",length=500)
    private String pass;
    
    @Column(name="user_name",length=50)
    private String userName;
    
    
    @Column(name="nice_name",length=32)
    private String nice_name;


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Integer getAge() {
		return age;
	}


	public void setAge(Integer age) {
		this.age = age;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getNice_name() {
		return nice_name;
	}


	public void setNice_name(String nice_name) {
		this.nice_name = nice_name;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "User [ "+ " name=" + name + ", age=" + age + ", userName=" + userName + ", nice_name=" + nice_name
				+ "]";
	}
 
}
