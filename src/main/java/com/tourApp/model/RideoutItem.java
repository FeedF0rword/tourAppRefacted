package com.tourApp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class RideoutItem implements Serializable{

    private static final long serialVersionUID = -904360230041854157L;

    @Id
    @GeneratedValue
    private int cartItemId;

    @ManyToOne
    @JoinColumn(name = "cartId")
    @JsonIgnore
    private RideoutCart rideoutCart;

    @ManyToOne
    @JoinColumn(name = "rideoutId")
    private Rideout rideout;

    private String feedback;


    public int getCartItemId() {
        return cartItemId;
    }

    public void setCartItemId(int cartItemId) {
        this.cartItemId = cartItemId;
    }

    public RideoutCart getCart() {
        return rideoutCart;
    }

    public void setCart(RideoutCart rideoutCart) {
        this.rideoutCart = rideoutCart;
    }

    public Rideout getProduct() {
        return rideout;
    }

    public void setProduct(Rideout rideout) {
        this.rideout = rideout;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
}
