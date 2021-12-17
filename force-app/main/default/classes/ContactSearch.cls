public with sharing class ContactSearch {
    public static List<Contact> searchForContacts(String lastName,String mailingPostalCode ){
    List<Contact> contactlist =[SELECT Id, Name  FROM Contact WHERE LastName=:lastName and MailingPostalCode=:mailingPostalCode];
return contactlist;    
}
}