public with sharing class DeleteNewTask {
    @future
    public static void processRecords(List<ID> recordIds)
    {   
         // Get those records based on the IDs
         List<Account> accts = [SELECT Name FROM Account WHERE Name = 'Roman'];
         delete  accts;
}
}