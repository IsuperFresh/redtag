public with sharing class DeleteLeadsController {
   
    @AuraEnabled
    public static void runBatch(){
        Database.executeBatch(new deleteColdLeads(), 10000);
    }
}