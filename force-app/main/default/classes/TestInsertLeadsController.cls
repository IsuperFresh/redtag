public with sharing class TestInsertLeadsController {
    @AuraEnabled
    public static void runBatch(){
     
        Database.executeBatch(new TestInsertLeads());
    }
}