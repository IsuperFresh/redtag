public with sharing class LeadController {
    @AuraEnabled
    public static List <Lead> getToLeads(){
        return [
            SELECT Id,Name FROM Lead LIMIT 10
        ];
    }
   

}