package com.tourApp.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Embeddable;

@Embeddable
public class InsuranceInformation {
    /**
     * Defines the Insurance to be used for Users
     * Should be Embedded inside other entities
     * Defines the attributes
     * <ul>
     *     <li>Insurance Expiry Date<li/>
     *     <li>Insurance Number<li/>
     *     <li>Insurance Verified</li>
     *
     * <ul/>
     * <p>
     *     And getters and setter for each of these attributes.<br>
     *     toString method returns the Insurance Details as a string value
     *
     * <p/>
     */
    @NotEmpty(message = "The User Insurance No must not be null.")
    private String insuranceNo="";

    private String expiry_date;

    private Boolean insuranceVerified = false;

    public String getInsuranceNo() {
        return insuranceNo;
    }

    public void setInsuranceNo(String insuranceNo) {
        this.insuranceNo = insuranceNo;
    }

    public String getExpiry_date() {
        return expiry_date;
    }

    public void setExpiry_date(String expiry_date) {
        this.expiry_date = expiry_date;
    }

    public Boolean getInsuranceVerified() {
        return insuranceVerified;
    }

    public void setInsuranceVerified(Boolean insuranceVerified) {
        this.insuranceVerified = insuranceVerified;
    }
}
