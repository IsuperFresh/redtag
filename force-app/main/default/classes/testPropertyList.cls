public class testPropertyList {
  @AuraEnabled(cacheable=true)
    public static List<Property__c> getProperty() {
        return [SELECT Id, Name,City__c,Beds__c,Price__c FROM Property__c  ORDER BY Price__c DESC NULLS LAST LIMIT 10];
    }
}