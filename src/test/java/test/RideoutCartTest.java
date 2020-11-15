package test;

import com.tourApp.model.Customer;
import com.tourApp.model.Rideout;
import com.tourApp.model.RideoutCart;
import com.tourApp.model.RideoutItem;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

public class RideoutCartTest {
    RideoutCart cart = new RideoutCart();
    RideoutItem rideoutItem1 = new RideoutItem();
    RideoutItem rideoutItem2 = new RideoutItem();
    Customer customer = new Customer();
    Rideout rideout1 = new Rideout();
    Rideout rideout2 = new Rideout();
    @Before
    public void setupRideout()
    {
        customer.setUsername("test1");
        customer.setPassword("test");
        customer.setEnabled(true);
        customer.setRole("ROLE_LEADER");
        customer.setCart(cart);

        rideout1.setRideoutTitle("Tour 1");
        rideout1.setMaxRiders(3);
        rideout1.setRideLeader("Sumithra");
        rideout1.setStartDate("11/11/2020");
        rideout1.setRideoutStatus("PUBLISHED");

        rideout2.setRideoutTitle("Tour 2");
        rideout2.setMaxRiders(10);
        rideout2.setRideLeader("Dilshan");
        rideout2.setStartDate("12/12/2020");
        rideout2.setRideoutStatus("PUBLISHED");

        List<RideoutItem> rideoutItems = new ArrayList<RideoutItem>();
        rideoutItem1.setCart(cart);
        rideoutItem1.setProduct(rideout1);
        rideoutItems.add(rideoutItem1);

        rideoutItem2.setCart(cart);
        rideoutItem2.setProduct(rideout2);
        rideoutItems.add(rideoutItem2);


        cart.setCustomer(customer);
        cart.setCartItems(rideoutItems);

    }
    @Test
    public void print()
    {
        customer.setUsername("test1");
        customer.setPassword("test");
        customer.setEnabled(true);
        customer.setRole("ROLE_LEADER");
        customer.setCart(cart);

        List<RideoutItem> rideoutItems = new ArrayList<RideoutItem>();
        rideout1.setRideoutTitle("Tour 1");
        rideout1.setMaxRiders(3);
        rideout1.setRideLeader("Sumithra");
        rideout1.setStartDate("11/11/2020");
        rideout1.setRideoutStatus("PUBLISHED");

        rideout2.setRideoutTitle("Tour 2");
        rideout2.setMaxRiders(10);
        rideout2.setRideLeader("Dilshan");
        rideout2.setStartDate("12/12/2020");
        rideout2.setRideoutStatus("PUBLISHED");

        rideoutItem1.setCart(cart);
        rideoutItem1.setProduct(rideout1);
        rideoutItems.add(rideoutItem1);

        rideoutItem2.setCart(cart);
        rideoutItem2.setProduct(rideout2);
        rideoutItems.add(rideoutItem2);


        Assert.assertEquals(cart.getCustomer(), customer);
        Assert.assertEquals(cart.getCartItems(),rideoutItems);


    }
}
