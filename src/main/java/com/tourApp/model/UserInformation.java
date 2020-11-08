package com.tourApp.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Embeddable;
import javax.persistence.Embedded;

@Embeddable
public class UserInformation {

    @NotEmpty(message = "The User First name must not be null.")
    private String firstname="";

    @NotEmpty(message = "The User Sur name must not be null.")
    private String surname="";

    @Embedded
    private Address address = new Address();

    private String medicalMd="";

    private String emergencyContactFirstName="";

    private String emergencyContactSurname="";

    private String emergencyContactRelationship="";


    private String emergencyContactAddress = "";

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getMedicalMd() {
        return medicalMd;
    }

    public void setMedicalMd(String medicalMd) {
        this.medicalMd = medicalMd;
    }

    public String getEmergencyContactFirstName() {
        return emergencyContactFirstName;
    }

    public void setEmergencyContactFirstName(String emergencyContactFirstName) {
        this.emergencyContactFirstName = emergencyContactFirstName;
    }

    public String getEmergencyContactSurname() {
        return emergencyContactSurname;
    }

    public void setEmergencyContactSurname(String emergencyContactSurname) {
        this.emergencyContactSurname = emergencyContactSurname;
    }

    public String getEmergencyContactRelationship() {
        return emergencyContactRelationship;
    }

    public void setEmergencyContactRelationship(String emergencyContactRelationship) {
        this.emergencyContactRelationship = emergencyContactRelationship;
    }

    public String getEmergencyContactAddress() {
        return emergencyContactAddress;
    }

    public void setEmergencyContactAddress(String emergencyContactAddress) {
        this.emergencyContactAddress = emergencyContactAddress;
    }
    
}
