public with sharing class TopOpportunityController {
    
    @AuraEnabled
    public static List<Opportunity> getTopOpps(Id accountId){
        return [
            SELECT Id, Name,StageName, Amount, CloseDate FROM Opportunity WHERE AccountId =: accountId ORDER BY Amount DESC NULLS LAST LIMIT 5
        ];
    }
}