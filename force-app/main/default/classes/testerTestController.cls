public with sharing class testerTestController {
    @AuraEnabled
    public static void runBatch(){
     
        testerTest myTest = new  testerTest();
        Id batchId = Database.executeBatch(myTest);
    }
}