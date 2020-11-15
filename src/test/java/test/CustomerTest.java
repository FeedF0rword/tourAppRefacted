package test;

import com.tourApp.model.*;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class CustomerTest extends tourAppTests{
    Customer customer = new Customer();
    Address address = new Address();
    @Before
    public void setupCustomer()
    {
        InsuranceInformation insuranceInformation = new InsuranceInformation();
        UserInformation userInformation = new UserInformation();
        RideoutCart cart = new RideoutCart();


        customer.setUsername("test1");
        customer.setPassword("test");
        customer.setEnabled(true);
        customer.setRole("ROLE_LEADER");
        customer.setCart(cart);

        insuranceInformation.setInsuranceVerified(false);
        insuranceInformation.setExpiry_date("12-12-2020");
        insuranceInformation.setInsuranceNo("1343535");

        userInformation.setFirstname("John");
        userInformation.setSurname("Doe");
        userInformation.setMedicalMd("Lorem ipsem");
        userInformation.setEmergencyContactFirstName("Jane");
        userInformation.setEmergencyContactSurname("Doe");
        userInformation.setEmergencyContactRelationship("Lorem");
        userInformation.setEmergencyContactAddress("lorem ipsem stuff stuff");

        address.setNumber("23");
        address.setAddressLine1("Roter Road");
        address.setAddressLine2("Kelaniya");
        address.setCity("Kiribathgoda");
        address.setCountry("SriLanka");
        address.setTelephone("0760000000");
        address.setMobile("0760000000");
        address.setPostcode("23650");


        userInformation.setAddress(address);
        customer.setInsuranceInformation(insuranceInformation);
        customer.setUserInformation(userInformation);

    }

    @Test
    public void print()
    {
        address.setNumber("23");
        address.setAddressLine1("Roter Road");
        address.setAddressLine2("Kelaniya");
        address.setCity("Kiribathgoda");
        address.setCountry("SriLanka");
        address.setTelephone("0760000000");
        address.setMobile("0760000000");
        address.setPostcode("23650");


        Assert.assertEquals(customer.getUsername(), "test1");
        Assert.assertEquals(customer.getPassword(), "test");
        Assert.assertEquals(customer.getRole(), "ROLE_LEADER");

        Assert.assertEquals(customer.getUserInformation().getFirstname(),"John");
        Assert.assertEquals(customer.getUserInformation().getSurname(),"Doe");
        Assert.assertEquals(customer.getUserInformation().getMedicalMd(),"Lorem ipsem");
        Assert.assertEquals(customer.getUserInformation().getEmergencyContactFirstName(),"Jane");
        Assert.assertEquals(customer.getUserInformation().getEmergencyContactSurname(),"Doe");
        Assert.assertEquals(customer.getUserInformation().getEmergencyContactRelationship(),"Lorem");
        Assert.assertEquals(customer.getUserInformation().getEmergencyContactAddress(),"lorem ipsem stuff stuff");
        Assert.assertEquals(customer.getUserInformation().getAddress(),address);

        Assert.assertEquals(customer.getInsuranceInformation().getInsuranceVerified(),false);
        Assert.assertEquals(customer.getInsuranceInformation().getInsuranceNo(),"1343535");
        Assert.assertEquals(customer.getInsuranceInformation().getExpiry_date(),"12-12-2020");

    }
}
