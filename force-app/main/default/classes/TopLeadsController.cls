public with sharing class TopLeadsController {

   @AuraEnabled
   public static List<Lead> getToLead(){
return [
    SELECT Id,Lead_Name__c,Company,Name  FROM Lead  LIMIT 5];
   }
}