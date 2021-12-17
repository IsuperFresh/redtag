public class AccountProcessor {
@future
  public static void countContacts (List<Id> AccountIds) {
      List<Account> accountsToUpdate = new List<Account>();
    List<Account> accounts = [Select Id, Name, (Select Id from Contacts) from Account Where Id IN :AccountIds];
      for (Account acc: accounts){
          List <Contact> contactList =  acc.Contacts;
          acc.Number_Of_Contacts__c = contactList.size();
          accountsToUpdate.add(acc); 
      }
      update accountsToUpdate ;
}
}