@isTest
private class LeadProcessorTest {
    @testSetup
    static void setup() {
        List<Lead> leads = new List<Lead>();
            for (Integer i=0;i<200;i++) {
            leads.add(new Lead(Lead_Name__c = 'test',Company = 'DreamHack', LastName = 'LeadTestName'));
        }
        insert leads;
   
    }
    @isTest static void test() {
        Test.startTest();
       LeadProcessor myLeads = new LeadProcessor();
        Id batchId = Database.executeBatch(myLeads);
       
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from Lead where LeadSource = 'DreamForce']);
    }
}