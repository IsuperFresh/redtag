@IsTest
private class AccountProcessorTest{
    @IsTest
    private static void  testCountContacts(){
        Account newAccount = new Account(Name =  'Testaccount');
        insert newAccount;
        Contact newContact1 = new Contact (FirstName = 'Roman', LastName = 'Dzhus',AccountId = newAccount.Id);
        insert newContact1;
        Contact newContact2 = new Contact (FirstName = 'Yulia', LastName = 'Dzhus',AccountId = newAccount.Id);
        insert newContact2;
        List <Id> AccountIds = new List <Id>();
        accountIds.add(newAccount.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(accountIds);
        Test.stopTest();
    }
    
}