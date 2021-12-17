public with sharing class ContactAndLeadSearch {
    public static List<List< SObject>>searchContactsAndLeads(String lastname){
    List<List< SObject>> contactLeadList = [FIND: lastName IN ALL FIELDS RETURNING Contact(Name),Lead(Name)];
    return contactLeadList;

    }
}