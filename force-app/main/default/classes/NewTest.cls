public with sharing class NewTest {
    public NewTest() {

    }
    @AuraEnabled (cacheable=true)
    public static List <Account> getAccounts(){
        return [
            SELECT Id,Name,Type,Phone,Industry FROM Account LIMIT 10
        ];
    }
   
}