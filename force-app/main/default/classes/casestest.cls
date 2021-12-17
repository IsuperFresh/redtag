public with sharing class casestest {
  @AuraEnabled
  public static List <Case> getToCases(id accountId){
      return [
          Select id,CaseNumber,Subject,	ContactId,CreatedDate FROM Case WHERE AccountId=:accountId
      ];

    
  }
}