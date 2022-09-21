package com.prj.model;

public class Customer {
	
    private int deliveryID;
    private String name;
    private String email;
    private String phone;
    private String address;
    private String province;
    
    public Customer(int deliveryID, String name, String email, String phone, String address ,String province) {
    	
	this.deliveryID = deliveryID;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.address = address;
	this.province = province;
    }
    

    public int getdeliveryID() {
        return deliveryID;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    
    public String getAddress() {
        return address;
    }
    
    public String getProvince() {
        return province;
    }

}
