package test;

import com.tourApp.model.Rideout;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class RideoutTest extends tourAppTests{

        Rideout rideout = new Rideout();
        @Before
        public void setupRideout()
        {
                rideout.setRideoutTitle("Tour 1");
                rideout.setMaxRiders(3);
                rideout.setRideLeader("Sumithra");
                rideout.setStartDate("11/11/2020");
                rideout.setRideoutStatus("PLANNING");
                rideout.setRideoutDescription("Traveling descrption not available");
                rideout.setRideoutItineary("Simple Test Itinery items");
        }
        @Test
        public void print()
        {
                Assert.assertEquals(rideout.getRideoutTitle(),"Tour 1");
                Assert.assertEquals(rideout.getRideLeader(),"Sumithra");
                Assert.assertEquals(rideout.getStartDate(),"11/11/2020");
                Assert.assertEquals(rideout.getRideoutStatus(),"PLANNING");
                Assert.assertEquals(rideout.getRideoutDescription(),"Traveling descrption not available");
                Assert.assertEquals(rideout.getRideoutItineary(),"Simple Test Itinery items");

        }


}
