@isTest
private class ParkLocatorTest {
    @isTest static void testCallout() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        String country  = 'United  States';
        List<string> result = ParkLocator.country(country);
        List<string> parks = new List<string>();
        parks.add('Yosemite');
        parks.add('Yellowsnone');
        parks.add('Another Park');
        System.assertEquals(parks,result);
    }
}