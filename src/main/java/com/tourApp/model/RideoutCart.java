package com.tourApp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
public class RideoutCart implements Serializable {

    private static final long serialVersionUID = 3940548625296145582L;

    @Id
    @GeneratedValue
    private int cartId;

    @OneToMany(mappedBy = "rideoutCart", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<RideoutItem> rideoutItems;

    @OneToOne
    @JoinColumn(name = "customerId")
    @JsonIgnore
    private Customer customer;


    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public List<RideoutItem> getCartItems() {
        return rideoutItems;
    }

    public void setCartItems(List<RideoutItem> rideoutItems) {
        this.rideoutItems = rideoutItems;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

}
