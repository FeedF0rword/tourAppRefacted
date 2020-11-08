package com.tourApp.model;

import javax.persistence.Embeddable;

@Embeddable
public class Address {
    /**
     * Defines the address to be used for Users, Emergency Contact,Itinerary
     * Should be Embedded inside other entities
     * Defines the attributes
     * <ul>
     *     <li>number<li/>
     *     <li>AddressLine1<li/>
     *     <li>AddressLine2<li/>
     *     <li>City<li/>
     *     <li>Country<li/>
     *     <li>PostCode<li/>
     *     <li>Latitude<li/>
     *     <li>Longitude<li/>
     *     <li>Telephone<li/>
     *     <li>Mobile<li/>
     *
     * <ul/>
     * <p>
     *     And getters and setter for each of these attributes.<br>
     *     toString method returns the address as a string value
     *
     * <p/>
     */

    private String number="";

    private String addressLine1="";

    private String addressLine2="";

    private String city="";

    private String country="";

    private String postcode="";

    private String telephone="";

    private String mobile="";

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String City) {
        this.city = City;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String Country) {
        this.country = Country;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
}
