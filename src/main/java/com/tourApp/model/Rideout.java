package com.tourApp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Max;
import java.io.Serializable;
import java.util.List;


@Entity
public class Rideout implements Serializable{

    private static final long serialVersionUID = -3532377236419382983L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int rideoutId;

    @NotEmpty (message = "The Rideout Title must not be null.")
    private String rideoutTitle;

    @Max(value = 30 ,message = "Maximum number per rideout is 30")
    private Integer maxRiders = 15;

    private String startDate;

    private String rideLeader;

    private String rideoutDescription;

    private String rideoutStatus;

    private String rideoutItineary;


    @OneToMany(mappedBy = "rideout", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
    private List<RideoutItem> rideoutItemList;

    public int getRideoutId() {
        return rideoutId;
    }

    public void setRideoutId(int productId) {
        this.rideoutId = productId;
    }

    public String getRideoutTitle() {
        return rideoutTitle;
    }

    public void setRideoutTitle(String productName) {
        this.rideoutTitle = productName;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getRideLeader() {
        return rideLeader;
    }

    public void setRideLeader(String rideLeader) {
        this.rideLeader = rideLeader;
    }

    public String getRideoutDescription() {
        return rideoutDescription;
    }

    public void setRideoutDescription(String productDescription) {
        this.rideoutDescription = productDescription;
    }

    public Integer getMaxRiders() {
        return maxRiders;
    }

    public void setMaxRiders(Integer maxRiders) {
        this.maxRiders = maxRiders;
    }

    public String getRideoutItineary() {
        return rideoutItineary;
    }

    public void setRideoutItineary(String rideoutItineary) {
        this.rideoutItineary = rideoutItineary;
    }

    public String getRideoutStatus() {
        return rideoutStatus;
    }

    public void setRideoutStatus(String productStatus) {
        this.rideoutStatus = productStatus;
    }

    public List<RideoutItem> getRideoutItemList() {
        return rideoutItemList;
    }

    public void setRideoutItemList(List<RideoutItem> rideoutItemList) {
        this.rideoutItemList = rideoutItemList;
    }

}
