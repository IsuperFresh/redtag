public class RandomContactFactory {
    public static List <Contact> generateRandomContacts(Integer num,  String lastName){
   List<Contact> contactList = new List<Contact>();
   for (Integer i=0; i<=num; i++){
       Contact ct = new Contact (FirstName = 'Test'+i, LastName = lastName);
       contactList.add(ct);
   }
        system.debug(contactlist);
        return contactList;
    }
         
     
   }